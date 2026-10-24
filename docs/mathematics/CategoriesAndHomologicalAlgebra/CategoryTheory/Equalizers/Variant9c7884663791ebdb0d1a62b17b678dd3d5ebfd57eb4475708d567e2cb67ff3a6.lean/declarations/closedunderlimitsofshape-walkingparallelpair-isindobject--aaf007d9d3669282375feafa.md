# closedUnderLimitsOfShape_walkingParallelPair_isIndObject

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9d2575c6-b973-0903-49af-26e0c8aee192",
  "kind": "theorem",
  "lexical_name": "closedUnderLimitsOfShape_walkingParallelPair_isIndObject",
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
  "slug": "closedunderlimitsofshape-walkingparallelpair-isindobject--aaf007d9d3669282375feafa",
  "source": {
    "blob": "89596c6b951005f4a80f0bff50438c31dfccc0c2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 87,
    "line": 74,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizers/Variant9c7884663791ebdb0d1a62b17b678dd3d5ebfd57eb4475708d567e2cb67ff3a6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:aaf007d9d3669282375feafa8044ea7ef7a882389be468bd3cc11ea49da2f949",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizers/Variant9c7884663791ebdb0d1a62b17b678dd3d5ebfd57eb4475708d567e2cb67ff3a6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9d2575c6-b973-0903-49af-26e0c8aee192`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 74–87.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem closedUnderLimitsOfShape_walkingParallelPair_isIndObject [HasEqualizers C] :
    ClosedUnderLimitsOfShape WalkingParallelPair (IsIndObject (C := C)) := by
  apply closedUnderLimitsOfShape_of_limit
  intro F hF h
  obtain ⟨P⟩ := nonempty_indParallelPairPresentation (h WalkingParallelPair.zero)
    (h WalkingParallelPair.one) (F.map WalkingParallelPairHom.left)
    (F.map WalkingParallelPairHom.right)
  exact IsIndObject.map
    (HasLimit.isoOfNatIso (P.parallelPairIsoParallelPairCompYoneda.symm ≪≫
      (diagramIsoParallelPair _).symm)).hom
    (isIndObject_limit_comp_yoneda_comp_colim (parallelPair P.φ P.ψ)
      (fun i => isIndObject_limit_comp_yoneda _))

end CategoryTheory.Limits
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizers/Variant9c7884663791ebdb0d1a62b17b678dd3d5ebfd57eb4475708d567e2cb67ff3a6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizers/Variant9c7884663791ebdb0d1a62b17b678dd3d5ebfd57eb4475708d567e2cb67ff3a6.lean#L74).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `89596c6b951005f4a80f0bff50438c31dfccc0c2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
