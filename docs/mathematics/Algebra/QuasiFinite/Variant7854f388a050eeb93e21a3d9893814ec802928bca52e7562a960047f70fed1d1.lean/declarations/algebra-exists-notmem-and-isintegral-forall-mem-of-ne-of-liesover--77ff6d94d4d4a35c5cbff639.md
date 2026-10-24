# Algebra.exists_notMem_and_isIntegral_forall_mem_of_ne_of_liesOver

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7f28189a-eeee-aec0-cdf5-630aed551033",
  "kind": "lemma",
  "lexical_name": "Algebra.exists_notMem_and_isIntegral_forall_mem_of_ne_of_liesOver",
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
  "slug": "algebra-exists-notmem-and-isintegral-forall-mem-of-ne-of-liesover--77ff6d94d4d4a35c5cbff639",
  "source": {
    "blob": "9880cf7adeb55b07f7e181ed922db4e8c66ee794",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 208,
    "line": 155,
    "path": "GRWTSK/Algebra/QuasiFinite/Variant7854f388a050eeb93e21a3d9893814ec802928bca52e7562a960047f70fed1d1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:77ff6d94d4d4a35c5cbff639e394ac96a531b4941cfc7e7d7923b6a3cfc8c52b",
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

Occurrence: `result:7f28189a-eeee-aec0-cdf5-630aed551033`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 155–208.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Algebra.exists_notMem_and_isIntegral_forall_mem_of_ne_of_liesOver
    {R S : Type*} [CommRing R] [CommRing S] [Algebra R S]
    (p : Ideal R) [p.IsPrime] (q : Ideal S) [q.IsPrime] [q.LiesOver p]
    [Algebra.FiniteType R S]
    [Algebra.QuasiFiniteAt R q] :
    ∃ s ∉ q, ∃ hs : IsIntegral R s, (∀ q' : Ideal S, q'.IsPrime → q' ≠ q → q'.LiesOver p → s ∈ q') ∧
      ∀ (q' : Ideal (integralClosure R S)), q'.IsPrime →
        q' ≠ q.under _ → q'.LiesOver p → ⟨s, hs⟩ ∈ q' := by
  obtain ⟨s₁, hs₁q, hs₁⟩ := Ideal.exists_not_mem_forall_mem_of_ne_of_liesOver (R := R) p q
  obtain ⟨s₂, hs₂q, hs₂⟩ := Algebra.ZariskisMainProperty.of_finiteType (R := R) q
  obtain ⟨s₃, hs₃⟩ := hs₂.2 (algebraMap _ _ s₁)
  obtain ⟨s₃, ⟨_, n, rfl⟩, rfl⟩ := IsLocalization.exists_mk'_eq (.powers s₂) s₃
  obtain ⟨m, hm⟩ : ∃ m, ↑s₂ ^ m * ↑s₃ = ↑s₂ ^ m * (s₁ * ↑s₂ ^ n) := by
    simpa [IsLocalization.Away.map, IsLocalization.map_mk', IsLocalization.mk'_eq_iff_eq_mul,
      ← map_mul, ← map_pow, IsLocalization.eq_iff_exists (.powers s₂.1),
      Submonoid.mem_powers_iff] using! hs₃
  wlog hm0 : 0 < m generalizing m
  · refine this (m + 1) (by grind) (by simp)
  have hs₃q : s₃.1 ∉ q := fun h ↦ (show ↑s₂ ^ m * (s₁ * ↑s₂ ^ n) ∉ q from q.primeCompl.mul_mem
     (pow_mem hs₂q _) (mul_mem hs₁q (pow_mem hs₂q _))) (hm ▸ Ideal.mul_mem_left _ _ h)
  refine ⟨↑s₂ ^ m * ↑s₃, q.primeCompl.mul_mem (pow_mem hs₂q _) hs₃q, (s₂ ^ m * s₃).2,
    fun q' _ hq'q _ ↦ hm ▸ Ideal.mul_mem_left _ _ (Ideal.mul_mem_right _ _ (hs₁ q' ‹_› hq'q ‹_›)),
    fun q' _ hq'q _ ↦ ?_⟩
  let : Algebra (integralClosure R S) (Localization.Away s₂.1) := OreLocalization.instAlgebra
  let e : Localization.Away s₂ ≃ₐ[integralClosure R S] Localization.Away s₂.1 :=
    .ofBijective (Localization.awayMapₐ (Algebra.ofId _ _) s₂) hs₂
  let q's : Ideal (Localization.Away s₂) := q'.map (algebraMap _ _)
  by_contra H
  have hq's : Disjoint (Submonoid.powers s₂ : Set (integralClosure R S)) ↑q' := by
    rw [Ideal.disjoint_powers_iff_notMem_of_isPrime]
    contrapose H; exact Ideal.mul_mem_right s₃ _ (Ideal.pow_mem_of_mem _ H m hm0)
  have : q's.IsPrime := IsLocalization.isPrime_of_isPrime_disjoint (.powers s₂) _ _ ‹_› hq's
  have : q's.LiesOver q' := ⟨(IsLocalization.under_map_of_isPrime_disjoint _ _ ‹_› hq's).symm⟩
  have : q's.LiesOver p := .trans _ q' _
  have := hs₁ (q's.comap (e.symm.toAlgHom.comp (IsScalarTower.toAlgHom _ _ _)).toRingHom)
    inferInstance (by
      contrapose hq'q
      rw [← hq'q, Ideal.under, Ideal.comap_comap, AlgHom.toRingHom_eq_coe,
        AlgHom.comp_algebraMap, q's.over_def q'])
    (inferInstanceAs ((q's.comap ((e.symm.toAlgHom.comp
      (IsScalarTower.toAlgHom _ _ _)).restrictScalars R)).LiesOver _))
  have : e.symm (algebraMap S (Localization.Away
      ((integralClosure R S).val.toRingHom s₂)) s₁) ∈ q's := by
    simpa using! this
  rw [← hs₃, ← Ideal.IsPrime.mul_mem_left_iff (x := algebraMap _ _ (s₂ ^ n))] at this
  · dsimp [Localization.awayMap, IsLocalization.Away.map] at this
    rw [IsLocalization.map_mk', ← e.symm.commutes, ← map_mul,
      IsScalarTower.algebraMap_eq _ S _] at this
    replace this : e.symm ((algebraMap _ (Localization.Away s₂.1)) s₃) ∈ q's := by
      simpa [-map_mul, -map_pow, -AlgEquiv.commutes] using! this
    replace this : s₃ ∈ q' := by simpa [← Ideal.mem_comap, ← q's.over_def q'] using! this
    exact H (Ideal.mul_mem_left _ (s₂ ^ m) this)
  · rw [map_pow]; exact Ideal.notMem_of_isUnit _ (.pow _ (IsLocalization.Away.algebraMap_isUnit _))

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/QuasiFinite/Variant7854f388a050eeb93e21a3d9893814ec802928bca52e7562a960047f70fed1d1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/QuasiFinite/Variant7854f388a050eeb93e21a3d9893814ec802928bca52e7562a960047f70fed1d1.lean#L155).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9880cf7adeb55b07f7e181ed922db4e8c66ee794` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
