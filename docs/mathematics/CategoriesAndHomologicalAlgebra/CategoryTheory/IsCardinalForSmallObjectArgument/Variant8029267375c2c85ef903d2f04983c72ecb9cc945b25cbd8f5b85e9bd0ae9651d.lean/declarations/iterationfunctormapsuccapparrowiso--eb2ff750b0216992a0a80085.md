# iterationFunctorMapSuccAppArrowIso

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7a20cd02d57e844f48579286bd2199abe6cd1e19552774428f23f5e427bc9a05",
  "kind": "def",
  "lexical_name": "iterationFunctorMapSuccAppArrowIso",
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
  "slug": "iterationfunctormapsuccapparrowiso--eb2ff750b0216992a0a80085",
  "source": {
    "blob": "f3f326277854862881e91ef9d581adc4df225d7b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 259,
    "line": 243,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/IsCardinalForSmallObjectArgument/Variant8029267375c2c85ef903d2f04983c72ecb9cc945b25cbd8f5b85e9bd0ae9651d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:eb2ff750b0216992a0a800859cfdfd549c7e3e29edb3a255e44d03fbeee11a4b",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/IsCardinalForSmallObjectArgument/Variant8029267375c2c85ef903d2f04983c72ecb9cc945b25cbd8f5b85e9bd0ae9651d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7a20cd02d57e844f48579286bd2199abe6cd1e19552774428f23f5e427bc9a05`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 243–259.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def iterationFunctorMapSuccAppArrowIso (f : Arrow C) (j : κ.ord.toType) :
    letI := hasColimitsOfShape_discrete I κ
    letI := hasPushouts I κ
    Arrow.mk (((iterationFunctor I κ).map (homOfLE (Order.le_succ j))).app f) ≅
      (ε I.homFamily).app (((iterationFunctor I κ).obj j).obj f) :=
  have := hasIterationOfShape I κ
  have := Cardinal.noMaxOrder (Fact.elim inferInstance : κ.IsRegular).aleph0_le
  Arrow.isoMk (Iso.refl _)
    (((evaluation _ _).obj f).mapIso
      ((succStruct I κ).iterationFunctorObjSuccIso j (not_isMax j))) (by
    have this := NatTrans.congr_app ((succStruct I κ).iterationFunctor_map_succ j (not_isMax j)) f
    dsimp at this
    dsimp [iterationFunctor]
    rw [id_comp, this, assoc, Iso.inv_hom_id_app, comp_id]
    dsimp [succStruct])

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/IsCardinalForSmallObjectArgument/Variant8029267375c2c85ef903d2f04983c72ecb9cc945b25cbd8f5b85e9bd0ae9651d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/IsCardinalForSmallObjectArgument/Variant8029267375c2c85ef903d2f04983c72ecb9cc945b25cbd8f5b85e9bd0ae9651d.lean#L243).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f3f326277854862881e91ef9d581adc4df225d7b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
