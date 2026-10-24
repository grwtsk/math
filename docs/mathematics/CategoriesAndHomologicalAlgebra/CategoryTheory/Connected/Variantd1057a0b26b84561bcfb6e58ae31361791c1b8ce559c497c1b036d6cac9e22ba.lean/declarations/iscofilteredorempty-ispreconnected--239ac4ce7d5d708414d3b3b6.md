# IsCofilteredOrEmpty.isPreconnected

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2fcace7d-7b84-162d-db33-2afd82b13f19",
  "kind": "theorem",
  "lexical_name": "IsCofilteredOrEmpty.isPreconnected",
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
  "slug": "iscofilteredorempty-ispreconnected--239ac4ce7d5d708414d3b3b6",
  "source": {
    "blob": "7aa367e446e3e2037524a6b2fc59614f7dd0e0f3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 37,
    "line": 32,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Connected/Variantd1057a0b26b84561bcfb6e58ae31361791c1b8ce559c497c1b036d6cac9e22ba.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:239ac4ce7d5d708414d3b3b611b6b1941818675226cedab8e8f8b081989be98a",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Connected/Variantd1057a0b26b84561bcfb6e58ae31361791c1b8ce559c497c1b036d6cac9e22ba.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2fcace7d-7b84-162d-db33-2afd82b13f19`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 32–37.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsCofilteredOrEmpty.isPreconnected [IsCofilteredOrEmpty C] : IsPreconnected C :=
  zigzag_isPreconnected fun j j' => .trans
    (.single <| .inr <| .intro <| IsCofiltered.minToLeft j j')
    (.single <| .inl <| .intro <| IsCofiltered.minToRight j j')

attribute [local instance] IsFiltered.nonempty in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Connected/Variantd1057a0b26b84561bcfb6e58ae31361791c1b8ce559c497c1b036d6cac9e22ba.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Connected/Variantd1057a0b26b84561bcfb6e58ae31361791c1b8ce559c497c1b036d6cac9e22ba.lean#L32).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7aa367e446e3e2037524a6b2fc59614f7dd0e0f3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
