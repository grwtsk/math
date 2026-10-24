# cond_cond_eq_cond_inter'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4bb8eb72ab1d7c29eab784839c6443758daaac78",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 233,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b5/b56a2070319a69138e99fe7b13ae414ba41718c9f604ecf43d257e842d7ad4f8.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:283d79f0-3ecb-1bb5-1192-a26ae64a97cd",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:49fcdff8-ea14-5eb6-abd8-821ce617e2d7",
  "kind": "lemma",
  "lexical_name": "cond_cond_eq_cond_inter'",
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
  "slug": "cond-cond-eq-cond-inter--eaa2628f09f44c447217dc6c",
  "source": {
    "blob": "4bb8eb72ab1d7c29eab784839c6443758daaac78",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 246,
    "line": 233,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/ConditionalProbability/Variantb56a2070319a69138e99fe7b13ae414ba41718c9f604ecf43d257e842d7ad4f8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:eaa2628f09f44c447217dc6c16b0c52ece1abe715b0e0c7681252811418c75af",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/ConditionalProbability/Variantb56a2070319a69138e99fe7b13ae414ba41718c9f604ecf43d257e842d7ad4f8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:49fcdff8-ea14-5eb6-abd8-821ce617e2d7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 233–246.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma cond_cond_eq_cond_inter' (hms : MeasurableSet s) (hmt : MeasurableSet t) (hcs : μ s ≠ ∞) :
    μ[|s][|t] = μ[|s ∩ t] := by
  ext u
  rw [cond_apply hmt, cond_apply hms, cond_apply hms, cond_apply (hms.inter hmt)]
  obtain hst | hst := eq_or_ne (μ (s ∩ t)) 0
  · have : μ (s ∩ t ∩ u) = 0 := measure_mono_null Set.inter_subset_left hst
    simp [this, ← Set.inter_assoc]
  · have hcs' : μ s ≠ 0 :=
      (measure_pos_of_superset Set.inter_subset_left hst).ne'
    simp [*, ← mul_assoc, ← Set.inter_assoc, ENNReal.mul_inv, ENNReal.mul_inv_cancel,
      mul_right_comm _ _ (μ s)⁻¹]

/-- Conditioning first on `s` and then on `t` results in the same measure as conditioning
on `s ∩ t`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/ConditionalProbability/Variantb56a2070319a69138e99fe7b13ae414ba41718c9f604ecf43d257e842d7ad4f8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/ConditionalProbability/Variantb56a2070319a69138e99fe7b13ae414ba41718c9f604ecf43d257e842d7ad4f8.lean#L233).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4bb8eb72ab1d7c29eab784839c6443758daaac78` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
