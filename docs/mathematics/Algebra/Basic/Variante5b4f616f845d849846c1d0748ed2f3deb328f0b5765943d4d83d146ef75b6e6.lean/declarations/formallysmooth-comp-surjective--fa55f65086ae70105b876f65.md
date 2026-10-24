# FormallySmooth.comp_surjective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f95a1ed39a7b70bbce9b42220473bbd3d0ff9bb7",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 80,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e5/e5b4f616f845d849846c1d0748ed2f3deb328f0b5765943d4d83d146ef75b6e6.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3f7a99d2-17f3-91ac-26a6-96c2dd953831",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8e190800-2450-fa8c-1f83-5857b9fd5084",
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
  "slug": "formallysmooth-comp-surjective--fa55f65086ae70105b876f65",
  "source": {
    "blob": "f95a1ed39a7b70bbce9b42220473bbd3d0ff9bb7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 111,
    "line": 80,
    "path": "GRWTSK/Algebra/Basic/Variante5b4f616f845d849846c1d0748ed2f3deb328f0b5765943d4d83d146ef75b6e6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fa55f65086ae70105b876f6580d64564ab88d7254905fa2e1d871bf5c484b26b",
  "verification": {
    "reference": "docs/verification/Algebra/Basic/Variante5b4f616f845d849846c1d0748ed2f3deb328f0b5765943d4d83d146ef75b6e6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8e190800-2450-fa8c-1f83-5857b9fd5084`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 80–111.

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

[Verification target and public status](../../../../../verification/Algebra/Basic/Variante5b4f616f845d849846c1d0748ed2f3deb328f0b5765943d4d83d146ef75b6e6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Basic/Variante5b4f616f845d849846c1d0748ed2f3deb328f0b5765943d4d83d146ef75b6e6.lean#L80).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f95a1ed39a7b70bbce9b42220473bbd3d0ff9bb7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
