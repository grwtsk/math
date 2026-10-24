# liftToFinsetLimitCone

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:770c0e93ec9926d8cb57d48d25e70408e03e8bd448c5aa1d08a094b5dd121b8a",
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
  "slug": "lifttofinsetlimitcone--174d17be5bb4b395b9cb737f",
  "source": {
    "blob": "cb1a1ebe34cdb18857edac7a3126ac497d6dad7b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 210,
    "line": 186,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Filtered/Variant78488aaa75e5e93c47440eb4522d54a383a618db5eacd3d06d55a1fd1a0ecc11.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:174d17be5bb4b395b9cb737f5af5828937c02e2ecf23222c2d85040e6934ef8d",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Filtered/Variant78488aaa75e5e93c47440eb4522d54a383a618db5eacd3d06d55a1fd1a0ecc11.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:770c0e93ec9926d8cb57d48d25e70408e03e8bd448c5aa1d08a094b5dd121b8a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 186–210.

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
        convert h j using 1
        · simp [← limit.w (liftToFinsetObj F) ⟨⟨⟨Finset.singleton_subset_iff.2 hj⟩⟩⟩]
          rfl
        · simp }

/-- The converse of the construction in `liftToFinsetLimitCone`: we can form a cone on the
product of `f` whose legs are the products over the finite subsets of `α`. -/
@[simps!]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Filtered/Variant78488aaa75e5e93c47440eb4522d54a383a618db5eacd3d06d55a1fd1a0ecc11.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Filtered/Variant78488aaa75e5e93c47440eb4522d54a383a618db5eacd3d06d55a1fd1a0ecc11.lean#L186).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cb1a1ebe34cdb18857edac7a3126ac497d6dad7b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
