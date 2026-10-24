# lifting

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d0847f76-0011-613e-552a-750ea4d30acb",
  "kind": "lemma",
  "lexical_name": "lifting",
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
  "slug": "lifting--1dd2fae5234ed9deaef9b686",
  "source": {
    "blob": "6d04b5cee752779a82d782fd343e5da0dbd49387",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 168,
    "line": 106,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Injective/Variantaba7de9671cb166eeeeeb449122fa9ac0e0b04d66a8a4d5c9dbc0a28bc328914.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1dd2fae5234ed9deaef9b6865ed866cb2555e7798714630e172e4881cceee646",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Injective/Variantaba7de9671cb166eeeeeb449122fa9ac0e0b04d66a8a4d5c9dbc0a28bc328914.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d0847f76-0011-613e-552a-750ea4d30acb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 106–168.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma lifting {A B X Y : CochainComplex.Plus C} (i : A ⟶ B) (p : X ⟶ Y)
    [Mono i] [Fibration p] (hip : WeakEquivalence i ∨ WeakEquivalence p) :
    HasLiftingProperty i p where
  sq_hasLift {t b} sq := by
    /- The proof is similar in both cases (whether `i` or `p` is a quasi-isomorphism).
    We first transform the variables so as to get a commutative square in `CochainComplex C ℤ`
    instead of the full subcategory `CochainComplex.Plus C`. -/
    obtain ⟨A, hA⟩ := A
    obtain ⟨B, hB⟩ := B
    obtain ⟨X, hX⟩ := X
    obtain ⟨Y, hY⟩ := Y
    have hi : Mono i.hom := inferInstance
    have hp : degreewiseEpiWithInjectiveKernel p.hom :=
      (fibration_iff p).1 inferInstance
    obtain ⟨i, rfl⟩ := ObjectProperty.homMk_surjective i
    obtain ⟨p, rfl⟩ := ObjectProperty.homMk_surjective p
    obtain ⟨t, rfl⟩ := ObjectProperty.homMk_surjective t
    obtain ⟨b, rfl⟩ := ObjectProperty.homMk_surjective b
    dsimp at i p t b hp hi
    have hip : QuasiIso i ∨ QuasiIso p := by
      simpa only [weakEquivalence_iff] using! hip
    replace sq : CommSq t i p b := sq.map (ObjectProperty.ι _)
    suffices sq.HasLift from ⟨⟨{ l := ObjectProperty.homMk sq.lift }⟩⟩
    have sq' (n : ℤ) : CommSq (t.f n) (i.f n) (p.f n) (b.f n) :=
      (sq.map (HomologicalComplex.eval _ _ n))
    /- The commutative square in `C` obtained by evaluating in a degree `n`
    admits a lifting because `i.f n` is a monomorphism and `p.f n` is
    an epimorphism with injective kernel. -/
    have (n : ℤ) : (sq' n).HasLift := by
      have := (hp n).hasLiftingProperty (i.f n)
      infer_instance
    /- In order to obtain a lifting in the original square, the obstruction
    lies in a cocycle `β : Cocycle (cokernel i) (kernel p) 1`. Thanks to the
    lemma `CochainComplex.Lifting.hasLift`, it suffices to show that `β`
    is a coboundary. -/
    let β : Cocycle (cokernel i) (kernel p) 1 :=
      Lifting.cocycle₁ sq (fun n ↦ { l := (sq' n).lift })
        (cokernelIsCokernel i) (kernelIsKernel p) (hπ := by simp) (hι := by simp)
    have (n : ℤ) : Injective ((kernel p).X n) :=
      Injective.of_iso
        (asIso (kernelComparison p (HomologicalComplex.eval _ _ n))).symm (hp n).2
    have : (kernel p).IsKInjective := by
      obtain ⟨d, hd⟩ := hX
      have : (kernel p).IsStrictlyGE d := by
        rw [isStrictlyGE_iff]
        intro i hi
        rw [IsZero.iff_id_eq_zero, ← cancel_mono ((kernel.ι p).f i)]
        apply (X.isZero_of_isStrictlyGE d i).eq_of_tgt
      exact isKInjective_of_injective _ d
    /- The cocycle `β` is a coboundary when `i` or `p` is a quasi-isomorphism. -/
    obtain ⟨α, hα⟩ : ∃ (α : Cochain (cokernel i) (kernel p) 0), δ 0 1 α = β.1 := by
      cases hip
      · refine IsKInjective.eq_δ_of_cocycle β ?_ 0 (by simp)
        have : (ShortComplex.mk _ _ (cokernel.condition i)).ShortExact :=
          { exact := ShortComplex.exact_cokernel i }
        exact this.acyclic_X₃ (by dsimp; infer_instance)
      · refine IsKInjective.eq_δ_of_cocycle' β ?_ 0 (by simp)
        have := hp.epi
        have : (ShortComplex.mk _ _ (kernel.condition p)).ShortExact :=
          { exact := ShortComplex.exact_kernel p }
        exact this.acyclic_X₁ (by dsimp; infer_instance)
    exact Lifting.hasLift sq _ (cokernelIsCokernel _) (kernelIsKernel _) α hα

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Injective/Variantaba7de9671cb166eeeeeb449122fa9ac0e0b04d66a8a4d5c9dbc0a28bc328914.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Injective/Variantaba7de9671cb166eeeeeb449122fa9ac0e0b04d66a8a4d5c9dbc0a28bc328914.lean#L106).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6d04b5cee752779a82d782fd343e5da0dbd49387` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
