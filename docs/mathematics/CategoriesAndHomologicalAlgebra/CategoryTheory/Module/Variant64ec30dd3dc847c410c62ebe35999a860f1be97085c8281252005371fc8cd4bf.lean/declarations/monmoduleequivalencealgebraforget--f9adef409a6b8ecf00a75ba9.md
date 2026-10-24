# monModuleEquivalenceAlgebraForget

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5ca59194d6b284454e0c3e5731ad8f125b6e5bf92b6fce82ddf384e0c759ae6a",
  "kind": "def",
  "lexical_name": "monModuleEquivalenceAlgebraForget",
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
  "slug": "monmoduleequivalencealgebraforget--f9adef409a6b8ecf00a75ba9",
  "source": {
    "blob": "8f1f3ab63086a036d2504cf6d14bfe370049f1c8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 243,
    "line": 229,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Module/Variant64ec30dd3dc847c410c62ebe35999a860f1be97085c8281252005371fc8cd4bf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f9adef409a6b8ecf00a75ba9573f2122bd74a6e65753a42e65b2847a377b3d19",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Module/Variant64ec30dd3dc847c410c62ebe35999a860f1be97085c8281252005371fc8cd4bf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5ca59194d6b284454e0c3e5731ad8f125b6e5bf92b6fce82ddf384e0c759ae6a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 229–243.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def monModuleEquivalenceAlgebraForget :
    MonModuleEquivalenceAlgebra.functor ⋙ forget₂ (AlgCat.{u} R) (ModuleCat.{u} R) ≅
      Mon.forget (ModuleCat.{u} R) :=
  NatIso.ofComponents
    (fun A =>
      { hom := ofHom
          { toFun := _root_.id
            map_add' := fun _ _ => rfl
            map_smul' := fun _ _ => rfl }
        inv := ofHom
          { toFun := _root_.id
            map_add' := fun _ _ => rfl
            map_smul' := fun _ _ => rfl } })

end ModuleCat
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Module/Variant64ec30dd3dc847c410c62ebe35999a860f1be97085c8281252005371fc8cd4bf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Module/Variant64ec30dd3dc847c410c62ebe35999a860f1be97085c8281252005371fc8cd4bf.lean#L229).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8f1f3ab63086a036d2504cf6d14bfe370049f1c8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
