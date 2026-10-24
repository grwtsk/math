# linearYoneda

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:da36bdf69c134196b1453892a9f6036be2925dc7b091ae3866692fe96ab80a15",
  "kind": "def",
  "lexical_name": "linearYoneda",
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
  "slug": "linearyoneda--b7347e3678fe4dfdbcae52a1",
  "source": {
    "blob": "2132c78bb3233a3c4d7ee4321e7a8c58238fde38",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 50,
    "line": 39,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Yoneda/Variant9ff377fe5fc8d09bb4284469c6eaa34746af9c81323d996ebefd21beae2a5c1b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b7347e3678fe4dfdbcae52a1554755b755f9830465a5ff41cf8aff6cc3914266",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Yoneda/Variant9ff377fe5fc8d09bb4284469c6eaa34746af9c81323d996ebefd21beae2a5c1b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:da36bdf69c134196b1453892a9f6036be2925dc7b091ae3866692fe96ab80a15`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 39–50.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def linearYoneda : C ⥤ Cᵒᵖ ⥤ ModuleCat R where
  obj X :=
    { obj := fun Y => ↧(unop Y ⟶ X)
      map := fun f => ModuleCat.ofHom (Linear.leftComp R _ f.unop) }
  map {X₁ X₂} f :=
    { app := fun Y => @ModuleCat.ofHom R _ (Y.unop ⟶ X₁) (Y.unop ⟶ X₂) _ _ _ _
        (Linear.rightComp R _ f) }

/-- The Yoneda embedding for `R`-linear categories `C`,
sending an object `Y : Cᵒᵖ` to the `ModuleCat R`-valued copresheaf on `C`,
with value on `X : C` given by `ModuleCat.of R (unop Y ⟶ X)`. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Yoneda/Variant9ff377fe5fc8d09bb4284469c6eaa34746af9c81323d996ebefd21beae2a5c1b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Yoneda/Variant9ff377fe5fc8d09bb4284469c6eaa34746af9c81323d996ebefd21beae2a5c1b.lean#L39).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2132c78bb3233a3c4d7ee4321e7a8c58238fde38` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
