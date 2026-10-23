# ICARM #4239 local residue square-class supplier

**Status: SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.**

The finite quadratic character used by the 32-point certificate has two
separable obligations:

1. **Finite-field mathematics, proposed Lean module:** `Record4239LocalSquareClass.lean`
   defines a genuine monoid homomorphism `(ZMod p)ˣ →* Multiplicative (ZMod 2)`
   by composing Mathlib's `quadraticChar` with sign parity. It proves a
   square-annihilation theorem and constructs a quotient-group homomorphism
   on `(ZMod p)ˣ / ((ZMod p)ˣ)^2`. It defines the 32x32 exceptional-branch
   residue inputs, and derives nonvanishing from the selected roots'
   independently represented simple-derivative checks.
2. **Actual elliptic arithmetic still open:** produce Stoll/Cremona–Brumer's
   native `μ : Multiplicative E(ℚ) →* C` for the true curve; establish an
   appropriate good-place **unramified square-class specialization** into
   these local residue-unit square classes. An arbitrary direct ring
   reduction of every global square class is generally NOT well-defined
   because of denominators and valuations. Prove that its actual values
   at all 32 source points are represented by the branch-corrected
   `sourceLocalUnit j i`.

The pure finite comparison `SourceBitsMatch` is currently a named **open
proposition**, not a proved theorem. An independent Python script,
`record4239_local_squareclass_replay.py` (conversation artifact, not a
canonical executable here), checked exactly: all 1024 masked bit values;
24 finite-field unit character tables exhaustively for multiplicativity
and square-annihilation; 17 exceptional root reductions; 12 wrong bits
under the hostile zero-as-zero policy. The Python result is not a Lean
kernel receipt.

**Mathlib source:** pinned `db584cd6d46c92f209a44c0f1c829460d327499d`,
`Mathlib.NumberTheory.LegendreSymbol.QuadraticChar.Basic`
(`quadraticChar_dichotomy`, multiplicativity),
`Mathlib.GroupTheory.QuotientGroup.Defs` (`QuotientGroup.lift`).
Repository toolchain is Lean 4.33.0; Stoll's project is at 4.35.0.

**Consumer:** issue #1049 (rank-32), conditional squared-class interface
draft PR #1068, native no-two-torsion draft PR #1071. No rank lower
bound is established by these finite-field statements alone. Do not
admit to `GRWTSK.lean` without replay, `--wfail`, `--trust=0`,
axiom-closure review and adverse fixtures.
