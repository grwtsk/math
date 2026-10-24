# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7ac191b401cacee077414c1c57358eeaeaf1def028c5b1344b583e42356f850a",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--fcbb195e705db8403dbca562",
  "source": {
    "blob": "fe47859bf7e4f539668937dc4436be28ce7c87aa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 531,
    "line": 521,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Opens/Varianta1a7977c66525c8eab25d4adf11bcb9914237d57c8cd9af7896571445adee333.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:fcbb195e705db8403dbca5621cefc06f42e7663aa1c2619411ee1331987b02be",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Opens/Varianta1a7977c66525c8eab25d4adf11bcb9914237d57c8cd9af7896571445adee333.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7ac191b401cacee077414c1c57358eeaeaf1def028c5b1344b583e42356f850a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 521–531.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance {X Y : TopCat.{u}} (f : X ⟶ Y) (hf : Topology.IsOpenEmbedding f) {ι : Type*}
    [Nonempty ι] [Finite ι] :
    PreservesLimitsOfShape (Discrete ι) hf.functor := by
  apply +allowSynthFailures preservesLimitsOfShape_of_discrete
  intro g
  refine preservesLimit_of_preserves_limit_cone (Preorder.isLimitIInf g) ?_
  refine (Limits.Fan.isLimitMapConeEquiv _ _ _).symm (Preorder.isLimitOfIsGLB _ _ ?_)
  simp only [Discrete.range_functor, homOfLE_leOfHom, Fan.mk_pt, hf.functor_obj_iInf]
  apply isGLB_iInf

end TopologicalSpace.Opens
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Opens/Varianta1a7977c66525c8eab25d4adf11bcb9914237d57c8cd9af7896571445adee333.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Opens/Varianta1a7977c66525c8eab25d4adf11bcb9914237d57c8cd9af7896571445adee333.lean#L521).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fe47859bf7e4f539668937dc4436be28ce7c87aa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
