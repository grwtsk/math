# dgoToHomologicalComplex

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:299af6cdc6fc7606f41ebc9f2bba4d909b46bb24ea2fbbedd537fe22a33aef11",
  "kind": "def",
  "lexical_name": "dgoToHomologicalComplex",
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
  "slug": "dgotohomologicalcomplex--f617a90e0ec50a2046707c5d",
  "source": {
    "blob": "f131f2892167e7d31fe0efced05a044254bd164f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 103,
    "line": 82,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/DifferentialObject/Variant23f7b079468d05b6401333c202fb35cdaca3a4093865260b177c8327d99137ad.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f617a90e0ec50a2046707c5d9fd5938400ba0d47a558fd7ec87068fbe8b36c13",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/DifferentialObject/Variant23f7b079468d05b6401333c202fb35cdaca3a4093865260b177c8327d99137ad.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:299af6cdc6fc7606f41ebc9f2bba4d909b46bb24ea2fbbedd537fe22a33aef11`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 82–103.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def dgoToHomologicalComplex :
    DifferentialObject ℤ (GradedObjectWithShift b V) ⥤
      HomologicalComplex V (ComplexShape.up' b) where
  obj X :=
    { X := fun i => X.obj i
      d := fun i j =>
        if h : i + b = j then X.d i ≫ X.objEqToHom (show i + (1 : ℤ) • b = j by simp [h]) else 0
      shape := fun i j w => by dsimp at w; convert! dite_eq_right w
      d_comp_d' := fun i j k hij hjk => by
        dsimp at hij hjk; subst hij hjk
        simp [objEqToHom_d_assoc] }
  map {X Y} f :=
    { f := f.f
      comm' := fun i j h => by
        dsimp at h ⊢
        subst h
        have : f.f i ≫ Y.d i = X.d i ≫ f.f _ := (congr_fun f.comm i).symm
        simp only [dite_true, Category.assoc, eqToHom_f', reassoc_of% this] }

/-- The functor from homological complexes to differential graded objects.
-/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/DifferentialObject/Variant23f7b079468d05b6401333c202fb35cdaca3a4093865260b177c8327d99137ad.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/DifferentialObject/Variant23f7b079468d05b6401333c202fb35cdaca3a4093865260b177c8327d99137ad.lean#L82).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f131f2892167e7d31fe0efced05a044254bd164f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
