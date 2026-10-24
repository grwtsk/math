# mass_sub_abs_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b5480472e4dd3c2ecbbe3dde3efc87be5579b974",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 141,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ae/ae45cd827fa91932a574c5b072b3137a4021de2fd4439b5c67f3bf179383320b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5bf6ed15-6833-a701-c58a-986f9a28e88b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8f9438d8-880a-3b8c-2465-ad61f417a02c",
  "kind": "theorem",
  "lexical_name": "mass_sub_abs_le",
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
  "slug": "mass-sub-abs-le--27060151f80b0ccb50132ada",
  "source": {
    "blob": "b5480472e4dd3c2ecbbe3dde3efc87be5579b974",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 152,
    "line": 141,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FixedSourceResolventFloorAudit/Variantae45cd827fa91932a574c5b072b3137a4021de2fd4439b5c67f3bf179383320b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:27060151f80b0ccb50132adace1c7f896422defc856d9ab48e2099789a6ec649",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FixedSourceResolventFloorAudit/Variantae45cd827fa91932a574c5b072b3137a4021de2fd4439b5c67f3bf179383320b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8f9438d8-880a-3b8c-2465-ad61f417a02c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 141–152.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mass_sub_abs_le (N : ℝ) (hN : 2 ≤ N) (α : ℝ) (hα : 0 < α) :
    |sourceMass α - truncatedMass N α| ≤
      2 * kernelMass * derivativeBudget * Real.exp ((1 - N) / 2) / α := by
  have h := reference_regularizedMass_sub_abs_le sourceEnergy (truncatedEnergy N)
    sourceEnergy_isPositive (truncatedEnergy_isPositive N) α hα
  calc
    _ ≤ ‖sourceEnergy - truncatedEnergy N‖ / (2 * α) := h
    _ ≤ (4 * kernelMass * derivativeBudget * Real.exp ((1 - N) / 2)) / (2 * α) :=
      div_le_div_of_nonneg_right (energy_norm_sub_le N hN) (by positivity)
    _ = _ := by ring

/-- The joint cutoff produces a vanishing error, without interchanging limits. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FixedSourceResolventFloorAudit/Variantae45cd827fa91932a574c5b072b3137a4021de2fd4439b5c67f3bf179383320b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FixedSourceResolventFloorAudit/Variantae45cd827fa91932a574c5b072b3137a4021de2fd4439b5c67f3bf179383320b.lean#L141).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b5480472e4dd3c2ecbbe3dde3efc87be5579b974` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
