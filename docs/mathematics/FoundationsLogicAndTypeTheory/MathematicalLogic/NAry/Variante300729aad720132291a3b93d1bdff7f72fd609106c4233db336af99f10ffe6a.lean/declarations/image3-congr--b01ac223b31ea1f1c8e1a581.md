# image3_congr

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e935df3819a7042b2d5b75f29074cd9f18dcf22f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 247,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e3/e300729aad720132291a3b93d1bdff7f72fd609106c4233db336af99f10ffe6a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8fd8ba0d-0215-be92-6240-88fe7d808b6b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e22b9f10-b677-9df0-f0b3-84dcc3ba49c7",
  "kind": "theorem",
  "lexical_name": "image3_congr",
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
  "slug": "image3-congr--b01ac223b31ea1f1c8e1a581",
  "source": {
    "blob": "e935df3819a7042b2d5b75f29074cd9f18dcf22f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 254,
    "line": 247,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/NAry/Variante300729aad720132291a3b93d1bdff7f72fd609106c4233db336af99f10ffe6a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b01ac223b31ea1f1c8e1a5813bc5bf19f37a2d05f47d0b8a04891c47d54f3430",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/NAry/Variante300729aad720132291a3b93d1bdff7f72fd609106c4233db336af99f10ffe6a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e22b9f10-b677-9df0-f0b3-84dcc3ba49c7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 247–254.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem image3_congr (h : ∀ a ∈ s, ∀ b ∈ t, ∀ c ∈ u, g a b c = g' a b c) :
    image3 g s t u = image3 g' s t u := by
  ext x
  constructor <;> rintro ⟨a, b, c, ha, hb, hc, rfl⟩ <;>
    exact ⟨a, b, c, ha, hb, hc, by rw [h a ha b hb c hc]⟩
#align set.image3_congr Set.image3_congr

/-- A common special case of `image3_congr` -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/NAry/Variante300729aad720132291a3b93d1bdff7f72fd609106c4233db336af99f10ffe6a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/NAry/Variante300729aad720132291a3b93d1bdff7f72fd609106c4233db336af99f10ffe6a.lean#L247).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e935df3819a7042b2d5b75f29074cd9f18dcf22f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
