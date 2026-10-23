# ICARM 4239, explicit 2-descent, and Weil signed-form comparison: source interfaces

## Version-pinned external sources

* Elkies–Klagsbrun–Li, ICARM record #4239 (15 October 2026): https://elliptic-rank.icarm.cloud/curve/4239
* Stoll, `MichaelStollBayreuth/EllipticCurves` pinned commit `bad38e242a187dea006fc302a0ef0fd53eedd4ba`:
  * `EllipticCurves/WeakMordellWeil.lean`: `WeierstrassCurve.Affine.μ : Multiplicative W.Point →* W.M`; `ker_μ_eq` (line 762): the kernel is the doubled point subgroup.
  * `EllipticCurves/VariableChange.lean`: true group equivalence across a valid Weierstrass variable change.
  * `EllipticCurves/InfiniteOrder.lean`: `isAddTorsionFree_of_coprime_natCard_red` at line 93; requires actual good-reduction maps, prime ideals, and ramification conditions.
  * `EllipticCurves/MordellWeil.lean`: `fg_point_of_numberField`.
  * Stoll is pinned to Lean `v4.35.0`, whereas `grwtsk/math` uses Lean `v4.33.0`, Mathlib `db584cd6d46c92f209a44c0f1c829460d327499d`. This commit imports NONE of Stoll's declarations.
* Mathlib pinned upstream proofs used by the generic adapters: `Matrix.mul_eq_one_comm`, `Matrix.transpose_mul`, `LinearIndependent.fintype_card_le_finrank`, `MonoidHom.map_mul`, and `ZMod.intCast_zmod_eq_zero_iff_dvd`.

## Proven and unproven logical interfaces

1. Finite source input (merged PR #1050): `characterMatrix : Matrix (Fin 32) (Fin 32) (ZMod 2)` with `characterMatrix pointIndex characterIndex`, plus a source-only explicit matrix inverse. Python exact replay verifies the arithmetic, but the Lean module's `decide` proofs have **not been kernel-audited**.
2. This new module `Record4239SquareClassBridge.lean` corrects the index orientation by using `characterMatrix.transpose.mulVec` on coefficient vectors. It consumes an **actual** homomorphism `mu : Multiplicative G →* C` and 32 **actual** `epsilon_j : C →* Multiplicative (ZMod 2)`. Its finite linear-algebra, integer descent, and rank-inequality implications are theorem candidates (not build receipts).
3. To instantiate #4239, prove a true Weierstrass group equivalence for `(x,y) ↦ (36x+3,108(2y+x))`, including the point at infinity and nonsingularity. The coordinate identity in merged PR #1051 is only an affine equation, not a group equivalence. Import/adapt Stoll's `μ` (or prove a replacement), and construct local factor maps that correctly handle rational denominators, bad primes, the `f(θ)=0` branch, point infinity, and square-class equivalence. Match all 1024 evaluations in POINT-FIRST order. Without these premises, **no unconditional rank >=32 theorem** follows.
4. A suitable native-group no-two-torsion lemma may use #1051's negation obstruction with native group negation; alternatively the `#E(F_7)=13`, `#E(F_19)=27` and Stoll's coprime point-count theorem can give full torsion-freeness after all reduction hypotheses are proved. Point counts alone are not a proof of the transport.
5. Finite signed-form connection (new `SignedWeilComparisonGate.lean`): a negative signed source witness `q(x) ≤ -μ` forces comparison error `ε(x) ≥ μ` against every nonnegative Gram approximation. A strict negative signed-sector fixture prevents replacing the signed Weil consumer by the positive Hodge metric. This is a generic finite form result; no Weil explicit-formula source identity, zero-sum convergence, percentage of simple critical zeros, or RH statement is imported.

## Other recently resolved/open comparisons

The M23 inverse-Galois construction and FLT formalization illustrate exact object identity; PFR illustrates finite-to-uniform quantification; the Jacobian conjecture counterexample illustrates local-to-global failure. These are **methodological analogies**, not dependencies of #1049. The Riemann-zeta signed-form/zero-density literature likewise does not currently supply the missing #207 arithmetic-to-elliptic comparison. A separate theorem with exact source normalization would be needed.

## Audit and acceptance

**SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED**. Do not add the new modules to `GRWTSK.lean`, infer that the GitHub PR/merge is kernel certification, or assume the pinned Stoll 4.35 development is usable unchanged on 4.33. Run `lake env lean` with the repository's locked toolchain, `lake build --wfail`, and trust/axiom audits against exact head before a module is admitted. Perform arithmetic negative controls: transpose direction, permuted point row, duplicated character column, missing good-prime hypothesis, and signed negative-sector witness.

Tracking: #1049 (rank-32 character port), #207/#215/#219 (source-faithful RH/Weil comparison).
