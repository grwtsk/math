# natTrans

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3be653c47d3af6dbc14754732cbfdae59ee487bc174ee77062f31061e06c53d9",
  "kind": "def",
  "lexical_name": "natTrans",
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
  "slug": "nattrans--5210dafa0fb8bb8ae950515c",
  "source": {
    "blob": "ca3f4382b221c40c1acee6973d25b5eff1a87a8b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 212,
    "line": 207,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/NCompGamma/Variant5c517afa8a542ed4e1250e9515fe34d53f3c68aae4585434ac64a8ac43995f01.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5210dafa0fb8bb8ae950515cde77d4bedfef4f3a523ef618cddfd07588587da9",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/NCompGamma/Variant5c517afa8a542ed4e1250e9515fe34d53f3c68aae4585434ac64a8ac43995f01.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3be653c47d3af6dbc14754732cbfdae59ee487bc174ee77062f31061e06c53d9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 207–212.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def natTrans : (N₂ : Karoubi (SimplicialObject C) ⥤ _) ⋙ Γ₂ ⟶ 𝟭 _ :=
  ((whiskeringLeft _ _ _).obj (toKaroubi (SimplicialObject C))).preimage
    (by exact compatibility_Γ₂N₁_Γ₂N₂.hom ≫ Γ₂N₁.natTrans)
set_option linter.uppercaseLean3 false in
#align algebraic_topology.dold_kan.Γ₂N₂.nat_trans AlgebraicTopology.DoldKan.Γ₂N₂.natTrans

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/NCompGamma/Variant5c517afa8a542ed4e1250e9515fe34d53f3c68aae4585434ac64a8ac43995f01.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/NCompGamma/Variant5c517afa8a542ed4e1250e9515fe34d53f3c68aae4585434ac64a8ac43995f01.lean#L207).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ca3f4382b221c40c1acee6973d25b5eff1a87a8b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
