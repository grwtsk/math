# isGaussian_iff_gaussian_charFunDual

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "87d85389ad12d2f778cb24600435f613b5af7cab",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 67,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ac/acf20a0e4b314ed52a8de536af9247a72f16e2f4466609d179d5497f28f88140.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4e00b5f4-e905-98c8-ccff-26593a7acbfb",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e569fb57-5960-d022-ab84-082652fe9274",
  "kind": "lemma",
  "lexical_name": "isGaussian_iff_gaussian_charFunDual",
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
  "slug": "isgaussian-iff-gaussian-charfundual--04827571372f9ac676dd7ee4",
  "source": {
    "blob": "87d85389ad12d2f778cb24600435f613b5af7cab",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 83,
    "line": 67,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/CharFun/Variantacf20a0e4b314ed52a8de536af9247a72f16e2f4466609d179d5497f28f88140.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:04827571372f9ac676dd7ee4cc54d7fe4dfc4026571c36368ee2476543d21765",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/CharFun/Variantacf20a0e4b314ed52a8de536af9247a72f16e2f4466609d179d5497f28f88140.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e569fb57-5960-d022-ab84-082652fe9274`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 67–83.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isGaussian_iff_gaussian_charFunDual [IsFiniteMeasure μ] :
    IsGaussian μ ↔
    ∃ (m : E) (f : StrongDual ℝ E →L[ℝ] StrongDual ℝ E →L[ℝ] ℝ),
      f.toBilinForm.IsPosSemidef ∧ ∀ L, charFunDual μ L = exp (L m * I - f L L / 2) := by
  refine ⟨fun h ↦ ⟨μ[id], covarianceBilinDual μ, isPosSemidef_covarianceBilinDual,
    h.charFunDual_eq'⟩,
    fun ⟨m, f, hf, h⟩ ↦ isGaussian_of_map_eq_gaussianReal fun L ↦ ⟨L m, (f L L).toNNReal, ?_⟩⟩
  apply Measure.ext_of_charFun
  ext t
  simp_rw [charFun_map_eq_charFunDual_smul, h, charFun_gaussianReal,
    smul_apply, map_smul, smul_apply, smul_eq_mul]
  norm_cast
  congrm exp (_ - ofReal ?_)
  rw [Real.coe_toNNReal]
  · ring
  exact hf.nonneg L

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/CharFun/Variantacf20a0e4b314ed52a8de536af9247a72f16e2f4466609d179d5497f28f88140.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/CharFun/Variantacf20a0e4b314ed52a8de536af9247a72f16e2f4466609d179d5497f28f88140.lean#L67).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `87d85389ad12d2f778cb24600435f613b5af7cab` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
