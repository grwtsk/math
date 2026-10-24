# functorProdFunctorEquivUnitIso

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1274b81450647ce4b7380589403671e6f3f896e263f6bc20e979f2a44b414689",
  "kind": "def",
  "lexical_name": "functorProdFunctorEquivUnitIso",
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
  "slug": "functorprodfunctorequivunitiso--9740613bea33a7f6fb4c511a",
  "source": {
    "blob": "d10b44639e34d0750b039cf30b44ead5eb56ac0a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 340,
    "line": 332,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantfe87bb8afa0cc49483f8a562e2b5d7b31c88c0fae982bb7a5ce0f71d0bbbf78e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9740613bea33a7f6fb4c511a513de6d904599353b6dbc9e81484d251e195d456",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantfe87bb8afa0cc49483f8a562e2b5d7b31c88c0fae982bb7a5ce0f71d0bbbf78e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1274b81450647ce4b7380589403671e6f3f896e263f6bc20e979f2a44b414689`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 332–340.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def functorProdFunctorEquivUnitIso :
    𝟭 _ ≅ prodFunctorToFunctorProd A B C ⋙ functorProdToProdFunctor A B C :=
  NatIso.ofComponents fun F =>
    (((Functor.prod'CompFst F.fst F.snd).prod (Functor.prod'CompSnd F.fst F.snd)).trans
      (prod.etaIso F)).symm
#align category_theory.functor_prod_functor_equiv_unit_iso CategoryTheory.functorProdFunctorEquivUnitIso

/-- The counit isomorphism for `functorProdFunctorEquiv` -/
@[simps!]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantfe87bb8afa0cc49483f8a562e2b5d7b31c88c0fae982bb7a5ce0f71d0bbbf78e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantfe87bb8afa0cc49483f8a562e2b5d7b31c88c0fae982bb7a5ce0f71d0bbbf78e.lean#L332).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d10b44639e34d0750b039cf30b44ead5eb56ac0a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
