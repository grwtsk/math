# monModuleEquivalenceAlgebraForget

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2e2debd356f865ddaeef42df277a33155eae9b7381025a9ce91736ba8b035933",
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
  "slug": "monmoduleequivalencealgebraforget--68114af1c1ed259e656131c0",
  "source": {
    "blob": "1824d7ff811221b6f22692dbc86f5b031ecca2be",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 228,
    "line": 214,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Module/Variantdee9ef04623ad7629c307680ac5bec0b1d26c2ac1b22d2094de2dce3e0aa7623.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:68114af1c1ed259e656131c092a8ed54156fcd257c7dd142d5f8912d6cc348ba",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Module/Variantdee9ef04623ad7629c307680ac5bec0b1d26c2ac1b22d2094de2dce3e0aa7623.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_SOURCE_DEPENDENCY"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2e2debd356f865ddaeef42df277a33155eae9b7381025a9ce91736ba8b035933`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 214–228.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def monModuleEquivalenceAlgebraForget :
    MonModuleEquivalenceAlgebra.functor ⋙ forget₂ (AlgCat.{u} R) (ModuleCat.{u} R) ≅
      Mon_.forget (ModuleCat.{u} R) :=
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

**Module verification:** `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Module/Variantdee9ef04623ad7629c307680ac5bec0b1d26c2ac1b22d2094de2dce3e0aa7623.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Module/Variantdee9ef04623ad7629c307680ac5bec0b1d26c2ac1b22d2094de2dce3e0aa7623.lean#L214).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1824d7ff811221b6f22692dbc86f5b031ecca2be` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
