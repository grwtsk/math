# quotientEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:33457624df84bab96ff9f0fcdbfe4c3444a7ab176a80003f9a6661cc62534156",
  "kind": "def",
  "lexical_name": "quotientEquiv",
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
  "slug": "quotientequiv--552080c5cfba602053705eea",
  "source": {
    "blob": "88647c45574d4f4a8bd2224cdc49b47cfacbd607",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 809,
    "line": 738,
    "path": "GRWTSK/Algebra/Factorization/Variantbb927377a270c4ba4a5b9b734b6aae6cb50f7ccef84bd4e325188bb0809c59ae.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:552080c5cfba602053705eea099478f64a8034bbf39cfb9c0117561616897a10",
  "verification": {
    "reference": "docs/verification/Algebra/Factorization/Variantbb927377a270c4ba4a5b9b734b6aae6cb50f7ccef84bd4e325188bb0809c59ae.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:33457624df84bab96ff9f0fcdbfe4c3444a7ab176a80003f9a6661cc62534156`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 738–809.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def quotientEquiv (I J I' J' : FractionalIdeal R⁰ K)
    (H : I * J' = I' * J) (h : J ≤ I) (h' : J' ≤ I') (hJ' : J' ≠ 0) (hI : I ≠ 0) :
    (I ⧸ J.coeToSubmodule.comap I.coeToSubmodule.subtype) ≃ₗ[R]
      I' ⧸ J'.coeToSubmodule.comap I'.coeToSubmodule.subtype := by
  haveI : J' ⊓ spanSingleton R⁰ (I'.divMod I J') * I = spanSingleton R⁰ (I'.divMod I J') * J := by
    have := FractionalIdeal.sup_mul_inf J' (spanSingleton R⁰ (I'.divMod I J') * I)
    rwa [FractionalIdeal.sup_eq_add, divMod_spec h' hJ' hI, mul_left_comm, mul_comm J' I, H,
      mul_comm I' J, ← mul_assoc, (mul_left_injective₀ _).eq_iff] at this
    rintro rfl
    exact hJ' (by simpa using h')
  refine .ofBijective (Submodule.mapQ _ _ (LinearMap.restrict
    (Algebra.lsmul R _ _ (I'.divMod I J')) ?_) ?_) ⟨?_, ?_⟩
  · intro x hx
    refine (divMod_spec h' hJ' hI).le ?_
    exact Submodule.mem_sup_right (mul_mem_mul (mem_spanSingleton_self _ _) hx)
  · rw [← Submodule.comap_comp, LinearMap.subtype_comp_restrict, LinearMap.domRestrict,
      Submodule.comap_comp]
    refine Submodule.comap_mono ?_
    intro x hx
    refine (Submodule.mem_inf.mp (this.ge ?_)).1
    simp only [Algebra.lsmul_coe, smul_eq_mul]
    exact mul_mem_mul (mem_spanSingleton_self _ _) hx
  · rw [← LinearMap.ker_eq_bot, Submodule.mapQ, Submodule.ker_liftQ,
      LinearMap.ker_comp, Submodule.ker_mkQ, ← Submodule.comap_comp,
      LinearMap.subtype_comp_restrict, ← le_bot_iff, Submodule.map_le_iff_le_comap,
      Submodule.comap_bot, Submodule.ker_mkQ, LinearMap.domRestrict,
      Submodule.comap_comp, ← Submodule.map_le_iff_le_comap,
      Submodule.map_comap_eq, Submodule.range_subtype]
    by_cases H' : I'.divMod I J' = 0
    · obtain rfl : J' = I' := by simpa [H'] using divMod_spec h' hJ' hI
      obtain rfl : I = J := mul_left_injective₀ hJ' (H.trans (mul_comm _ _))
      exact inf_le_left
    rw [← inv_mul_eq_iff_eq_mul₀ (by simpa [spanSingleton_eq_zero_iff] using H'), mul_inf₀
      (zero_le _), inv_mul_cancel_left₀ (by simpa [spanSingleton_eq_zero_iff] using H')] at this
    rw [← this, inf_comm, coe_inf]
    refine inf_le_inf ?_ le_rfl
    intro x hx
    rw [spanSingleton_inv]
    convert! mul_mem_mul (mem_spanSingleton_self _ _) hx
    simp [H']
  · have H : Submodule.map (Algebra.lsmul R R K (I'.divMod I J')) ↑I =
        (spanSingleton R⁰ (I'.divMod I J') * I) := by
      ext x
      simp [Submodule.mem_span_singleton_mul]
    rw [← LinearMap.range_eq_top, Submodule.mapQ, Submodule.range_liftQ,
      LinearMap.range_comp, LinearMap.restrict, LinearMap.range_codRestrict,
      LinearMap.range_domRestrict, ← top_le_iff, H,
      ← LinearMap.range_eq_top.mpr (Submodule.mkQ_surjective _),
      ← Submodule.map_top, Submodule.map_le_iff_le_comap, Submodule.comap_map_eq, Submodule.ker_mkQ,
      ← Submodule.map_le_map_iff_of_injective I'.coeToSubmodule.injective_subtype,
      Submodule.map_top, Submodule.map_sup,
      Submodule.map_comap_eq, Submodule.map_comap_eq, Submodule.range_subtype, sup_comm,
      inf_eq_right.mpr, inf_eq_right.mpr]
    · exact le_trans (divMod_spec h' hJ' hI).ge (by simp)
    · exact le_trans (by simp) (divMod_spec h' hJ' hI).le
    · exact h'

end FractionalIdeal

end div

section primesOver

variable {S : Type*} [CommRing S] [Algebra S R] [Algebra.IsIntegral S R] [IsDomain S]
  [Module.IsTorsionFree S R]

open IsDedekindDomain Ideal.IsDedekindDomain

/--
If `p` is a maximal ideal, then the lift of `p` in an extension is the product of the primes
over `p` to the power the ramification index.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Factorization/Variantbb927377a270c4ba4a5b9b734b6aae6cb50f7ccef84bd4e325188bb0809c59ae.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Factorization/Variantbb927377a270c4ba4a5b9b734b6aae6cb50f7ccef84bd4e325188bb0809c59ae.lean#L738).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `88647c45574d4f4a8bd2224cdc49b47cfacbd607` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
