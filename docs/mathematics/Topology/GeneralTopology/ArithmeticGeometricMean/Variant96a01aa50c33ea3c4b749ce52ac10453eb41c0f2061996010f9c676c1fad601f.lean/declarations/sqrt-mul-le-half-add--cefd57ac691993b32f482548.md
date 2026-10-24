# sqrt_mul_le_half_add

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9e93661e4260b22e72e16969289b4ea6a6e0bb65",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 31,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/96/96a01aa50c33ea3c4b749ce52ac10453eb41c0f2061996010f9c676c1fad601f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:604f9dc9-5206-78e6-9213-105357ffcafb",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:dc8381bb-1019-5f81-fe1c-453876c1b662",
  "kind": "lemma",
  "lexical_name": "sqrt_mul_le_half_add",
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
  "slug": "sqrt-mul-le-half-add--cefd57ac691993b32f482548",
  "source": {
    "blob": "9e93661e4260b22e72e16969289b4ea6a6e0bb65",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 36,
    "line": 31,
    "path": "GRWTSK/Topology/GeneralTopology/ArithmeticGeometricMean/Variant96a01aa50c33ea3c4b749ce52ac10453eb41c0f2061996010f9c676c1fad601f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cefd57ac691993b32f4825483b3a86f9740182e7ac60f011319871162da5e822",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ArithmeticGeometricMean/Variant96a01aa50c33ea3c4b749ce52ac10453eb41c0f2061996010f9c676c1fad601f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dc8381bb-1019-5f81-fe1c-453876c1b662`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 31–36.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma sqrt_mul_le_half_add (x y : ℝ≥0) : sqrt (x * y) ≤ (x + y) / 2 := by
  rw [sqrt_le_iff_le_sq, div_pow, le_div_iff₀' (by positivity), ← mul_assoc]
  norm_num
  exact four_mul_le_sq_add ..

/-- The strict AM–GM inequality for two `NNReal`s, with means in canonical form. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ArithmeticGeometricMean/Variant96a01aa50c33ea3c4b749ce52ac10453eb41c0f2061996010f9c676c1fad601f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ArithmeticGeometricMean/Variant96a01aa50c33ea3c4b749ce52ac10453eb41c0f2061996010f9c676c1fad601f.lean#L31).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9e93661e4260b22e72e16969289b4ea6a6e0bb65` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
