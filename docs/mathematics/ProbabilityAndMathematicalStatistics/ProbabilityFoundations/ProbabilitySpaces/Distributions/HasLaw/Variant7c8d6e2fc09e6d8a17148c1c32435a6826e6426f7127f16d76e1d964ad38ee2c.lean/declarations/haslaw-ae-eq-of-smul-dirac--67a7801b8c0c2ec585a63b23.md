# HasLaw.ae_eq_of_smul_dirac

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "69037c1c1f65abaf7d0ac9dd12ea55fe5abdf27d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 211,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/7c/7c8d6e2fc09e6d8a17148c1c32435a6826e6426f7127f16d76e1d964ad38ee2c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:444a4b98-035f-deae-6b14-dae7379746e6",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ca1dcda0-d45e-b5a5-382e-d0a0c071e6d6",
  "kind": "lemma",
  "lexical_name": "HasLaw.ae_eq_of_smul_dirac",
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
  "slug": "haslaw-ae-eq-of-smul-dirac--67a7801b8c0c2ec585a63b23",
  "source": {
    "blob": "69037c1c1f65abaf7d0ac9dd12ea55fe5abdf27d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 217,
    "line": 211,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/HasLaw/Variant7c8d6e2fc09e6d8a17148c1c32435a6826e6426f7127f16d76e1d964ad38ee2c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:67a7801b8c0c2ec585a63b238c98a24fed1fa42ca66ef57c7aba112d26e07fb9",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/HasLaw/Variant7c8d6e2fc09e6d8a17148c1c32435a6826e6426f7127f16d76e1d964ad38ee2c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ca1dcda0-d45e-b5a5-382e-d0a0c071e6d6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 211–217.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma HasLaw.ae_eq_of_smul_dirac {c : ℝ≥0∞} [MeasurableSingletonClass 𝓧] {x : 𝓧}
    (hX : HasLaw X (c • .dirac x) P) :
    X =ᵐ[P] (fun _ ↦ x) := by
  apply ae_of_ae_map (p := fun y ↦ y = x) hX.aemeasurable
  rw [hX.map_eq]
  apply Measure.ae_smul_measure (by simp)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/HasLaw/Variant7c8d6e2fc09e6d8a17148c1c32435a6826e6426f7127f16d76e1d964ad38ee2c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/HasLaw/Variant7c8d6e2fc09e6d8a17148c1c32435a6826e6426f7127f16d76e1d964ad38ee2c.lean#L211).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `69037c1c1f65abaf7d0ac9dd12ea55fe5abdf27d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
