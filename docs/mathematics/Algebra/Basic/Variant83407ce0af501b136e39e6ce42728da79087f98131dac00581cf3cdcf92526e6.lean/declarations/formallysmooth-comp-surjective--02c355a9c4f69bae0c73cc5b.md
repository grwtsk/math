# FormallySmooth.comp_surjective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8a4d21a9-fe6f-0d39-319c-3be4534b8c4c",
  "kind": "lemma",
  "lexical_name": "FormallySmooth.comp_surjective",
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
  "slug": "formallysmooth-comp-surjective--02c355a9c4f69bae0c73cc5b",
  "source": {
    "blob": "a9eba332399ccf5d9ec775d2cfd02b4795105945",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 119,
    "line": 88,
    "path": "GRWTSK/Algebra/Basic/Variant83407ce0af501b136e39e6ce42728da79087f98131dac00581cf3cdcf92526e6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:02c355a9c4f69bae0c73cc5b56598f22dfd46a47d465b39bc6341091d4a776d0",
  "verification": {
    "reference": "docs/verification/Algebra/Basic/Variant83407ce0af501b136e39e6ce42728da79087f98131dac00581cf3cdcf92526e6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8a4d21a9-fe6f-0d39-319c-3be4534b8c4c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 88–119.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma FormallySmooth.comp_surjective [FormallySmooth R A] (I : Ideal B) (hI : I ^ 2 = ⊥) :
    Function.Surjective ((Ideal.Quotient.mkₐ R I).comp : (A →ₐ[R] B) → A →ₐ[R] B ⧸ I) := by
  intro f
  let P : Algebra.Generators R A A := Generators.self R A
  have hP : Function.Injective P.toExtension.cotangentComplex := by
    rw [← LinearMap.ker_eq_bot, ← Submodule.subsingleton_iff_eq_bot]
    exact FormallySmooth.subsingleton_h1Cotangent
  obtain ⟨l, hl⟩ := ((P.toExtension.exact_cotangentComplex_toKaehler.split_tfae'.out 1 2 rfl rfl).mp
    ⟨P.toExtension.subsingleton_h1Cotangent.mp FormallySmooth.subsingleton_h1Cotangent,
      Module.projective_lifting_property _ _ P.toExtension.toKaehler_surjective⟩).2
  obtain ⟨g, hg⟩ := retractionKerCotangentToTensorEquivSection (R := R) P.algebraMap_surjective
    ⟨⟨⟨Cotangent.val, by simp⟩, by simpa using! Cotangent.val_smul' (P := P.toExtension)⟩ ∘ₗ
      l.restrictScalars P.toExtension.Ring, LinearMap.ext fun x ↦ congr($hl x)⟩
  let σ := Function.surjInv (f := algebraMap B (B ⧸ I)) Ideal.Quotient.mk_surjective
  have H (x : P.Ring) : ↑(aeval (σ ∘ f) x) = f (algebraMap _ A x) := by
    rw [← Ideal.Quotient.algebraMap_eq, ← aeval_algebraMap_apply, P.algebraMap_eq,
      AlgHom.coe_toRingHom, comp_aeval_apply, ← Function.comp_assoc, Function.comp_surjInv]
    simp [P]
  let l : P.Ring ⧸ (RingHom.ker (algebraMap P.Ring A)) ^ 2 →ₐ[R] B :=
    Ideal.Quotient.liftₐ _ (aeval (σ ∘ f)) <|
      have : RingHom.ker (algebraMap P.Ring A) ≤ I.comap (aeval (σ ∘ f)).toRingHom := fun x hx ↦ by
        simp_all [← Ideal.Quotient.eq_zero_iff_mem (I := I), -map_aeval]
      show RingHom.ker _ ^ 2 ≤ RingHom.ker _ from
        (Ideal.pow_right_mono this 2).trans ((Ideal.le_comap_pow _ _).trans_eq (hI ▸ rfl))
  have : f.comp (IsScalarTower.toAlgHom R P.Ring A).kerSquareLift =
      (Ideal.Quotient.mkₐ R _).comp l := by
    refine Ideal.Quotient.algHom_ext _ (MvPolynomial.algHom_ext fun i ↦ ?_)
    change f (algebraMap P.Ring A (.X i)) = algebraMap _ _ (MvPolynomial.aeval (σ ∘ f) (.X i))
    simpa using! (Function.surjInv_eq _ _).symm
  exact ⟨l.comp g, by rw [← AlgHom.comp_assoc, ← this, AlgHom.comp_assoc, hg, AlgHom.comp_id]⟩

set_option backward.defeqAttrib.useBackward true in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Basic/Variant83407ce0af501b136e39e6ce42728da79087f98131dac00581cf3cdcf92526e6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Basic/Variant83407ce0af501b136e39e6ce42728da79087f98131dac00581cf3cdcf92526e6.lean#L88).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a9eba332399ccf5d9ec775d2cfd02b4795105945` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
