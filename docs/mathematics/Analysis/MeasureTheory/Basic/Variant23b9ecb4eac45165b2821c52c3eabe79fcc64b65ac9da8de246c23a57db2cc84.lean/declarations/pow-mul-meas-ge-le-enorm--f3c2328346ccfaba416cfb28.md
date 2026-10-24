# pow_mul_meas_ge_le_enorm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c25c3921c0edef4a0a45b185dee06bb379f33821",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 897,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/23/23b9ecb4eac45165b2821c52c3eabe79fcc64b65ac9da8de246c23a57db2cc84.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5896d513-23d1-0738-752d-3bd42b40c62b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6d058f71-0142-8c6d-b332-805523b6fff1",
  "kind": "lemma",
  "lexical_name": "pow_mul_meas_ge_le_enorm",
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
  "slug": "pow-mul-meas-ge-le-enorm--f3c2328346ccfaba416cfb28",
  "source": {
    "blob": "c25c3921c0edef4a0a45b185dee06bb379f33821",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 902,
    "line": 897,
    "path": "GRWTSK/Analysis/MeasureTheory/Basic/Variant23b9ecb4eac45165b2821c52c3eabe79fcc64b65ac9da8de246c23a57db2cc84.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f3c2328346ccfaba416cfb2844f3aec6cee7cce55aa19c33609df035e92f696b",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Basic/Variant23b9ecb4eac45165b2821c52c3eabe79fcc64b65ac9da8de246c23a57db2cc84.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6d058f71-0142-8c6d-b332-805523b6fff1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 897–902.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma pow_mul_meas_ge_le_enorm (f : Lp E p μ) (hp_ne_zero : p ≠ 0) (hp_ne_top : p ≠ ∞) (ε : ℝ≥0∞) :
    (ε * μ {x | ε ≤ ‖f x‖ₑ ^ p.toReal}) ^ (1 / p.toReal) ≤ ENNReal.ofReal ‖f‖ :=
  (ENNReal.ofReal_toReal (eLpNorm_ne_top f)).symm ▸
    pow_mul_meas_ge_le_eLpNorm μ hp_ne_zero hp_ne_top (Lp.aestronglyMeasurable f) ε

/-- A version of **Markov's inequality** with elements of Lp. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Basic/Variant23b9ecb4eac45165b2821c52c3eabe79fcc64b65ac9da8de246c23a57db2cc84.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Basic/Variant23b9ecb4eac45165b2821c52c3eabe79fcc64b65ac9da8de246c23a57db2cc84.lean#L897).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c25c3921c0edef4a0a45b185dee06bb379f33821` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
