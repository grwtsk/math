# QuasiFiniteAt.of_isOpen_singleton

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:dce57805-104f-82e7-d629-5696de0c97a0",
  "kind": "lemma",
  "lexical_name": "QuasiFiniteAt.of_isOpen_singleton",
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
  "slug": "quasifiniteat-of-isopen-singleton--ff0c93e54e3be5a08bf2ac5f",
  "source": {
    "blob": "9ed1801f1080a895155a326863bbcc599715c411",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 536,
    "line": 499,
    "path": "GRWTSK/Algebra/Basic/Variant319fc56512a5c7190640a44cf254aa60b80e3a8a9babec5ff5f00b20ab16975b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ff0c93e54e3be5a08bf2ac5f6ab302f0b4b853f6c1d701a37f7d848306a54f09",
  "verification": {
    "reference": "docs/verification/Algebra/Basic/Variant319fc56512a5c7190640a44cf254aa60b80e3a8a9babec5ff5f00b20ab16975b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dce57805-104f-82e7-d629-5696de0c97a0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 499–536.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma QuasiFiniteAt.of_isOpen_singleton
    [IsArtinianRing R] (p : PrimeSpectrum S) [Algebra.FiniteType R S]
    (H : IsOpen {p}) : Algebra.QuasiFiniteAt R p.asIdeal := by
  have : IsNoetherianRing S := Algebra.FiniteType.isNoetherianRing R S
  have : IsJacobsonRing S := isJacobsonRing_of_finiteType (A := R)
  rw [(PrimeSpectrum.isOpen_singleton_tfae_of_isNoetherian_of_isJacobsonRing p).out
    1 2 rfl rfl] at H
  obtain ⟨e, he, H⟩ := PrimeSpectrum.isClopen_iff.mp H
  have hep : e ∉ p.asIdeal := H.le rfl
  let f : Localization.Away e →ₐ[S] Localization.AtPrime p.asIdeal :=
    IsLocalization.Away.liftAlgHom e (f := Algebra.ofId _ _)
      (IsLocalization.map_units (M := p.asIdeal.primeCompl) _ ⟨e, hep⟩)
  have h₁ := (PrimeSpectrum.localization_away_comap_range (Localization.Away e) e).trans H.symm
  have : Subsingleton (PrimeSpectrum (Localization.Away e)) :=
    Function.Injective.subsingleton
    (f := Set.codRestrict (PrimeSpectrum.comap (algebraMap S (Localization.Away e))) {p} fun x ↦
      h₁.le ⟨x, rfl⟩)
    ((Set.injective_codRestrict ..).mpr (PrimeSpectrum.localization_comap_injective _ (.powers e)))
  have hf : Function.Surjective f := by
    intro x
    obtain ⟨x, s, rfl⟩ := IsLocalization.exists_mk'_eq p.asIdeal.primeCompl x
    suffices IsUnit (algebraMap _ (Localization.Away e) s.1) by
      refine ⟨algebraMap _ _ x * this.unit⁻¹, (this.map f).mul_right_cancel ?_⟩
      simp only [← map_mul, mul_assoc, IsUnit.val_inv_mul]
      simp
    by_contra H
    obtain ⟨M, hM, H⟩ :=
      Ideal.exists_le_maximal (.span {algebraMap _ (Localization.Away e) s.1}) (by simpa)
    have := Subsingleton.elim ((IsLocalRing.closedPoint _).comap f.toRingHom) ⟨M, inferInstance⟩
    have := congr(($this).1).ge (H (Ideal.mem_span_singleton_self _))
    simp [IsLocalRing.closedPoint, IsLocalization.AtPrime.isUnit_to_map_iff _ p.asIdeal] at this
  have : Algebra.FiniteType R (Localization.AtPrime p.asIdeal) :=
    .of_surjective (f.restrictScalars R) hf
  have := (PrimeSpectrum.comap_injective_of_surjective f.toRingHom hf).subsingleton
  exact QuasiFinite.iff_finite_comap_preimage_singleton.mpr fun _ ↦
    Set.subsingleton_of_subsingleton.finite

attribute [local instance] RingHom.ker_isPrime in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Basic/Variant319fc56512a5c7190640a44cf254aa60b80e3a8a9babec5ff5f00b20ab16975b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Basic/Variant319fc56512a5c7190640a44cf254aa60b80e3a8a9babec5ff5f00b20ab16975b.lean#L499).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9ed1801f1080a895155a326863bbcc599715c411` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
