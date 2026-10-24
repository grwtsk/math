# ZariskisMainProperty.of_algHom_polynomial

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:22c45e08-09c4-816d-0219-f37175ad22cf",
  "kind": "lemma",
  "lexical_name": "ZariskisMainProperty.of_algHom_polynomial",
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
  "slug": "zariskismainproperty-of-alghom-polynomial--bb381dc7398c5ebbc3bbd8f1",
  "source": {
    "blob": "a3f1e7dee44739a43e1e47c0de40ea175ad71eb8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 562,
    "line": 515,
    "path": "GRWTSK/Algebra/ZariskisMainTheorem/Variantfc2de014fc01f9687c59c7be65284e3ed44d917363e1636bb41b245526f7fc52.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bb381dc7398c5ebbc3bbd8f1674df8d54b5ca63a3007ee3d584a74fcf6f611d3",
  "verification": {
    "reference": "docs/verification/Algebra/ZariskisMainTheorem/Variantfc2de014fc01f9687c59c7be65284e3ed44d917363e1636bb41b245526f7fc52.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:22c45e08-09c4-816d-0219-f37175ad22cf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 515–562.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma ZariskisMainProperty.of_algHom_polynomial
    (p : Ideal S) [p.IsPrime] [Algebra.WeaklyQuasiFiniteAt R p]
    (f : R[X] →ₐ[R] S) (hf : f.Finite) : ZariskisMainProperty R p := by
  wlog H : integralClosure R S = ⊥
  · let inst : Algebra (integralClosure R S) (Localization.AtPrime p) :=
      OreLocalization.instAlgebra
    have inst : Algebra.WeaklyQuasiFiniteAt (integralClosure R S) p :=
      .of_restrictScalars R (integralClosure R S) _
    refine .restrictScalars (this p (aeval (f X)) ?_ (integralClosure_idem (R := R)))
    refine RingHom.Finite.of_comp_finite (f := mapRingHom (algebraMap R _)) ?_
    convert! (show f.toRingHom.Finite from hf)
    ext <;> simp [show ∀ x, f (C x) = algebraMap _ _ x from f.commutes]
  replace hf : ¬ conductor R (f X) ≤ p := by
    intro hp
    rw [← ‹p.IsPrime›.isRadical.radical_le_iff] at hp
    set J := (conductor R (f X)).radical
    have inst : (p.map (Ideal.Quotient.mk J)).IsPrime :=
      Ideal.map_isPrime_of_surjective Ideal.Quotient.mk_surjective (by simpa using hp)
    have inst : IsReduced (S ⧸ J) :=
        (Ideal.isRadical_iff_quotient_reduced _).mp (Ideal.radical_isRadical _)
    have inst : WeaklyQuasiFiniteAt R (p.map (Ideal.Quotient.mk J)) := by
      refine .of_surjectiveOnStalks p _ (Ideal.Quotient.mkₐ R _)
        (RingHom.surjectiveOnStalks_of_surjective Ideal.Quotient.mk_surjective)
        ((Ideal.comap_map_of_surjective _ Ideal.Quotient.mk_surjective p).trans ?_).symm
      simpa [← RingHom.ker_eq_comap_bot]
    refine not_isStronglyTranscendental_of_weaklyQuasiFiniteAt ?_ (p.map (Ideal.Quotient.mk J))
      (isStronglyTranscendental_mk_radical_conductor H (f X) (by convert! hf; ext; simp))
    convert! (RingHom.Finite.of_surjective _ (Ideal.Quotient.mk_surjective (I := J))).comp hf
      using 1
    ext <;> simp [show ∀ x, f (C x) = algebraMap _ _ x from f.commutes, J]
  obtain ⟨x, hx, hxp⟩ := SetLike.not_le_iff_exists.mp hf
  replace hx (a : _) : x * a ∈ f.range := by simpa [← AlgHom.map_adjoin_singleton f] using hx a
  refine ZariskisMainProperty.trans (S := f.range) _ ?_ ?_
  · have : Algebra.WeaklyQuasiFiniteAt R (p.under f.range) := by
      let := Localization.AtPrime.algebraOfLiesOver (p.under f.range) p
      let e : Localization.AtPrime (p.under f.range) ≃ₐ[R] Localization.AtPrime p :=
        .ofBijective (IsScalarTower.toAlgHom _ _ _)
          (Localization.localRingHom_bijective_of_not_conductor_le hf
            (by simp [← AlgHom.map_adjoin_singleton f]) _)
      exact .of_algHom_localization _ _ e.symm.toAlgHom e.symm.surjective
    refine .of_adjoin_eq_top _ ⟨f X, X, rfl⟩ ?_
    simp [← (Subalgebra.map_injective (f := Subalgebra.val _) Subtype.val_injective).eq_iff,
      ← AlgHom.map_adjoin_singleton f, Subalgebra.range_val]
  · refine ⟨⟨x, by simpa using hx 1⟩, hxp, top_le_iff.mp fun s _ ↦ ⟨_, ⟨1, rfl⟩, ?_⟩⟩
    simpa [Algebra.mem_bot] using hx s

open scoped Pointwise in
-- Subsumed by `ZariskisMainProperty.of_finiteType`.
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/ZariskisMainTheorem/Variantfc2de014fc01f9687c59c7be65284e3ed44d917363e1636bb41b245526f7fc52.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/ZariskisMainTheorem/Variantfc2de014fc01f9687c59c7be65284e3ed44d917363e1636bb41b245526f7fc52.lean#L515).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a3f1e7dee44739a43e1e47c0de40ea175ad71eb8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
