# QuasiFiniteAt.exists_basicOpen_eq_singleton

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:52c4ce67-c989-7e5a-ae84-99eab47debad",
  "kind": "lemma",
  "lexical_name": "QuasiFiniteAt.exists_basicOpen_eq_singleton",
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
  "slug": "quasifiniteat-exists-basicopen-eq-singleton--03cc901193d624d296231f04",
  "source": {
    "blob": "9ed1801f1080a895155a326863bbcc599715c411",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 489,
    "line": 459,
    "path": "GRWTSK/Algebra/Basic/Variant319fc56512a5c7190640a44cf254aa60b80e3a8a9babec5ff5f00b20ab16975b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:03cc901193d624d296231f040bce4fc68d3096f9260aa1545bcf78200c98fd22",
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

Occurrence: `result:52c4ce67-c989-7e5a-ae84-99eab47debad`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 459–489.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma QuasiFiniteAt.exists_basicOpen_eq_singleton
    (p : Ideal S) [p.IsPrime] [IsArtinianRing R] [Algebra.EssFiniteType R S]
    [Algebra.QuasiFiniteAt R p] :
    ∃ f ∉ p, (PrimeSpectrum.basicOpen f : Set (PrimeSpectrum S)) = {⟨p, ‹_›⟩} := by
  have : IsLocalizedModule p.primeCompl (.id (R := S) (M := Localization.AtPrime p)) :=
    ⟨IsLocalizedModule.map_units (Algebra.linearMap S (Localization.AtPrime p)),
      fun y ↦ ⟨⟨y, 1⟩, by simp⟩, by simpa using ⟨1, p.primeCompl.one_mem⟩⟩
  have : Module.Finite R (Localization.AtPrime p) := .of_quasiFinite
  have : Module.Finite S (Localization.AtPrime p) := .of_restrictScalars_finite R _ _
  have : IsArtinianRing (Localization.AtPrime p) := .of_finite R _
  have : IsNoetherianRing S := Algebra.EssFiniteType.isNoetherianRing R S
  have : Module.FinitePresentation S (Localization.AtPrime p) :=
    Module.finitePresentation_of_finite _ _
  obtain ⟨r, hrp, H⟩ := IsLocalizedModule.exists_isLocalizedModule_powers_of_finitePresentation
    p.primeCompl (Algebra.linearMap S (Localization.AtPrime p))
  have : IsLocalization (.powers r) (Localization.AtPrime p) :=
    (isLocalizedModule_iff_isLocalization' _ _).mp H
  let φ : Localization.Away r ≃ₐ[S] Localization.AtPrime p :=
    IsLocalization.algEquiv (.powers r) _ _
  refine ⟨r, hrp, subset_antisymm (fun q hrq ↦ ?_) (Set.singleton_subset_iff.mpr hrp)⟩
  obtain ⟨q, rfl⟩ := (PrimeSpectrum.localization_away_comap_range (Localization.Away r) r).ge hrq
  obtain ⟨q, rfl⟩ := (PrimeSpectrum.comapEquiv φ.toRingEquiv).symm.surjective q
  -- As Sₚ is an artinian local ring, its prime spectrum is a singleton.
  obtain rfl : q = IsLocalRing.closedPoint _ := Subsingleton.elim _ _
  ext1
  dsimp [-RingEquiv.symm_mk]
  rw [Ideal.comap_comap, ← AlgEquiv.toAlgHom_toRingHom, AlgHom.comp_algebraMap]
  exact IsLocalization.AtPrime.under_maximalIdeal _ _

/-- If `R` is an artinian ring, and `S` is a finite type `R`-algebra `R`-quasi-finite at `p`,
then `{p}` is clopen in `Spec S`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Basic/Variant319fc56512a5c7190640a44cf254aa60b80e3a8a9babec5ff5f00b20ab16975b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Basic/Variant319fc56512a5c7190640a44cf254aa60b80e3a8a9babec5ff5f00b20ab16975b.lean#L459).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9ed1801f1080a895155a326863bbcc599715c411` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
