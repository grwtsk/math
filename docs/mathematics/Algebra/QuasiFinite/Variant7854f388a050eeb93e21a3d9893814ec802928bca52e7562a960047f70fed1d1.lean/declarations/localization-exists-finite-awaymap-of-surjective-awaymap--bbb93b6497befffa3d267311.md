# Localization.exists_finite_awayMapₐ_of_surjective_awayMapₐ

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:691347f7-95e6-8b85-5cd8-524563d74111",
  "kind": "lemma",
  "lexical_name": "Localization.exists_finite_awayMapₐ_of_surjective_awayMapₐ",
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
  "slug": "localization-exists-finite-awaymap-of-surjective-awaymap--bbb93b6497befffa3d267311",
  "source": {
    "blob": "9880cf7adeb55b07f7e181ed922db4e8c66ee794",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 154,
    "line": 100,
    "path": "GRWTSK/Algebra/QuasiFinite/Variant7854f388a050eeb93e21a3d9893814ec802928bca52e7562a960047f70fed1d1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bbb93b6497befffa3d2673114ba4f27a872eebeaba38bab54ec21c3e83338f29",
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

Occurrence: `result:691347f7-95e6-8b85-5cd8-524563d74111`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 100–154.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Localization.exists_finite_awayMapₐ_of_surjective_awayMapₐ
    [Algebra.FiniteType R T] [Algebra.IsIntegral R S] (f : S →ₐ[R] T) (g : S)
    (hg : Function.Surjective (Localization.awayMapₐ f g)) (p : Ideal R) [p.IsPrime]
    (hgp : IsUnit (M := p.Fiber S) (1 ⊗ₜ g)) :
    ∃ r ∉ p, (Localization.awayMapₐ (Algebra.ofId R T) r).Finite := by
  have := PrimeSpectrum.isClosedMap_comap_of_isIntegral (algebraMap R S)
    (algebraMap_isIntegral_iff.mpr ‹_›) _ (PrimeSpectrum.isClosed_zeroLocus {g})
  obtain ⟨_, ⟨_, ⟨r, rfl⟩, rfl⟩, hpr, hrg⟩ := PrimeSpectrum.isBasis_basic_opens
    |>.exists_subset_of_mem_open (a := ⟨p, ‹_›⟩) (ou := this.isOpen_compl) <| by
    rintro ⟨q, hq, e⟩
    have : q.asIdeal.LiesOver p := ⟨congr(($e).1).symm⟩
    have : 1 ⊗ₜ g ∉ (PrimeSpectrum.preimageEquivFiber R S ⟨p, ‹_›⟩ ⟨q, e⟩).asIdeal :=
      fun h ↦ Ideal.IsPrime.ne_top' (Ideal.eq_top_of_isUnit_mem _ h hgp)
    rw [PrimeSpectrum.preimageEquivFiber_apply_asIdeal] at this
    simp_all
  refine ⟨r, hpr, RingHom.finite_iff_isIntegral_and_finiteType.mpr ⟨?_, ?_⟩⟩
  · have : IsLocalization.Away (f.toRingHom (algebraMap R S r))
        (Localization.Away (algebraMap R T r)) := by
      simp only [AlgHom.toRingHom_eq_coe, RingHom.coe_coe, AlgHom.commutes]; infer_instance
    have h₁ : (Localization.awayMap (algebraMap R S) r).IsIntegral := isIntegral_localization
    have h₂ : Function.Surjective (IsLocalization.Away.map (Localization.Away (algebraMap R S r))
        (Localization.Away (algebraMap R T r)) f.toRingHom (algebraMap R S r)) := by
      intro x
      obtain ⟨x, ⟨_, n, rfl⟩, rfl⟩ := IsLocalization.exists_mk'_eq (.powers (algebraMap R T r)) x
      suffices ∃ a k l, algebraMap R T r ^ (l + n) * f a =
          algebraMap R T r ^ (l + k) * x by
        simpa [(IsLocalization.mk'_surjective (.powers (algebraMap R S r))).exists,
          IsLocalization.Away.map, IsLocalization.map_mk', IsLocalization.mk'_eq_iff_eq,
          ← map_pow, Submonoid.mem_powers_iff, IsLocalization.Away.map, IsLocalization.map_mk',
          IsLocalization.mk'_eq_iff_eq, ← map_mul, ← mul_assoc, ← pow_add,
          IsLocalization.eq_iff_exists (.powers (algebraMap R T r))]
      have : PrimeSpectrum.basicOpen (algebraMap R S r) ≤ PrimeSpectrum.basicOpen g := by
        simpa [← SetLike.coe_subset_coe] using hrg
      simp only [PrimeSpectrum.basicOpen_le_basicOpen_iff, Ideal.mem_radical_iff,
        Ideal.mem_span_singleton] at this
      obtain ⟨m', s, hs⟩ := this
      obtain ⟨b, m, e : f b = f g ^ m * x⟩ := Localization.awayMap_surjective_iff.mp hg x
      have : f (s ^ m * b) = f (g * s) ^ m * x := by simp [e, mul_pow, mul_assoc, mul_left_comm]
      simp_rw [← hs, map_pow, AlgHom.commutes, ← pow_mul] at this
      refine ⟨s ^ m * b, (n + m' * m), 0, this ▸ ?_⟩
      simp [pow_add, mul_assoc]
    convert! h₁.trans _ _ (RingHom.IsIntegral.of_finite (.of_surjective _ h₂)) using 1
    refine IsLocalization.ringHom_ext (.powers r) (RingHom.ext fun x ↦ ?_)
    simp [Localization.awayMap, IsLocalization.Away.map, ← IsScalarTower.algebraMap_apply R T]
  · algebraize [(Localization.awayMapₐ (Algebra.ofId R T) r).toRingHom]
    have := IsScalarTower.of_algebraMap_eq'
      (Localization.awayMapₐ (Algebra.ofId R T) r).comp_algebraMap.symm
    refine RingHom.finiteType_algebraMap.mpr ?_
    exact .of_restrictScalars_finiteType R _ _

set_option backward.isDefEq.respectTransparency false in
attribute [local instance high] Algebra.TensorProduct.leftAlgebra IsScalarTower.right
  DivisionRing.instIsArtinianRing in
/-- A variant of `Ideal.exists_not_mem_forall_mem_of_ne_of_liesOver` that also gives you
control on the primes in the integral closure. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/QuasiFinite/Variant7854f388a050eeb93e21a3d9893814ec802928bca52e7562a960047f70fed1d1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/QuasiFinite/Variant7854f388a050eeb93e21a3d9893814ec802928bca52e7562a960047f70fed1d1.lean#L100).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9880cf7adeb55b07f7e181ed922db4e8c66ee794` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
