# Executable retry search for native Riemann95 stage receipts

Local source attribution is grwtsk contributors. The maintained source is
[Riemann95StageRetrySearch.lean](Riemann95StageRetrySearch.lean) in the
namespace `GRWTSK.ComputerScience.Riemann95StageRetrySearch`.

The module uses Google DeepMind Cryptids at
`3647718b5df22e1a61462dec0376bd204526285a`, Google LLC, Apache-2.0,
on Lean 4.35.0-rc4 and Mathlib `1f414401f69059aa7eead47b53ee40bd38455eeb`.
Every trial runs the original finite instruction evaluator on the original
physical tape and checks the original Shunia test at argument `stage+2`.
[Native stage specification](https://github.com/google-deepmind/cryptids/blob/3647718b5df22e1a61462dec0376bd204526285a/Cryptids/ReductionSupport/Riemann95/Stage95.lean#L26-L34)

## Exact configuration comparison

`normalizeHalf` defines a computable key for the native quotient of
finite half-tapes by trailing blanks. The upstream `trimZeros` function
is unchanged by appending zeros. Reversing the leading-zero decomposition
shows that an input list is an extension of its trimmed representative.
`mk_normalizeHalf` states that quotienting this representative returns
the original half-tape. Applying it to both halves makes `key` injective
on full configurations, with the original control and scanned bit included.
This supplies a local decidable equality for the proposed and actual
destination tapes. Relevant Git blobs are `345a59a2133776d937507536b4a07667c11e299b`
for the tape and machine definitions, `0802b364dc5f0cb23d369776fdde01a96fee811a`
for the trimming definition, and `16d583f574881bcc560a4903e109da4fcd577a16`
for its trailing-zero theorem.
[Native half-tapes](https://github.com/google-deepmind/cryptids/blob/3647718b5df22e1a61462dec0376bd204526285a/Cryptids/Machines.lean#L87-L104) ·
[Trimming definition](https://github.com/google-deepmind/cryptids/blob/3647718b5df22e1a61462dec0376bd204526285a/Cryptids/Semantics/Riemann120/Backend.lean#L2050-L2055) ·
[Trimming invariance](https://github.com/google-deepmind/cryptids/blob/3647718b5df22e1a61462dec0376bd204526285a/Cryptids/Semantics/Riemann120/Program.lean#L447-L448)

## Finite trials and source preservation

A valid `Root` at stage `M` has padding at least `M+21`, extra
register data, its exact native configuration, and window and slot
`M / 95` and `M % 95`. A candidate stores a natural step count,
proposed next padding and finite list of extra registers. `verify`
checks these data and returns a typed `Receipt root` on success.

- A completed receipt stores arithmetic safety, positive step count,
  stage increment, padding increase and exact trace to the next root.
- A counterexample receipt stores the true original predicate and an
  exact trace to a configuration with no next native instruction.
- A trial with no verifying candidate returns retry. The root is fixed
  in the result type and `retry_bound` proves that only the search
  bound changes, from `bound` to `bound+1`.

`bootstrap_to_firstRoot` anchors the first root in the real blank-tape
run at step 3,634. For any other certified blank-start prefix,
`Receipt.from_blank` appends the actual trace using the native
`nSteps_composition`, preserving the exact successor or terminal
configuration. The direct dependencies have blobs
`3c6eae70196edf6d1beb66c06d7b481e2acdf387` for the bootstrap,
`11f5f2b5b3357a5239666de395ff41dfafafe1d6` for the physical root and
`7a88be04a79f45f2fec0b366652deeb7399f404c` for trace composition.
[Bootstrap](https://github.com/google-deepmind/cryptids/blob/3647718b5df22e1a61462dec0376bd204526285a/Cryptids/ReductionSupport/Riemann95/Bootstrap95.lean#L72-L77) ·
[Physical root](https://github.com/google-deepmind/cryptids/blob/3647718b5df22e1a61462dec0376bd204526285a/Cryptids/ReductionSupport/Riemann95/Physical95.lean#L22-L25) ·
[Composition](https://github.com/google-deepmind/cryptids/blob/3647718b5df22e1a61462dec0376bd204526285a/Cryptids/ReductionSupport/Riemann95/ArithmeticDispatch95.lean#L16-L23)

## Eventual resolution

`exists_successful_probe` holds for every valid root. In the safe
case the pinned `physical_stage_outcomes` gives finite step, padding
and extra-register data. Their natural-number encoding is accepted by
the checker. In the bad case the step count alone recovers the actual
terminal configuration. The stage theorem has blob
`096aeffc26350ca0fb65ac3683f7405b1ebcdfdb`.

`resolve` is executable and uses the least successful code, found by
decidable natural-number search. Its termination proof uses the native
one-stage theorem. `scan` retains success when its finite search bound
grows. `eventually_resolved` states that for every valid root and every
starting bound `B`, there exist a natural delay `d` and a receipt
returned by the attempt at `B+d`. Thus a scheduler that completes
successive bounded trials at a held root eventually has a valid
decision. A failed trial, including the empty bound, supplies no
arithmetic verdict. Termination is a mathematical property of the
search. The enumeration can be expensive, and its proof gives no
wall-clock bound. The HS heat and external certificate gate still need
a proof that they deliver the prescribed attempts or feed equivalent
native receipts to the handoff.
[Stage-outcome theorem](https://github.com/google-deepmind/cryptids/blob/3647718b5df22e1a61462dec0376bd204526285a/Cryptids/ReductionSupport/Riemann95/Stage95.lean#L26-L32) ·
[Original witness criterion](https://github.com/google-deepmind/cryptids/blob/3647718b5df22e1a61462dec0376bd204526285a/Cryptids/ReductionSupport/Riemann95/Witness95.lean#L73-L99)

## Executable stage runner

`run` starts at the certified blank bootstrap. A live state includes
the full root, count of original instructions, and exact reachability
proof from blank. A halted state contains the first encountered bad stage,
the reached configuration and its terminal instruction test. The runner
calls the total resolver at each live stage. It carries the physical
trace forward and retains a halted state on subsequent ticks.

`live_at_safe_prefix` proves that for every `N` with all original
stages below `N` safe, tick `N` is live at stage `N`. In a run with a
bad stage, decide the least one by natural-number search. Its strict
prefix is safe, so the next tick at that stage returns a witnessed stop.
`halts_iff_witness`, `halts_iff_native` and `halts_iff_not_RH`
identify existence of an executable stop with the original Shunia
witness, original blank-tape halting and the negation of RH, respectively.
The tick index here counts completed calls to the resolver. The finite
trial attempts in the previous section use search bounds within one call.
[Original blank-tape criterion](https://github.com/google-deepmind/cryptids/blob/3647718b5df22e1a61462dec0376bd204526285a/Cryptids/Riemann95.lean#L19-L23) ·
[Original RH equivalence](https://github.com/google-deepmind/cryptids/blob/3647718b5df22e1a61462dec0376bd204526285a/Cryptids/Semantics/Riemann95.lean#L11-L16)

```text
trim and quotient round trip → exact equality of native configurations
finite source trace + exact predicate → checked receipt
original stage outcomes → some finite candidate succeeds
success retained by larger bounds → eventual resolution with retry
native bootstrap + receipt trace → successor or halt on original blank run
safe-prefix induction + least bad stage → executable runner halting equivalence
HS runtime scheduling and heat integration → attempts or exact receipts [open]
```

## Verification

The isolated Lake target and targeted kernel replay passed against the
actual pinned Cryptids imports. The twelve audited definitions and
theorems depend only on subsets of `propext`, `Classical.choice` and
`Quot.sound`. The expected types for eventual resolution and the
runner's RH equivalence passed. The trailing-blank example and
zero-bound retry checked in the kernel.

The executable verifier accepted the proposed first-stage transition
of 10,715 instructions to stage 1, padding 23 and 29 zero extra
registers. It rejected the otherwise identical 10,714-instruction
proposal. These checks ran the finite verifier on supplied candidates.
Full fresh replay of the dependency closure, independent review,
HS runtime parity, and wall-clock performance are `NOT_RUN`.
[Coordination and exact evidence](https://github.com/grwtsk/math/issues/1823)
