# yonedaPairing

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5bb892cc545f1425fe558522a77d9f88bab6f8276af32c8bf3e58daa197fc7b5",
  "kind": "def",
  "lexical_name": "yonedaPairing",
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
  "slug": "yonedapairing--c9c5c0c61eaca5ed873e8e0d",
  "source": {
    "blob": "b16bb82e01de289c2e3aded9419c3dc1331c85a9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 555,
    "line": 552,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Yoneda/Variantae1142c7880fdb870f28f7039d7f11758346b874f40debcb8dd767e3eda1adce.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c9c5c0c61eaca5ed873e8e0d1bef11da4df80fd38de724014b6cb666bb0ac159",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Yoneda/Variantae1142c7880fdb870f28f7039d7f11758346b874f40debcb8dd767e3eda1adce.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5bb892cc545f1425fe558522a77d9f88bab6f8276af32c8bf3e58daa197fc7b5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 552–555.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def yonedaPairing : Cᵒᵖ × (Cᵒᵖ ⥤ Type v₁) ⥤ Type max u₁ v₁ :=
  Functor.prod yoneda.op (𝟭 (Cᵒᵖ ⥤ Type v₁)) ⋙ Functor.hom (Cᵒᵖ ⥤ Type v₁)

@[ext]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Yoneda/Variantae1142c7880fdb870f28f7039d7f11758346b874f40debcb8dd767e3eda1adce.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Yoneda/Variantae1142c7880fdb870f28f7039d7f11758346b874f40debcb8dd767e3eda1adce.lean#L552).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b16bb82e01de289c2e3aded9419c3dc1331c85a9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
