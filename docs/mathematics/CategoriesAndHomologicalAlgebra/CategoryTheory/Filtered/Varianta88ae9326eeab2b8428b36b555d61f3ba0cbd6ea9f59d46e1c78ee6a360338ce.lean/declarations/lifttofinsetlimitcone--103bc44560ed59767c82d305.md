# liftToFinsetLimitCone

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a19c96788eb518a5cf93b6680389ef656f0073e8d42cc65a65983cf7126f3f6f",
  "kind": "def",
  "lexical_name": "liftToFinsetLimitCone",
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
  "slug": "lifttofinsetlimitcone--103bc44560ed59767c82d305",
  "source": {
    "blob": "3bdaa597e27cf774ff3b72e03384aca2164b75f8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 233,
    "line": 208,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Filtered/Varianta88ae9326eeab2b8428b36b555d61f3ba0cbd6ea9f59d46e1c78ee6a360338ce.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:103bc44560ed59767c82d305a82d3f14fb12f7659f0568091410b48de2ebd6ea",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Filtered/Varianta88ae9326eeab2b8428b36b555d61f3ba0cbd6ea9f59d46e1c78ee6a360338ce.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a19c96788eb518a5cf93b6680389ef656f0073e8d42cc65a65983cf7126f3f6f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 208–233.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def liftToFinsetLimitCone [HasLimitsOfShape (Finset (Discrete α))ᵒᵖ C]
    (F : Discrete α ⥤ C) : LimitCone F where
  cone :=
    { pt := limit (liftToFinsetObj F)
      π := Discrete.natTrans fun j =>
        limit.π (liftToFinsetObj F) ⟨{j}⟩ ≫ Pi.π _ (⟨j, by simp⟩ : ({j} : Finset (Discrete α))) }
  isLimit :=
    { lift := fun s =>
        limit.lift (liftToFinsetObj F)
          { pt := s.pt
            π := { app := fun _ => Pi.lift fun x => s.π.app x } }
      uniq := fun s m h => by
        apply limit.hom_ext
        rintro t
        dsimp [liftToFinsetObj]
        apply limit.hom_ext
        rintro ⟨⟨j, hj⟩⟩
        convert! h j using 1
        · simp [← limit.w (liftToFinsetObj F) ⟨⟨⟨Finset.singleton_subset_iff.2 hj⟩⟩⟩]
          rfl
        · simp }

set_option backward.defeqAttrib.useBackward true in
/-- The converse of the construction in `liftToFinsetLimitCone`: we can form a cone on the
product of `f` whose legs are the products over the finite subsets of `α`. -/
@[simps!]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Filtered/Varianta88ae9326eeab2b8428b36b555d61f3ba0cbd6ea9f59d46e1c78ee6a360338ce.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Filtered/Varianta88ae9326eeab2b8428b36b555d61f3ba0cbd6ea9f59d46e1c78ee6a360338ce.lean#L208).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3bdaa597e27cf774ff3b72e03384aca2164b75f8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
