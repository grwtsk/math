# Algebra.exists_etale_isIdempotentElem_forall_liesOver_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2029da6b-6907-1286-a353-1ff120594502",
  "kind": "lemma",
  "lexical_name": "Algebra.exists_etale_isIdempotentElem_forall_liesOver_eq",
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
  "slug": "algebra-exists-etale-isidempotentelem-forall-liesover-eq--52dfb3b0f646d7e2aef24549",
  "source": {
    "blob": "9880cf7adeb55b07f7e181ed922db4e8c66ee794",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 454,
    "line": 385,
    "path": "GRWTSK/Algebra/QuasiFinite/Variant7854f388a050eeb93e21a3d9893814ec802928bca52e7562a960047f70fed1d1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:52dfb3b0f646d7e2aef2454970647035ff688f9ba7a5432dd5372ca64470387c",
  "verification": {
    "reference": "docs/verification/Algebra/QuasiFinite/Variant7854f388a050eeb93e21a3d9893814ec802928bca52e7562a960047f70fed1d1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2029da6b-6907-1286-a353-1ff120594502`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 385–454.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Algebra.exists_etale_isIdempotentElem_forall_liesOver_eq
    {R : Type u} {S : Type v} [CommRing R] [CommRing S] [Algebra R S] [Algebra.FiniteType R S]
    (p : Ideal R) [p.IsPrime] (q : Ideal S) [q.IsPrime] [q.LiesOver p] [Algebra.QuasiFiniteAt R q] :
    ∃ (R' : Type u) (_ : CommRing R') (_ : Algebra R R') (_ : Algebra.Etale R R') (P : Ideal R')
      (_ : P.IsPrime) (_ : P.LiesOver p) (e : R' ⊗[R] S) (_ : IsIdempotentElem e)
      (P' : Ideal (R' ⊗[R] S)) (_ : P'.IsPrime) (_ : P'.LiesOver P), P'.comap
        Algebra.TensorProduct.includeRight.toRingHom = q ∧ e ∉ P' ∧
      Function.Bijective (Ideal.ResidueField.mapₐ p P (Algebra.ofId _ _) (P.over_def p)) ∧
      Module.Finite R' (Localization.Away e) ∧
      ∀ P'' : Ideal (R' ⊗[R] S), P''.IsPrime → P''.LiesOver P → e ∉ P'' → P'' = P' := by
  obtain ⟨R', _, _, _, P, _, _, e, he, e₀, he₀, he₀e, P', _, _, hP'q, heP', hpP, H', H⟩ :=
    exists_etale_isIdempotentElem_forall_liesOver_eq_aux p q
  obtain ⟨g, hgq, hg⟩ := Algebra.ZariskisMainProperty.of_finiteType (R := R) q
  obtain ⟨f, hfP, hf⟩ := exists_etale_isIdempotentElem_forall_liesOver_eq_aux₂ q P e e₀ he₀
    he₀e P' hP'q H' g hgq hg.2
  let Pf := P.map (algebraMap _ (Localization.Away f))
  have : Pf.IsPrime := IsLocalization.isPrime_of_isPrime_disjoint (.powers f) _ _ ‹_› (by
    rwa [Ideal.disjoint_powers_iff_notMem_of_isPrime])
  have : Pf.LiesOver P := IsLocalization.liesOver_map_of_isPrime_disjoint (.powers f) _ (by
    rwa [Ideal.disjoint_powers_iff_notMem _ (Ideal.IsPrime.isRadical ‹_›)])
  let φ : R' ⊗[R] S →ₐ[R'] Localization.Away f ⊗[R] S :=
    Algebra.TensorProduct.map (Algebra.ofId _ _) (.id _ _)
  let := φ.toAlgebra
  let := IsScalarTower.of_algebraMap_eq' φ.comp_algebraMap.symm
  have : IsLocalization.Away (R := R' ⊗[R] S) (f ⊗ₜ 1) (Localization.Away f ⊗[R] S) := by
    have : .powers (f ⊗ₜ[R] 1) = Algebra.algebraMapSubmonoid (R' ⊗[R] S) (.powers f) := by simp
    rw [IsLocalization.Away, this]
    refine IsLocalization.tensorProduct_tensorProduct _ _ _ _ ?_
    ext; simp [RingHom.algebraMap_toAlgebra, φ]
  let P'f := P'.map (algebraMap _ (Localization.Away f ⊗[R] S))
  have hP'f : Disjoint (Submonoid.powers (f ⊗ₜ 1 : R' ⊗[R] S) : Set (R' ⊗[R] S)) ↑P' := by
    rw [Ideal.disjoint_powers_iff_notMem_of_isPrime]
    change f ∉ P'.under _
    rwa [← P'.over_def P]
  have : P'f.IsPrime := IsLocalization.isPrime_of_isPrime_disjoint _ _ _ ‹_› hP'f
  have : P'f.LiesOver P' := IsLocalization.liesOver_map_of_isPrime_disjoint _ _ hP'f
  have : P'f.LiesOver P := .trans _ P' _
  have : P'f.LiesOver Pf := ⟨congr($(PrimeSpectrum.localization_comap_injective
      (Localization.Away f) (.powers f) (a₁ := ⟨Pf, ‹_›⟩)
      (a₂ := ⟨P'f.under _, inferInstance⟩)
      (PrimeSpectrum.ext ((Pf.over_def P).symm.trans (P'f.over_def P)))).1)⟩
  refine ⟨Localization.Away f, inferInstance, inferInstance, inferInstance, Pf, inferInstance,
    .trans _ P _, Algebra.TensorProduct.map (Algebra.ofId _ _) (.id _ _) e,
    he.map _, P'f, ‹_›, ‹_›, ?_, ?_, ?_, hf, ?_⟩
  · rw [← hP'q, P'f.over_def P', Ideal.under, Ideal.comap_comap]
    congr
    ext; simp [RingHom.algebraMap_toAlgebra, φ]
  · change e ∉ P'f.under _
    rwa [← P'f.over_def P']
  · suffices Function.Bijective ⇑(Ideal.ResidueField.mapₐ P Pf
        (IsScalarTower.toAlgHom R R' (Localization.Away f)) (Pf.over_def P)) by
      convert! this.comp hpP; rw [← AlgHom.coe_comp]; congr; ext
    exact (RingHom.surjectiveOnStalks_of_isLocalization (.powers f)
      _).residueFieldMap_bijective _ _ _
  · intro P'' _ _ hP''
    have : P''.LiesOver P := .trans _ Pf _
    refine congr($(PrimeSpectrum.localization_comap_injective (R := R' ⊗[R] S)
      (Localization.Away f ⊗[R] S) (.powers (f ⊗ₜ 1)) (a₁ := ⟨P'', ‹_›⟩)
      (a₂ := ⟨P'f, ‹_›⟩) (PrimeSpectrum.ext ?_)).1)
    exact (H (P''.under _) inferInstance inferInstance hP'').trans (P'f.over_def P')

open TensorProduct

attribute [local instance] RingHom.ker_isPrime

open scoped nonZeroDivisors

attribute [local instance] Localization.AtPrime.algebraOfLiesOver

/-- A key induction step of `exists_etale_completeOrthogonalIdempotents_forall_liesOver_eq`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/QuasiFinite/Variant7854f388a050eeb93e21a3d9893814ec802928bca52e7562a960047f70fed1d1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/QuasiFinite/Variant7854f388a050eeb93e21a3d9893814ec802928bca52e7562a960047f70fed1d1.lean#L385).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9880cf7adeb55b07f7e181ed922db4e8c66ee794` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
