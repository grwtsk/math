# exists_measure_rpow_eq_integral_rpowIntegrand₀₁

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8384d5a9-8f6c-822c-2e3b-279fbab55cf9",
  "kind": "lemma",
  "lexical_name": "exists_measure_rpow_eq_integral_rpowIntegrand₀₁",
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
  "slug": "exists-measure-rpow-eq-integral-rpowintegrand--6254af59c5d81964edc1bdd8",
  "source": {
    "blob": "443f65af5756061d550fe74ea1d2c4e23305be90",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 380,
    "line": 357,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/IntegralRepresentation/Variant5efdecf690d674ca874c9138916fe17dd53a551c75ebeacffea1df90185bf1cc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6254af59c5d81964edc1bdd874b16fc60a028875b6f1049d5ad1dba525aa705c",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/IntegralRepresentation/Variant5efdecf690d674ca874c9138916fe17dd53a551c75ebeacffea1df90185bf1cc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8384d5a9-8f6c-822c-2e3b-279fbab55cf9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 357–380.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma exists_measure_rpow_eq_integral_rpowIntegrand₀₁ (hp : p ∈ Ioo 0 1) :
    ∃ μ : Measure ℝ, ∀ x ∈ Ici 0,
      (IntegrableOn (fun t => rpowIntegrand₀₁ p t x) (Ioi 0) μ)
      ∧ x ^ p = ∫ t in Ioi 0, rpowIntegrand₀₁ p t x ∂μ := by
  let C : ℝ≥0 := .mk (∫ t in Ioi 0, rpowIntegrand₀₁ p t 1)⁻¹
    (by rw [inv_nonneg]; exact le_of_lt <| integral_rpowIntegrand₀₁_one_pos hp)
  refine ⟨C • volume, fun x hx => ⟨?_, ?_⟩⟩
  · unfold IntegrableOn
    rw [Measure.restrict_smul]
    exact Integrable.smul_measure_nnreal <| integrableOn_rpowIntegrand₀₁_Ioi hp hx
  · simp_rw [Measure.restrict_smul, integral_smul_nnreal_measure, rpow_eq_const_mul_integral hp hx,
      NNReal.smul_def, C, NNReal.coe_mk, smul_eq_mul]

@[deprecated (since := "2026-04-03")]
alias exists_measure_rpow_eq_integral := exists_measure_rpow_eq_integral_rpowIntegrand₀₁

end ZeroOne

section OneTwo
/-
## `p ∈ (1,2)`
-/
variable {p t x : ℝ}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/IntegralRepresentation/Variant5efdecf690d674ca874c9138916fe17dd53a551c75ebeacffea1df90185bf1cc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/IntegralRepresentation/Variant5efdecf690d674ca874c9138916fe17dd53a551c75ebeacffea1df90185bf1cc.lean#L357).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `443f65af5756061d550fe74ea1d2c4e23305be90` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
