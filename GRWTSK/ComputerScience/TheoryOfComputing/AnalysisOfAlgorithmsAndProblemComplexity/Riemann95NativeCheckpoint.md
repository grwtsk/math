# Native HS-95 checkpoint provenance

Local attribution: grwtsk contributors.

The local [adapter](Riemann95NativeCheckpoint.lean) and [wire codec](Riemann95NativeCheckpointWire.lean)
operate on the prime-addressed representation in `Riemann95PrimeMachine.lean`.
Their source baseline is grwtsk/math
`3a6328012f2c07926135ec3ae82c93bd23302803`, with simulation blob
`14e0092dcb1b14108c03a0df7f150acdda38ea6c` and tape-normalization blob
`7275dd4ceb6122c8076720f978f502a21384e96d`.

The original machine is the 95-state, two-symbol Riemann machine in the
Google DeepMind Cryptids repository, revision
`3647718b5df22e1a61462dec0376bd204526285a`. Its transition table is
`artifacts/riemann_95/machine.txt`, blob `d6f841a883bcf826d1fbdbd1c66497e072231c55`.
The original `Cfg`, pointed tape and blank-extension quotient come from
`Cryptids/Machines.lean`, blob `345a59a2133776d937507536b4a07667c11e299b`.
The checkpoint format and its theorems are local consequences of these
source interfaces. [Machine table](https://github.com/google-deepmind/cryptids/blob/3647718b5df22e1a61462dec0376bd204526285a/artifacts/riemann_95/machine.txt) · [Machine semantics](https://github.com/google-deepmind/cryptids/blob/3647718b5df22e1a61462dec0376bd204526285a/Cryptids/Machines.lean)

The integer fields use Peter Elias's compound representation γ′ of the
positive integer `n + 1`, in *Universal Codeword Sets and Representations
of the Integers*, IEEE Transactions on Information Theory 21(2), p. 199,
March 1975. The local representation adds an explicit sign for the
coordinate and exact-length payloads for the left and right half-tapes.
[Elias, 1975](https://doi.org/10.1109/TIT.1975.1055349)

All declarations below have prefix
`GRWTSK.ComputerScience.Riemann95PrimeMachine.NativeCheckpoint`.

- `readRecord_writeRecord` and `writeRecord_of_readRecord_eq_some`.
  A positive gamma word has one zero per payload bit before the leading
  one. The inverse follows by induction on that zero count: division by
  two removes the low bit, and the inverse step restores it by doubling
  and adding the bit. Conversely, each successful recursive read
  reconstructs precisely the consumed word. The two integer constructors
  distinguish zero from negative one. A successful tape read consumes
  exactly its declared length, and a complete read requires an empty
  remainder. These are wire theorems for every raw record. In particular,
  a raw record can carry an invalid prime address.
- `handoffView_decodeCheckpoint_encodeCheckpoint` and
  `encodeCheckpoint_of_decodeCheckpoint_eq_some`. A native decoder verifies
  the expected window, the in-window prime address and the normal form of
  both tape lists. Erasing far-end blank padding preserves each source
  `ListBlank` quotient, and the address, scanned bit and signed coordinate
  are preserved. Conversely, each successful decode already has those
  normal forms, so re-encoding recovers the original bits.
- `encodeCheckpoint_eq_iff`. At a fixed window, equal encoded bits recover
  equal handoff views. In the reverse direction the native control uniquely
  determines the prime at that window, and equal blank-extension quotients
  have equal normal forms. Together with the scanned bit and coordinate
  these determine the raw frame.
- `runOn_decodeCheckpoint_encodeCheckpoint` and `runOn_append_with_checkpoint`.
  These apply the existing native handoff theorems to the proved equality
  of views. The compared continuations have equal schedule lengths.
  The chunked theorem also requires a successful execution of the first
  chunk. The outer option records frame decoding and the inner option
  records native success or halt under the specified instruction budget.

The source tape comparison can also be made cell by cell. Trimming only
far-end zeroes changes neither side's blank-padded value at any index.
The full equality still needs the integer head coordinate. The pinned
`absolute_position_handoff_control` shows that the pointed tape alone
cannot determine that coordinate, even for a zero-step continuation.
A valid canonical encoding carries no proof that its state is reachable
from the blank machine. All-stage safety and the return to the original
arithmetic targets remain separate premises.

The native dependency environment uses Lean `v4.35.0-rc4`, Mathlib
`1f414401f69059aa7eead47b53ee40bd38455eeb` and the Cryptids source above.
Verification scope and exact published identities are recorded with
[the native simulation issue](https://github.com/grwtsk/math/issues/1821).
