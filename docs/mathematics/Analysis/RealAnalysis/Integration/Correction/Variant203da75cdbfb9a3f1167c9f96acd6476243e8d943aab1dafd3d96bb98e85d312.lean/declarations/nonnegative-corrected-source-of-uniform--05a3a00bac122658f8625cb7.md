# nonnegative_corrected_source_of_uniform

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5701cb76301ba951c69e2a21d9b910bb43098311",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 75,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/20/203da75cdbfb9a3f1167c9f96acd6476243e8d943aab1dafd3d96bb98e85d312.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:337e5de3-c60d-a1b8-8dff-bb25480985ef",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8d28985d-4163-5d60-dd4f-9b8a7679d2c5",
  "kind": "theorem",
  "lexical_name": "nonnegative_corrected_source_of_uniform",
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
  "slug": "nonnegative-corrected-source-of-uniform--05a3a00bac122658f8625cb7",
  "source": {
    "blob": "5701cb76301ba951c69e2a21d9b910bb43098311",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 96,
    "line": 75,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Correction/Variant203da75cdbfb9a3f1167c9f96acd6476243e8d943aab1dafd3d96bb98e85d312.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:05a3a00bac122658f8625cb7aee13f275f80cf4fddcb94b74e3f977c05d80f68",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Correction/Variant203da75cdbfb9a3f1167c9f96acd6476243e8d943aab1dafd3d96bb98e85d312.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8d28985d-4163-5d60-dd4f-9b8a7679d2c5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 75–96.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem nonnegative_corrected_source_of_uniform
    (h : UniformLowerBound) :
    ∃ C : ℝ, 0 ≤ C ∧
      ∀ A : ℝ, 1 ≤ A → 0 ≤ correctedSource C A := by
  obtain ⟨lower, hlower⟩ := h
  refine ⟨max 0 (-lower), le_max_left _ _, ?_⟩
  intro A hA
  have hC : -lower ≤ max 0 (-lower) :=
    le_max_right _ _
  have hq :
      0 ≤ sourceQuadraticValue
        Realization.explicitSecondDerivative A +
          max 0 (-lower) := by
    linarith [hlower A hA]
  unfold correctedSource
  exact mul_nonneg
    (mul_nonneg
      (pow_nonneg (by linarith) 17)
      (source_normalization_pos A hA).le)
    hq

/-- Exact finite correction of the B3.3 continued transform. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Correction/Variant203da75cdbfb9a3f1167c9f96acd6476243e8d943aab1dafd3d96bb98e85d312.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Correction/Variant203da75cdbfb9a3f1167c9f96acd6476243e8d943aab1dafd3d96bb98e85d312.lean#L75).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5701cb76301ba951c69e2a21d9b910bb43098311` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
