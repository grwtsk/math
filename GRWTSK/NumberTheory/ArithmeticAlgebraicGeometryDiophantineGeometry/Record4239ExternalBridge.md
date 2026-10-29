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

## 2026-10-23 direct-main source integration: integer-order reduction and native rank consumer

The following **new Lean source files are on the actual `main` branch**,
not merely in draft PRs. They remain `SOURCE_ONLY / NOT_RUN /
NOT_KERNEL_AUDITED` and are intentionally not imported into
`GRWTSK.lean` until independent replay.

1. `Record4239IntegralOrderReduction.lean` constructs the real
   `RecordIntegralOrder := AdjoinRoot shortCubic`, where the polynomial
   is precisely `T³+shortA*T+shortB` over `ℤ`. For each of the
   thirty-two source labels `(primeLabel j,rootLabel j)`, the existing
   theorem `rootLabels_valid` certifies `f(rootLabel j)=0 mod primeLabel j`.
   Via `AdjoinRoot.lift` it produces a **genuine unital ring homomorphism**
   `recordOrderReduction j : RecordIntegralOrder →+* ZMod (primeLabel j)`
   and representative equations on the distinguished root and every
   integer. The source order elements `shortXInt i - T` and
   `f'(T)=3*T²+shortA` have explicitly related reductions; the
   exceptional branch is used exactly when the ordinary reduction
   vanishes. The resulting 1,024 reductions are nonzero. This proves
   neither that these elements are *global units* nor that arbitrary
   rational x−T classes can be reduced modulo p.
2. `Record4239NativeConditionalRank.lean` fixes the **actual native**
   `nativeCurve.toAffine.Point` and the actual 32 `nativePoint i`
   witnesses. It applies the existing native no-two-torsion theorem
   and the **point-first / character-second** binary inverse,
   i.e. `characterMatrix.transpose.mulVec`. The theorem candidates
   `nativePoints_linearIndependent_of_descent` and
   `nativeCurve_finrank_ge_32_of_descent` have **explicit hypotheses**,
   packaged in a *not-known-inhabited* `NativeDescentEvidence C`:

   * a genuine global multiplicative descent homomorphism `mu`
     from the native elliptic point group to an identified squareclass
     codomain `C`;
   * 32 genuine homomorphisms `epsilon j : C →* Multiplicative (ZMod 2)`;
   * `specializes`: each of their 1,024 values on the 32 **native**
     points equals the branch-corrected `sourceQuadraticBit j i`;
   * `checkedFiniteBits : SourceBitsMatch`: the exact finite bits equal
     `characterMatrix i j`, a previously defined but still
     *kernel-unproved* finite comparison;
   * for the rank conclusion, a distinct **finite-generation
     hypothesis** `Module.Finite ℤ nativeCurve.toAffine.Point`
     (the Mordell–Weil theorem is not re-proved here).

The integer-order reduction is a constructive *local ring* supplier,
not a substitute for the valuation-normalized x−T squareclass
specialization. An element with nonzero reduction at one prime need
not be invertible in the global order. Stoll's cited 4.35 development
cannot silently be treated as a compiled 4.33 dependency. In particular,
the existence of `NativeDescentEvidence C` is **not a theorem**.

**Independent finite arithmetic replay** using exact Python
`fractions.Fraction` and modular arithmetic: all 32 source
`(p,theta)` satisfy the cubic equation and simple-root check; all
32 transformed rational points have integral short-model coordinates;
all 1,024 normal/exceptional reductions reproduce the source masks;
17 exceptional cases are correctly treated, and a zero-as-zero rule
would misclassify 12 bits. A deliberately invalid root
`theta=1 (mod 29)` is rejected. Other previously reported
mod-2 matrix and native model replays also passed. These are
**finite computations only**, not a Lean/Lake compilation, kernel
axiom closure, or a proof of the Mordell–Weil lower bound.

**Verification requirement:** run pinned Lean 4.33.0 with Mathlib
`db584cd6d46c92f209a44c0f1c829460d327499d`, elaborate the
complete dependency chain, run `--wfail` and independent
`--trust=0`/axiom-closure audit. No such checks have been performed
for these added Lean modules in the authoring environment. The
unconditional rank `E(ℚ) ≥ 32`, exact rank 32, BSD, GRH, RH, and
the Weil signed source bridge are **not claimed** as Lean theorems.
