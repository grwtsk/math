# supported_away_from_old_boundary

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9019322231f748ca4a2c69c7bead5d9a79334c5b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 291,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/5d/5dff998f26b403a0643d34325280e114b565a6ab45d475c3ea86d924479db87f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:37f62da9-0918-aa32-3255-afbe4c65df91",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e902f5b1-fe5d-ca54-fa5a-b7ebfaa81953",
  "kind": "theorem",
  "lexical_name": "supported_away_from_old_boundary",
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
  "slug": "supported-away-from-old-boundary--03e1c3363abcf981996e1f76",
  "source": {
    "blob": "9019322231f748ca4a2c69c7bead5d9a79334c5b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 299,
    "line": 291,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/AmbientIsotopyExtension/Variant5dff998f26b403a0643d34325280e114b565a6ab45d475c3ea86d924479db87f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:03e1c3363abcf981996e1f767d69bf193d1c29d607229f4d35fe5f46eebba1c6",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/AmbientIsotopyExtension/Variant5dff998f26b403a0643d34325280e114b565a6ab45d475c3ea86d924479db87f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e902f5b1-fe5d-ca54-fa5a-b7ebfaa81953`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 291–299.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem supported_away_from_old_boundary
    {p q : Nat} {M : T.Manifold}
    {e₀ e₁ : T.FramedEmbedding p q M}
    (h : T.FramedIsotopic e₀ e₁) :
    A.SupportedAwayFromOldBoundary (A.ambientEnd h) := by
  rw [← A.ambient_family_one h]
  exact A.ambient_supported h A.timeOne

/-- The supplied support is explicitly interior, not merely disjoint from a label. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/AmbientIsotopyExtension/Variant5dff998f26b403a0643d34325280e114b565a6ab45d475c3ea86d924479db87f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/AmbientIsotopyExtension/Variant5dff998f26b403a0643d34325280e114b565a6ab45d475c3ea86d924479db87f.lean#L291).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9019322231f748ca4a2c69c7bead5d9a79334c5b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
