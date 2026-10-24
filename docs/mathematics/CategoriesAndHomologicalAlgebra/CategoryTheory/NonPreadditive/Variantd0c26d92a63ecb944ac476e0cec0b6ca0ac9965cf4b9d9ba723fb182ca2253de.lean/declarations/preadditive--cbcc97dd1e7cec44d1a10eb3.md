# preadditive

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ba9aae3960f3507dc2a9fa0c9e535dcc75c2cfb351a2ef3dfa80102446dc4d0a",
  "kind": "def",
  "lexical_name": "preadditive",
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
  "slug": "preadditive--cbcc97dd1e7cec44d1a10eb3",
  "source": {
    "blob": "ca060a74999a97976bf0b97eedb839c72f5f6827",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 470,
    "line": 453,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/NonPreadditive/Variantd0c26d92a63ecb944ac476e0cec0b6ca0ac9965cf4b9d9ba723fb182ca2253de.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:cbcc97dd1e7cec44d1a10eb36bb8ccea7edbea6539bbb71e19875939432c0055",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/NonPreadditive/Variantd0c26d92a63ecb944ac476e0cec0b6ca0ac9965cf4b9d9ba723fb182ca2253de.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ba9aae3960f3507dc2a9fa0c9e535dcc75c2cfb351a2ef3dfa80102446dc4d0a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 453–470.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def preadditive : Preadditive C where
  homGroup X Y :=
    { add := (· + ·)
      add_assoc := add_assoc
      zero := 0
      zero_add := neg_neg
      add_zero := add_zero
      neg := fun f => -f
      add_left_neg := neg_add_self
      sub_eq_add_neg  := fun f g => (add_neg f g).symm -- Porting note: autoParam failed
      add_comm := add_comm }
  add_comp := add_comp
  comp_add := comp_add
#align category_theory.non_preadditive_abelian.preadditive CategoryTheory.NonPreadditiveAbelian.preadditive

end

end CategoryTheory.NonPreadditiveAbelian
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/NonPreadditive/Variantd0c26d92a63ecb944ac476e0cec0b6ca0ac9965cf4b9d9ba723fb182ca2253de.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/NonPreadditive/Variantd0c26d92a63ecb944ac476e0cec0b6ca0ac9965cf4b9d9ba723fb182ca2253de.lean#L453).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ca060a74999a97976bf0b97eedb839c72f5f6827` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
