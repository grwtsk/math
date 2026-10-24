# MeromorphicOn.logDeriv_finprod_zpow_eventuallyEq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:feddfb46-d4e8-0658-e685-7557e822f7a2",
  "kind": "theorem",
  "lexical_name": "MeromorphicOn.logDeriv_finprod_zpow_eventuallyEq",
  "mathematical_admission": "NOT_CLAIMED",
  "metrics": [
    {
      "coverage": "No exact-source compiler-observed verification dependency graph supplied.",
      "id": "spectral_log_volume",
      "profile": "docs/reference/ranking-profile.json",
      "profile_id": "spectral-volume-radius3-v1",
      "profile_sha256": "f8800b2ae8ab1d08df856bc79abc53dbafa1cbd922963b7247e927bf0ed9afd6",
      "radius": 3,
      "reason": "verification_dependency_graph_unavailable",
      "status": "UNAVAILABLE",
      "value": null
    }
  ],
  "schema": "grwtsk.source-declaration-article/1",
  "slug": "meromorphicon-logderiv-finprod-zpow-eventuallyeq--b5f451da21b44f08fc7d85eb",
  "source": {
    "blob": "ca66deadc02ad53712ac0659fc4a88fec788a544",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 184,
    "line": 153,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/LogDeriv/Variant5ab0e9345c76a8160d4582341258f156a28501787a2f2adcb4ef7fbbe06f6ae0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b5f451da21b44f08fc7d85eb567faa69914d013f036fd43bc865fa0f33811899",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/LogDeriv/Variant5ab0e9345c76a8160d4582341258f156a28501787a2f2adcb4ef7fbbe06f6ae0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:feddfb46-d4e8-0658-e685-7557e822f7a2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 153–184.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem MeromorphicOn.logDeriv_finprod_zpow_eventuallyEq {ι : Type*} {F : ι → 𝕜 → 𝕜'} {d : ι → ℤ}
    (hd : (support d).Finite) (h : ∀ i, MeromorphicOn (F i) U)
    (h' : ∀ i, ∀ x ∈ U, meromorphicOrderAt (F i) x ≠ ⊤) :
    logDeriv (∏ᶠ i, F i ^ d i)
      =ᶠ[codiscreteWithin U] fun z ↦ ∑ᶠ i, d i • logDeriv (F i) z := by
  have hA : ∀ᶠ y in codiscreteWithin U, ∀ i ∈ hd.toFinset, AnalyticAt 𝕜 (F i) y :=
    (eventually_all_finset hd.toFinset).2 fun i _ ↦ (h i).analyticAt_mem_codiscreteWithin
  have hN : ∀ᶠ y in codiscreteWithin U, ∀ i ∈ hd.toFinset, F i y ≠ 0 :=
    (eventually_all_finset hd.toFinset).2 fun i _ ↦ (h i).eventually_codiscreteWithin_apply_ne_zero
      (h' i)
  filter_upwards [hA, hN] with y h₁y h₂y
  have h₀ : ∏ᶠ i, F i ^ d i = ∏ i ∈ hd.toFinset, F i ^ d i :=
    finprod_eq_prod_of_mulSupport_subset _ <| by simp +contextual [Set.subset_def, not_imp_not]
  have hsub : support (fun i ↦ d i • logDeriv (F i) y) ⊆ hd.toFinset := by
    simp +contextual [-support_mul, -mul_eq_zero, Set.subset_def, not_imp_not]
  calc logDeriv (∏ᶠ i, F i ^ d i) y
      = logDeriv (∏ i ∈ hd.toFinset, F i ^ d i) y := by rw [h₀]
    _ = ∑ i ∈ hd.toFinset, logDeriv (F i ^ d i) y :=
        logDeriv_prod (fun i hi ↦ zpow_ne_zero _ (h₂y i hi))
          (fun i hi ↦ ((h₁y i hi).zpow (h₂y i hi)).differentiableAt)
    _ = ∑ i ∈ hd.toFinset, d i • logDeriv (F i) y := by
        congr! with i hi
        rw [zsmul_eq_mul, Pi.pow_def]
        exact logDeriv_fun_zpow (h₁y i hi).differentiableAt (d i)
    _ = ∑ᶠ i, d i • logDeriv (F i) y := (finsum_eq_sum_of_support_subset _ hsub).symm

/--
The logarithmic derivative converts products into sums: away from a codiscrete subset of `𝕜`, the
logarithmic derivative of a finite product of integer powers of meromorphic functions is the
corresponding weighted sum of logarithmic derivatives. This is the shape of statement used in the
differentiated Poisson–Jensen formula, where the exponents are given by a divisor.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/LogDeriv/Variant5ab0e9345c76a8160d4582341258f156a28501787a2f2adcb4ef7fbbe06f6ae0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/LogDeriv/Variant5ab0e9345c76a8160d4582341258f156a28501787a2f2adcb4ef7fbbe06f6ae0.lean#L153).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ca66deadc02ad53712ac0659fc4a88fec788a544` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
