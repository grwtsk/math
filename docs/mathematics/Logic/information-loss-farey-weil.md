# Observable-fiber information loss: exact Farey and Bombieri adapters

**Formalization state:** `SOURCE_INTEGRATED / NOT_LEAN_BUILT / NOT_FRESH_KERNEL_CHECKED / TRANSITIVE_AXIOMS_PENDING`. The declarations below are authored Lean proofs, not independently accepted kernel evidence. The current `GRWTSK.lean` root does not import these standalone modules.

## Logical supplier (no paper result imported)

Let `profile : X → Y` and `readout : X → Z`. Define `FactorsThrough profile readout` as the **actual existence of a decoder** `decode : Y → Z` with `readout = decode ∘ profile`. If `profile x = profile y` but `readout x ≠ readout y`, no such decoder exists. This is a **fiber-specific obstruction**, not a global theorem that a finite-dimensional observable is insufficient for every possible target.

The source also defines `augmentedProfile profile readout x = (profile x, readout x)`. A supplied target that differs on the selected pair separates that pair after augmentation. **No global injectivity, operator-norm control, effective reconstruction, or computational algorithm is established.**

**Main source snapshot:** [`a8c29a5f9a12252251098136bc3997cba0637e5a`](https://github.com/grwtsk/math/commit/a8c29a5f9a12252251098136bc3997cba0637e5a) (descendant of initial four-file integration `250ac4b463653268952ce1aa112885afd024e2f3`).

| Exact Lean module | Source blob | Exact declarations and scope |
| --- | --- | --- |
| `GRWTSK.Logic.InformationLoss.FactorizationFiber` | `3f58f67ffca2894a7350fecfd78a9fa65b9bc9fd` | `FactorsThrough`, `eq_of_factorsThrough`, `not_factorsThrough_of_collision`, `augmentedProfile`, `augmentedProfile_separates`; completely polymorphic source, profile and readout types |
| `GRWTSK.NumberTheory.Farey.EndpointInformationLoss` | `044a6f0b8a797a2927ad8766326d8e5342017fb9` | `endpointSignProfile`, `rationalRootAt`, `exists_endpointSignProfile_collision`, `exists_root_query_not_factorsThrough_endpointSignProfile`, `exists_augmented_endpointProfile_separates` |
| `GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentInformationLossBridge` | `6872d5305e9ce50387434fde6a92784866896783` | `bombieriFactorsThrough_iff_generic`, `bombieri_corrected_zero_same_profile`, `bombieri_not_factorsThrough_generic`, `bombieri_augmented_profile_separates` |
| `GRWTSK.NumberTheory.Farey.InvariantProjectorInformationLoss` | `172a34e476149f3bdb0ec8abc7492d7be4ab9a80` | `native_projector_erases_all_or_retains_all`, `no_native_projector_with_partial_information` |

### Farey endpoint signs do not determine rational-root membership

**Exact source object:** a genuine `GRWTSK.NumberTheory.Farey.Cell` with determinant-one endpoints. The observed data are the *ordered pair of propositions* `(p.eval I.left ≤ 0, 0 ≤ p.eval I.right)`; the separate target is the proposition `p.eval x = 0` at one fixed rational `x`.

The source imports `GRWTSK.NumberTheory.Farey.ResolvableQuinticEndpointControls` (blob `28d8456db1dc7c6243b51275b8216e3f1ff89c71`) whose specific witness takes `I=[0/1,1/1]`, `q(X)=X²-X+3/16`, `c(X)=X-1/2`, and `x=1/4`. Both `q(0)` and `q(1)` equal `3/16>0`, giving equivalent endpoint sign predicates for `q*c` and `c`, while `(q*c)(1/4)=0` and `c(1/4)=-1/4 ≠ 0`. The Lean adapter converts the two endpoint sign equivalences to equality of the **entire ordered propositional profile** using `propext`. It then consumes the generic factorization obstruction. This is a more precise claim than mere equality of their Boolean sign-certificate truth values.

**Sharp boundary:** The actual Record4239 envelope uses `X²+1>0` for **every** rational `X`. It therefore retains the separate, stronger root-set equivalence theorem. Endpoint data never establish general rational-root existence or completeness.

### Two Bombieri moments do not determine an independently separating target

**Exact source:** `CanonicalSquareTentBombieriMomentInformationLoss` (blob `9a2435d9c74b89ce1434c45bade1aa9beaa6cead`) constructs the ordered *ordinary and multiplicative* moment profile on the actual three-coefficient stage-2/3/4 tent space. The existing `correctedCoordinates` has both moments zero while remaining nonzero. The new adapter identifies the old `FactorsThroughBombieriMoments` definition with the generic `FactorsThrough` using an explicit definitional equivalence, and supplies the exact collision theorem.

For any supplied `readout : Combination 2 → α`, **if** `readout correctedCoordinates ≠ readout 0`, it cannot factor through those two actual moments. An extra readout distinguishes the **specific pair** after augmentation, but no result proves a positive classical Weil diagonal, existence of the classical source transport, or RH. The separating-readout hypothesis is **not discharged** by the algebraic collision.

### Actual third arithmetic coordinate separates the zero-moment witness

The conditional `readout correctedCoordinates ≠ readout 0` premise **is discharged for a specific repository arithmetic readout**, but **not** for the classical Weil diagonal. The [integrated source module](https://github.com/grwtsk/math/blob/93468e369390b8ec75e7fd6a031ada2ae92223b0/GRWTSK/NumberTheory/Zeta/Riemann/CanonicalSquareTentThirdCoordinateInformationLoss.lean) `GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentThirdCoordinateInformationLoss` (main source commit `93468e369390b8ec75e7fd6a031ada2ae92223b0`, blob `1ff8c00eac7c167abc4c5456924312bf6f95bf74`) imports `CanonicalSquareTentInformationLossBridge` (blob `6872d5305e9ce50387434fde6a92784866896783`) and uses `CanonicalSquareTentThreeTentMomentCorrection.cofactorTwo_ne_zero` (source blob `644be0606ac195f35c8409f8877a707edb2aa457`).

The exact readout is `thirdCoordinateReadout (u : Combination 2) : ℂ := u (2 : Fin 3)`, the **stage-four coefficient** of the actual stage-2/3/4 normalized square-tent combination. The source declarations `thirdCoordinateReadout_corrected`, `thirdCoordinateReadout_zero`, and `thirdCoordinateReadout_separates` identify the corrected readout with `cofactorTwo ≠ 0` and the zero-vector readout with `0`. Thus `thirdCoordinateReadout_not_factorsThrough` consumes the existing two-moment collision and proves source-level nonfactorization; `thirdCoordinateReadout_augmented_separates` shows that adding this coordinate distinguishes the **particular corrected vector** from zero.

These declarations provide a concrete `ℂ`-valued, linear-on-coefficient-space information supplier, **not a third classical Bombieri moment**, **not** a classical Guinand–Weil Hermitian diagonal, **not** a globally injective three-measurement map, and **not** a test-space completion or RH theorem. Their authorship is repository-original: the background paper contributes only the exact two moment constraints documented in the [Bombieri source provenance](../../reference/literature/reading-background/paper-formalization-provenance-rh.md). There is no new paper theorem imported.

**Actual verification:** `SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED`. The commit and blob fix what should be replayed; they are not a Lean proof receipt. Full `lake build --wfail`, direct elaboration, fresh kernel checking, `#print axioms` and transitive unsafe/generated declaration audits are pending in [#1099](https://github.com/grwtsk/math/issues/1099), with prior supplier obligations unchanged.

### Three arithmetic measurements recover the entire three-tent source space

The earlier source-only statement showed merely that `thirdCoordinateReadout` distinguishes the corrected zero-moment vector from zero. The [exact kernel-line supplier](https://github.com/grwtsk/math/blob/cd4f6d91aca5be0c95baa55be1149b6b7014bb58/GRWTSK/NumberTheory/Zeta/Riemann/CanonicalSquareTentThreeTentMomentKernelLine.lean) (`coefficient_line_of_two_moments`, source blob `2b9d613a7cef0428754fdceab226907407ad5467`) is stronger: every three-tent coefficient vector with both actual moments zero is a scalar multiple of the concrete cofactor vector. Because the third cofactor `cofactorTwo` is nonzero, **two vectors with equal moment pairs and equal third coefficients are equal**.

The new Lean source candidates `CanonicalSquareTentThirdCoordinateInformationLoss.augmentedThreeMomentProfile_injective` and `any_source_readout_factorsThrough_augmentedThreeMoments` consume the existing exact kernel-line result plus the generic image/inhabited-source factorization theorem. On the **three-dimensional complex coefficient space** `Combination 2`, the map

```
u ↦ (bombieriMomentProfile u, u (2 : Fin 3))
```

is injective, and every readout of those three coordinates factors set-theoretically through the three measurements. The proof uses subtraction, the original two-moment kernel theorem and `cofactorTwo_ne_zero`. The decoder is classical and no explicit analytic inverse, operator norm, positivity, measure-theoretic regularity or computational bound is asserted.

**Scope:** This is source-coordinate reconstruction, not global injectivity on Bombieri's full test class, not an identity between the third coefficient and the classical Guinand–Weil Hermitian form, and not RH. It supersedes only the earlier limitation that this *particular augmented three-coordinate map* was not yet proved injective. The unverified root, other Farey and spectral comparisons, and unresolved analytic hypotheses remain open.

**Status:** The source is integrated as `SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED`; actual Lean compilation, fresh kernel checking and complete transitive axiom/unsafe audit are pending at the immutable integration SHA. The paper-to-Lean ideas ledger retains Bombieri's title, source and exact two-moment hypotheses, without falsely attributing this extra arithmetic theorem to the paper.

### Native Farey group-channel obstruction

**Exact source:** `GRWTSK.NumberTheory.Farey.GroupSpectralChannel` (blob `fc42376a6c12f7729076564cfd223bf8d1b2b75b`) states that a complex `2×2` matrix projector `P`, if idempotent and commuting with **both** native Farey shear matrices, equals zero or identity. The new adapter transports this to the pointwise readout on `Fin 2 → ℂ`: either every vector is sent to zero or every vector is unchanged. A simultaneous nonzero retained signal and nontrivially changed signal is impossible.

**Scope:** this is a native two-dimensional, joint-generator, invariant-idempotent statement. It does not exclude projectors for just one generator, enlarged representations, a return map, non-equivariant observables, a spiral limit, a zeta-zero model, or a global spectral decomposition.

## Exact completeness criterion for observable fibers (source-only increment)

The repository's generic obstruction is now paired with an exact **converse on the attained observable range**. The source-only module `GRWTSK.Logic.InformationLoss.FactorizationFiberCompleteness` imports the original `FactorizationFiber` (blob `3f58f67ffca2894a7350fecfd78a9fa65b9bc9fd`) and introduces:

- `factorsThrough_iff_fiberConstant_of_surjective`: for any types `X,Y,Z` and actual surjection `profile : X → Y`, the existence of a decoder `decode : Y → Z` is **equivalent** to the readout being constant on all profile fibers. The constructive-looking proof uses a classically chosen preimage, so this is **not** an effective algorithm, continuous inverse or norm bound.
- `observedProfile`, `observedProfile_surjective`, and `observedProfile_eq_iff`: the subtype `Set.range profile` has precisely the original fibers but no unattained output values.
- `factorsThrough_observedProfile_iff`: for **arbitrary** `profile`, fiber constancy is necessary and sufficient for factorization through the *range-restricted* profile. There is no ambient surjectivity hypothesis or hidden nonemptiness assumption.
- `readout_factorsThrough_augmentedProfile`: the supplied readout factors by projection through `(profile,readout)`. This proves neither global injectivity nor that the extra readout exists in a targeted arithmetic/analytic model.
- `empty_source_fiber_constant_without_total_decoder`: a hostile type-level example using `Empty → Unit` and `Empty → Empty` shows why fiber constancy alone cannot guarantee a total decoder on an arbitrary original codomain.

**Exact mathematical distinction:** the original Farey collision and canonical two-moment collision remain genuine **necessary-condition obstructions**. The converse does not discharge the separating classical Weil observable, construct a nontrivial native Farey spectral channel, or prove PFR, Kakeya, Sarnak, Siegel-zero, elliptic rank or RH conclusions. Restricting the codomain to the image is a logically sufficient reconstruction **interface**; it is not an analytic comparison theorem.

**Verification status:** `SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED`. The new statements are authored Lean proofs, not checked Lean kernel output. The new standalone module must be compiled independently, its import closure and all transitive axioms audited (including `Classical.choice` and any actual additional axioms), then accepted at an immutable exact main SHA before root promotion. The mathematical content is repository-original; **no new paper theorem is imported**.

### Total ambient-codomain reconstruction: the exact extra hypothesis

The original image-restriction theorem avoids an empty readout target at unattained observable values. An additional source-only supplier in `GRWTSK.Logic.InformationLoss.FactorizationFiberCompleteness` makes the precise ambient boundary explicit:

- `factorsThrough_iff_fiberConstant_of_inhabited_target`: for `[Nonempty Z]`, **without** assuming `profile : X → Y` is surjective, `FactorsThrough profile readout` is equivalent to constancy of `readout` on profile fibers. For each actually attained `y : Y`, the decoder chooses a preimage; for unattained `y` it returns the default element supplied by `[Nonempty Z]`. Classical choice appears explicitly; no computability, continuity, boundedness or measurable selection is inferred.
- `factorsThrough_iff_fiberConstant_of_nonempty_source`: a `[Nonempty X]` source and the given `readout : X → Z` automatically provide a `Nonempty Z` witness. The same equivalence then holds on the full observable codomain.

These sufficiency results **do not weaken** the existing hostile `X=Empty, Y=Unit, Z=Empty` counterexample; it fails both additional nonemptiness hypotheses. They do not construct a separating Weil readout for the Bombieri moment collision, restore rational roots from Farey endpoints, or realize nontrivial native Farey spectral channels.

**Verification boundary:** source-only addendum; independently run pinned Lean 4.33.0/Mathlib `db584cd6d46c92f209a44c0f1c829460d327499d` compilation, fresh kernel checking, `#print axioms` (including `Classical.choice`) and transitive unsafe/declaration audits. Integration is not kernel acceptance.

## Literature comparisons, not theorem imports

These are **ANALOGY_ONLY** unless a future theorem explicitly constructs and verifies an adapter of the relevant types with the paper's exact hypotheses.

| Source / bibliographic identity | External theorem and hypotheses | What is not supplied by the local Lean declarations |
| --- | --- | --- |
| W. T. Gowers, Ben Green, Freddie Manners, Terence Tao, *On a conjecture of Marton*, **2025**, [DOI 10.4007/annals.2025.201.2.5](https://doi.org/10.4007/annals.2025.201.2.5) | Polynomial Freiman–Ruzsa in **characteristic 2**, using an additive small-doubling / approximate-homomorphism structure and **polynomial quantitative bounds** | No additive-combinatorial covering, small-doubling hypothesis, polynomial bound, or PFR theorem in this new adapter |
| Hong Wang and Joshua Zahl, *Volume estimates for unions of convex sets, and the Kakeya set conjecture in three dimensions*, **2025**, [arXiv:2502.17655](https://arxiv.org/abs/2502.17655) | Control of unions of `δ`-tubes under explicit non-concentration conditions; implies full Hausdorff and Minkowski dimension **3** for Kakeya sets in `ℝ³` | No measurable tube model, covering/volume estimate, Kakeya dimension statement, or connection to Farey coefficients |
| OpenAI, *The Euclidean plane is not five-colorable*, **2026**, [paper-family Lean scope](https://github.com/openai/math/blob/main/lean/docs/158.md) | Unrestricted proper coloring of the full Euclidean unit-distance graph admits **no** five colors; a separate seven-color upper construction is also described | No reduction from Farey root profiles or Bombieri moments to arbitrary plane colorings; the formalization is external and not imported |
| OpenAI, *Uniform exclusion of Landau–Siegel zeros*, **2026**, [independent statement and two-kernel audit](https://jasonhickey.com/articles/2026_10_10_oai_siegel_audit/article.md) | For `q ≥ 3`, a **primitive real Dirichlet character** modulo `q`, and a **real zero** `0<β<1` of its associated Dirichlet L-function, an **absolute positive** lower bound on `(1−β) log q` | A modular Farey determinant or vanishing character at a nonunit residue does not construct L-function estimates, character primitivity, or the analytic zero-gap theorem |

These comparisons have stable externally checkable references, but **no corresponding main-commit Lean declarations for those external results are added in this work**. The new source declarations prove only the local conditional/fiber statements at their stated scope. The literature's publication or external Lean verification does not transfer to the project's pinned Lean 4.33.0/Mathlib baseline.

## Verification and next obligations

Pinned repository inputs: `leanprover/lean4:v4.33.0` and Mathlib `db584cd6d46c92f209a44c0f1c829460d327499d`. The four sources were committed through an ordinary non-force main update preserving the preexisting files.

**Actual status at authorship:** source/blob readback and Git ancestry only. No `lake build --wfail`, direct `lake env lean`, fresh Lean kernel replay, transitive `#print axioms` census, or generated/unsafe declaration audit result is available for these added files. `SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED` remains the accurate status. The logical `propext` dependency in Farey is explicitly expected; the audit must still report all actual axioms.

Acceptance requires separate pinned compilation of each standalone module with its transitive imports, warning-clean elaboration, fresh kernel checking, theorem-specific transitive axiom audit, exact source/tree/blob binding and all exit statuses. Then independently examine whether any stronger observable can satisfy the RH or global arithmetic comparison, rather than assigning it as a hypothesis-shaped certificate. No `GRWTSK.lean` root promotion occurs before successful evidence.
