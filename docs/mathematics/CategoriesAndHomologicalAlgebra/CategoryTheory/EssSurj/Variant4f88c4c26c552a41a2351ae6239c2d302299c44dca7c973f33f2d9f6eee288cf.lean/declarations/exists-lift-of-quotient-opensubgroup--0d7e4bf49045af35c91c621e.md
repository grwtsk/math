# exists_lift_of_quotient_openSubgroup

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ea8bec07-934d-13c0-c5dc-1ba76efdf452",
  "kind": "lemma",
  "lexical_name": "exists_lift_of_quotient_openSubgroup",
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
  "slug": "exists-lift-of-quotient-opensubgroup--0d7e4bf49045af35c91c621e",
  "source": {
    "blob": "0fcfabe2d1396c1c6065c46909fd981163e2644d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 260,
    "line": 221,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/EssSurj/Variant4f88c4c26c552a41a2351ae6239c2d302299c44dca7c973f33f2d9f6eee288cf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0d7e4bf49045af35c91c621eeea4d5adda5c5ca09722937f8c68056c7b1253de",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/EssSurj/Variant4f88c4c26c552a41a2351ae6239c2d302299c44dca7c973f33f2d9f6eee288cf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ea8bec07-934d-13c0-c5dc-1ba76efdf452`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 221–260.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma exists_lift_of_quotient_openSubgroup (V : OpenSubgroup (Aut F)) :
    ∃ (X : C), Nonempty ((functorToAction F).obj X ≅ Aut F ⧸ₐ V.toSubgroup) := by
  obtain ⟨I, hf, hc, hi⟩ := exists_set_ker_evaluation_subset_of_isOpen F (one_mem V) V.isOpen'
  haveI (X : I) : IsConnected X.val := hc X X.property
  haveI (X : I) : Nonempty (F.obj X.val) := nonempty_fiber_of_isConnected F X
  have hn : Nonempty (F.obj <| (∏ᶜ fun X : I => X)) := nonempty_fiber_pi_of_nonempty_of_finite F _
  obtain ⟨A, f, hgal⟩ := exists_hom_from_galois_of_fiber_nonempty F (∏ᶜ fun X : I => X) hn
  obtain ⟨a⟩ := nonempty_fiber_of_isConnected F A
  let U : OpenSubgroup (Aut F) := ⟨MulAction.stabilizer (Aut F) a, stabilizer_isOpen (Aut F) a⟩
  let u := fiberIsoQuotientStabilizer A a
  have hUnormal : U.toSubgroup.Normal := stabilizer_normal_of_isGalois F A a
  have h1 (σ : Aut F) (σinU : σ ∈ U) : σ.hom.app A = 𝟙 (F.obj A) := by
    have hi : (Aut F ⧸ₐ MulAction.stabilizer (Aut F) a).ρ σ = 𝟙 _ := by
      refine FintypeCat.hom_ext _ _ (fun x ↦ ?_)
      induction' x using Quotient.inductionOn with τ
      show ⟦σ * τ⟧ = ⟦τ⟧
      apply Quotient.sound
      apply (QuotientGroup.leftRel_apply).mpr
      simp only [mul_inv_rev]
      exact Subgroup.Normal.conj_mem hUnormal _ (Subgroup.inv_mem U.toSubgroup σinU) _
    simp [← cancel_mono u.hom.hom, show σ.hom.app A ≫ u.hom.hom = _ from u.hom.comm σ, hi]
  have h2 (σ : Aut F) (σinU : σ ∈ U) : ∀ X : I, σ.hom.app X = 𝟙 (F.obj X) := by
    intro ⟨X, hX⟩
    ext (x : F.obj X)
    let p : A ⟶ X := f ≫ Pi.π (fun Z : I => (Z : C)) ⟨X, hX⟩
    have : IsConnected X := hc X hX
    obtain ⟨a, rfl⟩ := surjective_of_nonempty_fiber_of_isConnected F p x
    simp only [FintypeCat.id_apply, FunctorToFintypeCat.naturality, h1 σ σinU]
  have hUinV : (U : Set (Aut F)) ≤ V := fun u uinU ↦ hi u (h2 u uinU)
  have := V.quotient_finite_of_isOpen' (U.subgroupOf V) V.isOpen (V.subgroupOf_isOpen U U.isOpen)
  exact ⟨colimit (quotientDiag V hUnormal u),
    ⟨preservesColimitIso (functorToAction F) (quotientDiag V hUnormal u) ≪≫
    colimit.isoColimitCocone ⟨coconeQuotientDiag hUnormal u hUinV,
    coconeQuotientDiagIsColimit hUnormal u hUinV⟩⟩⟩

/--
If `X` is a finite, discrete `Aut F`-set with continuous `Aut F`-action, then
there exists `A : C` such that `F.obj A ≅ X` as `Aut F`-sets.
-/
@[stacks 0BN4 "Essential surjectivity part"]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/EssSurj/Variant4f88c4c26c552a41a2351ae6239c2d302299c44dca7c973f33f2d9f6eee288cf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/EssSurj/Variant4f88c4c26c552a41a2351ae6239c2d302299c44dca7c973f33f2d9f6eee288cf.lean#L221).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0fcfabe2d1396c1c6065c46909fd981163e2644d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
