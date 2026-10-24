# ev02₂

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b5abd0df8b2fd86a4a580a215fea4e61cb4afa3ed3ce60ea50ef26f8b0224682",
  "kind": "def",
  "lexical_name": "ev02₂",
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
  "slug": "ev02--0ae2c5ca154bfabf86fed91a",
  "source": {
    "blob": "8ae3d974a68bdc3dc22d11f78f2d9f95aae418d8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 220,
    "line": 214,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/HomotopyCat/Variantb4437e2300b9d53dc2e4f457ce20448a83a6ef27f25a10e6a2cdd814e411d916.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0ae2c5ca154bfabf86fed91a6334e70b98db44f2ff55ac4a4ae084fa7fc33c1b",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/HomotopyCat/Variantb4437e2300b9d53dc2e4f457ce20448a83a6ef27f25a10e6a2cdd814e411d916.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b5abd0df8b2fd86a4a580a215fea4e61cb4afa3ed3ce60ea50ef26f8b0224682`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 214–220.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def ev02₂ {V : SSet.Truncated 2} (φ : V _⦋2⦌₂) : ev0₂ φ ⟶ ev2₂ φ :=
  ⟨V.map δ1₂.op φ, map_map_of_eq V rfl, map_map_of_eq V rfl⟩

set_option backward.privateInPublic true in
set_option backward.privateInPublic.warn false in
/-- The arrow in the ReflQuiver `OneTruncation₂ V` of a 2-truncated simplicial set arising from the
2nd face of a 2-simplex. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/HomotopyCat/Variantb4437e2300b9d53dc2e4f457ce20448a83a6ef27f25a10e6a2cdd814e411d916.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/HomotopyCat/Variantb4437e2300b9d53dc2e4f457ce20448a83a6ef27f25a10e6a2cdd814e411d916.lean#L214).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8ae3d974a68bdc3dc22d11f78f2d9f95aae418d8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
