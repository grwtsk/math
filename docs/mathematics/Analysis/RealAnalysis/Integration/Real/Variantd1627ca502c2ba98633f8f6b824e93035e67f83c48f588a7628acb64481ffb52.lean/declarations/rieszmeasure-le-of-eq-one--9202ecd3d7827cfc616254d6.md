# rieszMeasure_le_of_eq_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2d5b69ce-9c00-fc45-11b9-d7bac807ccf2",
  "kind": "lemma",
  "lexical_name": "rieszMeasure_le_of_eq_one",
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
  "slug": "rieszmeasure-le-of-eq-one--9202ecd3d7827cfc616254d6",
  "source": {
    "blob": "76072544280c8e16574e79284f627a921a700291",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 116,
    "line": 98,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Real/Variantd1627ca502c2ba98633f8f6b824e93035e67f83c48f588a7628acb64481ffb52.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9202ecd3d7827cfc616254d6975765df5265e5d5dc60356e2252a64a3b5b20a8",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Real/Variantd1627ca502c2ba98633f8f6b824e93035e67f83c48f588a7628acb64481ffb52.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2d5b69ce-9c00-fc45-11b9-d7bac807ccf2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 98–116.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma rieszMeasure_le_of_eq_one {f : C_c(X, ℝ)} (hf : ∀ x, 0 ≤ f x) {K : Set X}
    (hK : IsCompact K) (hfK : ∀ x ∈ K, f x = 1) : rieszMeasure Λ K ≤ ENNReal.ofReal (Λ f) := by
  rw [← Compacts.coe_mk K hK, rieszMeasure,
    Content.measure_eq_content_of_regular _ (contentRegular_rieszContent (toNNRealLinear Λ))]
  apply ENNReal.coe_le_iff.mpr
  intro p hp
  rw [← ENNReal.ofReal_coe_nnreal,
    ENNReal.ofReal_eq_ofReal_iff (Λ.map_nonneg hf) NNReal.zero_le_coe] at hp
  apply csInf_le'
  rw [Set.mem_image]
  use f.nnrealPart
  simp_rw [Set.mem_ofPred_eq, nnrealPart_apply, Real.one_le_toNNReal]
  refine ⟨(fun x hx ↦ Eq.ge (hfK x hx)), ?_⟩
  apply NNReal.eq
  rw [toNNRealLinear_apply, show f.nnrealPart.toReal = f by ext z; simp [hf z], hp]

omit [T2Space X] [LocallyCompactSpace X] in
/-- Given `f : C_c(X, ℝ)` such that `range f ⊆ [a, b]` we obtain a partition of the support of `f`
determined by partitioning `[a, b]` into `N` pieces. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Real/Variantd1627ca502c2ba98633f8f6b824e93035e67f83c48f588a7628acb64481ffb52.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Real/Variantd1627ca502c2ba98633f8f6b824e93035e67f83c48f588a7628acb64481ffb52.lean#L98).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `76072544280c8e16574e79284f627a921a700291` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
