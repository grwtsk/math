# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:03a948a2442094cd80bac20bc2c9a210a354895523d45a65d0d29dd477842529",
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
  "slug": "instance--9decb112c4ef445c7e92683b",
  "source": {
    "blob": "e9ec57a4bd87af95d314aa6a02d0bc7966af4bf5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 101,
    "line": 76,
    "path": "GRWTSK/Algebra/FiniteType/Variant7ef6836d4efcbbe856a2ce5521f49af2f1f5197b146628facf68f096e65eb564.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9decb112c4ef445c7e92683b969714b0ebac1d21044c26bb60658d414a94a2da",
  "verification": {
    "reference": "docs/verification/Algebra/FiniteType/Variant7ef6836d4efcbbe856a2ce5521f49af2f1f5197b146628facf68f096e65eb564.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:03a948a2442094cd80bac20bc2c9a210a354895523d45a65d0d29dd477842529`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 76–101.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance : EssentiallySmall.{u} (FGAlgCat.{v} R) := by
  suffices h : EssentiallySmall.{u} (FGAlgCat.{max u v} R) by
    exact essentiallySmall_of_fully_faithful (FGAlgCat.uliftFunctor R)
  rw [essentiallySmall_iff]
  refine ⟨?_, ?_⟩
  · let f := toSkeleton ∘ (FGAlgCat.uliftFunctor R).obj ∘ FGAlgCatSkeleton.eval R
    refine small_of_surjective (f := f) fun A ↦ ?_
    simp only [Function.comp_apply, f, toSkeleton_eq_iff]
    obtain ⟨P, ⟨e⟩⟩ := Algebra.FiniteType.exists_fgAlgCatSkeleton R
      ((fromSkeleton (FGAlgCat R)).obj A).obj
    exact ⟨P, ⟨ObjectProperty.isoMk _ (CommAlgCat.isoMk <| ULift.algEquiv.trans e.symm)⟩⟩
  · refine ⟨fun A B ↦ ?_⟩
    obtain ⟨PA, ⟨eA⟩⟩ := Algebra.FiniteType.exists_fgAlgCatSkeleton R A.obj
    obtain ⟨PB, ⟨eB⟩⟩ := Algebra.FiniteType.exists_fgAlgCatSkeleton R B.obj
    let f (g : A ⟶ B) (x : PA.eval.obj) : PB.eval.obj := eB (g.hom (eA.symm x))
    refine small_of_injective (f := f) fun u v h ↦ ?_
    ext a
    obtain ⟨a, rfl⟩ := eA.symm.surjective a
    exact eB.injective (congr_fun h a)

section Under

open RingHom

/-- The category of finitely generated `R`-algebras is equivalent to the category of
finite type ring homomorphisms from `R`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/FiniteType/Variant7ef6836d4efcbbe856a2ce5521f49af2f1f5197b146628facf68f096e65eb564.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/FiniteType/Variant7ef6836d4efcbbe856a2ce5521f49af2f1f5197b146628facf68f096e65eb564.lean#L76).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e9ec57a4bd87af95d314aa6a02d0bc7966af4bf5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
