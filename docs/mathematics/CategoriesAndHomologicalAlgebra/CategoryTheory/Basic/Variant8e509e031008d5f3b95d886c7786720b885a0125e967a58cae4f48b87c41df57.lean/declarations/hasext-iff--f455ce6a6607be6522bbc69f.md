# hasExt_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d413d915-c7b1-3bb4-407d-2b92eb1b0e38",
  "kind": "lemma",
  "lexical_name": "hasExt_iff",
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
  "slug": "hasext-iff--f455ce6a6607be6522bbc69f",
  "source": {
    "blob": "3bcd760385c3e60e44e5cf94a40f56f6ee995a16",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 91,
    "line": 63,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant8e509e031008d5f3b95d886c7786720b885a0125e967a58cae4f48b87c41df57.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f455ce6a6607be6522bbc69fdcdd51eb677139554c38d7edbe274b1accbbee37",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant8e509e031008d5f3b95d886c7786720b885a0125e967a58cae4f48b87c41df57.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d413d915-c7b1-3bb4-407d-2b92eb1b0e38`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 63–91.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma hasExt_iff [HasDerivedCategory.{w'} C] :
    HasExt.{w} C ↔ ∀ (X Y : C) (n : ℤ) (_ : 0 ≤ n), Small.{w}
      ((singleFunctor C 0).obj X ⟶
        (((singleFunctor C 0).obj Y)⟦n⟧)) := by
  dsimp [HasExt]
  simp only [hasSmallLocalizedShiftedHom_iff _ _ Q]
  constructor
  · intro h X Y n hn
    exact (small_congr ((shiftFunctorZero _ ℤ).app
      ((singleFunctor C 0).obj X)).homFromEquiv).1 (h X Y 0 n)
  · intro h X Y a b
    obtain hab | hab := le_or_lt a b
    · refine (small_congr ?_).1 (h X Y (b - a) (by simpa))
      exact (Functor.FullyFaithful.ofFullyFaithful
        (shiftFunctor _ a)).homEquiv.trans
        ((shiftFunctorAdd' _ _ _ _ (Int.sub_add_cancel b a)).symm.app _).homToEquiv
    · suffices Subsingleton ((Q.obj ((CochainComplex.singleFunctor C 0).obj X))⟦a⟧ ⟶
          (Q.obj ((CochainComplex.singleFunctor C 0).obj Y))⟦b⟧) from inferInstance
      constructor
      intro x y
      rw [← cancel_mono ((Q.commShiftIso b).inv.app _),
        ← cancel_epi ((Q.commShiftIso a).hom.app _)]
      have : (((CochainComplex.singleFunctor C 0).obj X)⟦a⟧).IsStrictlyLE (-a) :=
        CochainComplex.isStrictlyLE_shift _ 0 _ _ (by omega)
      have : (((CochainComplex.singleFunctor C 0).obj Y)⟦b⟧).IsStrictlyGE (-b) :=
        CochainComplex.isStrictlyGE_shift _ 0 _ _ (by omega)
      apply (subsingleton_hom_of_isStrictlyLE_of_isStrictlyGE _ _ (-a) (-b) (by
        omega)).elim

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant8e509e031008d5f3b95d886c7786720b885a0125e967a58cae4f48b87c41df57.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant8e509e031008d5f3b95d886c7786720b885a0125e967a58cae4f48b87c41df57.lean#L63).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3bcd760385c3e60e44e5cf94a40f56f6ee995a16` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
