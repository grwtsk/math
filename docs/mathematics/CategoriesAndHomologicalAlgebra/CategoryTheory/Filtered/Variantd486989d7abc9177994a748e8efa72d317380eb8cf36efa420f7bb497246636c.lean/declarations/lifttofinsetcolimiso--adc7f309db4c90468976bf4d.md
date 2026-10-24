# liftToFinsetColimIso

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d959f6373d8eb885f8da2ef0cc22c7e1bdb10ad79e89a2941b533c41ed4c1694",
  "kind": "def",
  "lexical_name": "liftToFinsetColimIso",
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
  "slug": "lifttofinsetcolimiso--adc7f309db4c90468976bf4d",
  "source": {
    "blob": "2bd6eebd84a516207361f74f451fdf7de4c3c5c3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 168,
    "line": 153,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Filtered/Variantd486989d7abc9177994a748e8efa72d317380eb8cf36efa420f7bb497246636c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:adc7f309db4c90468976bf4dd8117b68f3113dc467db0199cdc23d1c19c8994f",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Filtered/Variantd486989d7abc9177994a748e8efa72d317380eb8cf36efa420f7bb497246636c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d959f6373d8eb885f8da2ef0cc22c7e1bdb10ad79e89a2941b533c41ed4c1694`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 153–168.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def liftToFinsetColimIso : liftToFinset C α ⋙ colim ≅ colim :=
  NatIso.ofComponents
    (fun F => Iso.symm <| colimit.isoColimitCocone (liftToFinsetColimitCocone F))
    (fun β => by
      simp only [Functor.comp_obj, colim_obj, Functor.comp_map, colim_map, Iso.symm_hom]
      ext J
      simp only [liftToFinset_obj_obj, liftToFinset_map_app]
      ext j
      simp only [liftToFinset, ι_colimMap_assoc, liftToFinsetObj_obj, Discrete.functor_obj_eq_as,
        Discrete.natTrans_app, liftToFinsetColimIso_aux, liftToFinsetColimIso_aux_assoc,
        ι_colimMap])

end

/-- `liftToFinset`, when composed with the evaluation functor, results in the whiskering composed
with `colim`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Filtered/Variantd486989d7abc9177994a748e8efa72d317380eb8cf36efa420f7bb497246636c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Filtered/Variantd486989d7abc9177994a748e8efa72d317380eb8cf36efa420f7bb497246636c.lean#L153).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2bd6eebd84a516207361f74f451fdf7de4c3c5c3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
