# preservesFiniteColimits_liftToFinset

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7ac45efbf7e8a4160251d2e7e0d2baa8b292340b9cc0de4f2dcc494ea244845c",
  "kind": "instance",
  "lexical_name": "preservesFiniteColimits_liftToFinset",
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
  "slug": "preservesfinitecolimits-lifttofinset--3d0640a5bfa6adf5a86d1f30",
  "source": {
    "blob": "880fb7a08b8bcd468abfef3340dfc876f3be0e12",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 452,
    "line": 437,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantb3d91d05ce401e9129ff08b17e11efc06d980d848a254443892760b024ceb436.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3d0640a5bfa6adf5a86d1f30253f3cbd2f131ffb57d5a79e5261ffc71240333b",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantb3d91d05ce401e9129ff08b17e11efc06d980d848a254443892760b024ceb436.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7ac45efbf7e8a4160251d2e7e0d2baa8b292340b9cc0de4f2dcc494ea244845c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 437–452.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance preservesFiniteColimits_liftToFinset : PreservesFiniteColimits (liftToFinset C α) :=
  preservesFiniteColimits_of_evaluation _ fun ⟨I⟩ =>
    letI : PreservesFiniteColimits (lim (J := Discrete I) (C := C)) :=
      preservesFiniteColimits_of_natIso HasBiproductsOfShape.colimIsoLim
    letI : PreservesFiniteColimits ((whiskeringLeft (Discrete I) (Discrete α) C).obj
        (Discrete.functor fun x ↦ ↑x)) := ⟨fun _ _ _ => inferInstance⟩
    letI : PreservesFiniteColimits ((whiskeringLeft (Discrete I) (Discrete α) C).obj
        (Discrete.functor (·.val)) ⋙ lim) :=
      comp_preservesFiniteColimits _ _
    preservesFiniteColimits_of_natIso (liftToFinsetEvaluationIso _ _ I).symm

variable (J : Type*)

/--
`HasExactLimitsOfShape (Finset (Discrete J))ᵒᵖ C` implies  `HasExactLimitsOfShape (Discrete J) C`
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantb3d91d05ce401e9129ff08b17e11efc06d980d848a254443892760b024ceb436.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantb3d91d05ce401e9129ff08b17e11efc06d980d848a254443892760b024ceb436.lean#L437).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `880fb7a08b8bcd468abfef3340dfc876f3be0e12` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
