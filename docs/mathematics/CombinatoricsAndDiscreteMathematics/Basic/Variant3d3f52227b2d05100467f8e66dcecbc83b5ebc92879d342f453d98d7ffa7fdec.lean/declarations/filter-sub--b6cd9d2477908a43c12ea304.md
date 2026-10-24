# filter_sub

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e5b64bed42f59ef2e8765524b24d6104e6a0f7c0",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1163,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/3d/3d3f52227b2d05100467f8e66dcecbc83b5ebc92879d342f453d98d7ffa7fdec.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8ff84094-7996-b7b5-2f25-bb36659033d9",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:4acfe3a5-ac5f-e6bc-cfe4-328086a338fc",
  "kind": "theorem",
  "lexical_name": "filter_sub",
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
  "slug": "filter-sub--b6cd9d2477908a43c12ea304",
  "source": {
    "blob": "e5b64bed42f59ef2e8765524b24d6104e6a0f7c0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1171,
    "line": 1163,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Variant3d3f52227b2d05100467f8e66dcecbc83b5ebc92879d342f453d98d7ffa7fdec.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b6cd9d2477908a43c12ea304e774d201fec8473e6e1ab73afc2b4b72f761e8ad",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Basic/Variant3d3f52227b2d05100467f8e66dcecbc83b5ebc92879d342f453d98d7ffa7fdec.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4acfe3a5-ac5f-e6bc-cfe4-328086a338fc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1163–1171.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem filter_sub (p : α → Prop) (f₁ f₂ : α →₀ G) :
    filter p (f₁ - f₂) = filter p f₁ - filter p f₂ :=
  (filterAddHom p : (_ →₀ G) →+ _).map_sub f₁ f₂
#align finsupp.filter_sub Finsupp.filter_sub

end Group

end SubtypeDomain

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Basic/Variant3d3f52227b2d05100467f8e66dcecbc83b5ebc92879d342f453d98d7ffa7fdec.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Variant3d3f52227b2d05100467f8e66dcecbc83b5ebc92879d342f453d98d7ffa7fdec.lean#L1163).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e5b64bed42f59ef2e8765524b24d6104e6a0f7c0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
