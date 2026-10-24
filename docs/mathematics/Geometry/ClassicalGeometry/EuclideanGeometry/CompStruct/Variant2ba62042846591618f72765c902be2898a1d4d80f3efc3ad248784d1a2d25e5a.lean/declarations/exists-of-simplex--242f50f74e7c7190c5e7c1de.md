# exists_of_simplex

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ecd55b31f2ceb7e9d4787b45264796f8d1496212",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 226,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/2b/2ba62042846591618f72765c902be2898a1d4d80f3efc3ad248784d1a2d25e5a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:dc889256-daad-4e55-aae8-a1f89ee3cb94",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9916d9ac-8676-29e4-0b91-141d747c59f0",
  "kind": "lemma",
  "lexical_name": "exists_of_simplex",
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
  "slug": "exists-of-simplex--242f50f74e7c7190c5e7c1de",
  "source": {
    "blob": "ecd55b31f2ceb7e9d4787b45264796f8d1496212",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 231,
    "line": 226,
    "path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/CompStruct/Variant2ba62042846591618f72765c902be2898a1d4d80f3efc3ad248784d1a2d25e5a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:242f50f74e7c7190c5e7c1de0f3de2f9325fcd4a65f91e8e548393ef96c85266",
  "verification": {
    "reference": "docs/verification/Geometry/ClassicalGeometry/EuclideanGeometry/CompStruct/Variant2ba62042846591618f72765c902be2898a1d4d80f3efc3ad248784d1a2d25e5a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9916d9ac-8676-29e4-0b91-141d747c59f0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 226–231.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma exists_of_simplex (s : X _⦋2⦌) :
    ∃ (x₀ x₁ x₂ : X _⦋0⦌) (e₀₁ : Edge x₀ x₁) (e₁₂ : Edge x₁ x₂)
      (e₀₂ : Edge x₀ x₂) (h : CompStruct e₀₁ e₁₂ e₀₂), h.simplex = s :=
  Truncated.Edge.CompStruct.exists_of_simplex (X := (truncation 2).obj X) s

/-- `e : Edge x₀ x₁` is a composition of `Edge.id x₀` with `e`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Geometry/ClassicalGeometry/EuclideanGeometry/CompStruct/Variant2ba62042846591618f72765c902be2898a1d4d80f3efc3ad248784d1a2d25e5a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/CompStruct/Variant2ba62042846591618f72765c902be2898a1d4d80f3efc3ad248784d1a2d25e5a.lean#L226).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ecd55b31f2ceb7e9d4787b45264796f8d1496212` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
