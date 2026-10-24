# Group.IsNilpotent.exists_normal_card_eq_of_dvd_card

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:810eb82b-3dda-01ac-f148-16d5c46cddaf",
  "kind": "theorem",
  "lexical_name": "Group.IsNilpotent.exists_normal_card_eq_of_dvd_card",
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
  "slug": "group-isnilpotent-exists-normal-card-eq-of-dvd-card--9195c82d894d7f24fe8b503d",
  "source": {
    "blob": "30c59694ffb89b9851d8498640ef653bd9c59778",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1461,
    "line": 1335,
    "path": "GRWTSK/Algebra/GroupTheory/Nilpotent/Variant63511213e5886a297f6bdf5b650cd2b5f3f63d4f244684a71c31455f21f3f4e5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9195c82d894d7f24fe8b503d9f987db5e245e798b1e12614dd6cbb30ae88f7c1",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Nilpotent/Variant63511213e5886a297f6bdf5b650cd2b5f3f63d4f244684a71c31455f21f3f4e5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:810eb82b-3dda-01ac-f148-16d5c46cddaf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1335–1461.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Group.IsNilpotent.exists_normal_card_eq_of_dvd_card [IsNilpotent G] {n : ℕ}
    (hdvd : n ∣ Nat.card G) : ∃ H : Subgroup G, Nat.card H = n ∧ H.Normal := by
  obtain ⟨k, hk⟩ := hdvd
  obtain ⟨H, hind, hH⟩ := exists_normal_index_eq_of_dvd_card (Dvd.intro_left n hk.symm)
  refine ⟨H, ?_, hH⟩
  rwa [← H.card_mul_index, ← hind, Nat.mul_left_inj FiniteIndex.index_ne_zero] at hk

end WithFiniteGroup

open Group

@[deprecated (since := "2026-03-25")] alias upperCentralSeriesStep := upperCentralSeriesStep
@[deprecated (since := "2026-03-25")] alias mem_upperCentralSeriesStep := mem_upperCentralSeriesStep
@[deprecated (since := "2026-03-25")] alias upperCentralSeriesStep_eq_comap_center :=
  upperCentralSeriesStep_eq_comap_center
@[deprecated (since := "2026-03-25")] alias upperCentralSeriesAux := upperCentralSeriesAux
@[deprecated (since := "2026-03-25")] alias upperCentralSeries := upperCentralSeries
@[deprecated (since := "2026-03-25")] alias upperCentralSeries_zero := upperCentralSeries_zero
@[deprecated (since := "2026-03-25")] alias upperCentralSeries_one := upperCentralSeries_one
@[deprecated (since := "2026-03-25")] alias mem_upperCentralSeries_succ_iff :=
  mem_upperCentralSeries_succ_iff
@[deprecated (since := "2026-03-25")] alias comap_upperCentralSeries := comap_upperCentralSeries
@[deprecated (since := "2026-03-25")] alias IsAscendingCentralSeries := IsAscendingCentralSeries
@[deprecated (since := "2026-03-25")] alias IsDescendingCentralSeries := IsDescendingCentralSeries
@[deprecated (since := "2026-03-25")] alias ascending_central_series_le_upper :=
  ascending_central_series_le_upper
@[deprecated (since := "2026-03-25")] alias upperCentralSeries_isAscendingCentralSeries :=
  upperCentralSeries_isAscendingCentralSeries
@[deprecated (since := "2026-03-25")] alias upperCentralSeries_mono := upperCentralSeries_mono
@[deprecated (since := "2026-03-25")] alias nilpotent_iff_finite_ascending_central_series :=
  nilpotent_iff_finite_ascending_central_series
@[deprecated (since := "2026-03-25")] alias is_descending_rev_series_of_is_ascending :=
  is_descending_rev_series_of_is_ascending
@[deprecated (since := "2026-03-25")] alias is_ascending_rev_series_of_is_descending :=
  is_ascending_rev_series_of_is_descending
@[deprecated (since := "2026-03-25")] alias nilpotent_iff_finite_descending_central_series :=
  nilpotent_iff_finite_descending_central_series
@[deprecated (since := "2026-03-25")] alias lowerCentralSeries := lowerCentralSeries
@[deprecated (since := "2026-03-25")] alias lowerCentralSeries_zero := lowerCentralSeries_zero
@[deprecated (since := "2026-03-25")] alias lowerCentralSeries_one := top_lowerCentralSeries_one
@[deprecated (since := "2026-03-25")] alias mem_lowerCentralSeries_succ_iff :=
  mem_lowerCentralSeries_succ_iff
@[deprecated (since := "2026-03-25")] alias lowerCentralSeries_succ := lowerCentralSeries_succ
@[deprecated (since := "2026-03-25")] alias lowerCentralSeries_antitone :=
  lowerCentralSeries_antitone
@[deprecated (since := "2026-03-25")] alias lowerCentralSeries_isDescendingCentralSeries :=
  lowerCentralSeries_isDescendingCentralSeries
@[deprecated (since := "2026-03-25")] alias descending_central_series_ge_lower :=
  descending_central_series_ge_lower
@[deprecated (since := "2026-03-25")] alias nilpotent_iff_lowerCentralSeries :=
  nilpotent_iff_lowerCentralSeries
@[deprecated (since := "2026-03-25")] alias upperCentralSeries_nilpotencyClass :=
  upperCentralSeries_nilpotencyClass
@[deprecated (since := "2026-03-25")] alias upperCentralSeries_eq_top_iff_nilpotencyClass_le :=
  upperCentralSeries_eq_top_iff_nilpotencyClass_le
@[deprecated (since := "2026-03-25")]
alias least_ascending_central_series_length_eq_nilpotencyClass :=
  least_ascending_central_series_length_eq_nilpotencyClass
@[deprecated (since := "2026-03-25")]
alias least_descending_central_series_length_eq_nilpotencyClass :=
  least_descending_central_series_length_eq_nilpotencyClass
@[deprecated (since := "2026-03-25")] alias lowerCentralSeries_length_eq_nilpotencyClass :=
  lowerCentralSeries_length_eq_nilpotencyClass
@[deprecated (since := "2026-03-25")] alias lowerCentralSeries_nilpotencyClass :=
  lowerCentralSeries_nilpotencyClass
@[deprecated (since := "2026-03-25")] alias lowerCentralSeries_eq_bot_iff_nilpotencyClass_le :=
  lowerCentralSeries_eq_bot_iff_nilpotencyClass_le
@[deprecated (since := "2026-03-25")] alias lowerCentralSeries_map_subtype_le :=
  lowerCentralSeries_map_subtype_le
@[deprecated (since := "2026-03-25")] alias upperCentralSeries.map := upperCentralSeries.map
@[deprecated (since := "2026-03-25")] alias lowerCentralSeries.map := lowerCentralSeries.map
@[deprecated (since := "2026-03-25")] alias lowerCentralSeries_succ_eq_bot :=
  lowerCentralSeries_succ_eq_bot
@[deprecated (since := "2026-03-25")] alias isNilpotent_of_ker_le_center :=
  isNilpotent_of_ker_le_center
@[deprecated (since := "2026-03-25")] alias nilpotencyClass_le_of_ker_le_center :=
  nilpotencyClass_le_of_ker_le_center
@[deprecated (since := "2026-03-25")] alias nilpotent_of_surjective := nilpotent_of_surjective
@[deprecated (since := "2026-03-25")] alias nilpotencyClass_le_of_surjective :=
  nilpotencyClass_le_of_surjective
@[deprecated (since := "2026-03-25")] alias nilpotent_of_mulEquiv := nilpotent_of_mulEquiv
@[deprecated (since := "2026-03-25")] alias nilpotent_quotient_of_nilpotent :=
  nilpotent_quotient_of_nilpotent
@[deprecated (since := "2026-03-25")] alias nilpotencyClass_quotient_le :=
  nilpotencyClass_quotient_le
@[deprecated (since := "2026-03-25")] alias comap_upperCentralSeries_quotient_center :=
  comap_upperCentralSeries_quotient_center
@[deprecated (since := "2026-03-25")] alias nilpotencyClass_zero_iff_subsingleton :=
  nilpotencyClass_zero_iff_subsingleton
@[deprecated (since := "2026-03-25")] alias of_quotient_center_nilpotent :=
  of_quotient_center_nilpotent
@[deprecated (since := "2026-03-25")] alias nilpotencyClass_quotient_center :=
  nilpotencyClass_quotient_center
@[deprecated (since := "2026-03-25")] alias nilpotencyClass_eq_quotient_center_plus_one :=
  nilpotencyClass_eq_quotient_center_plus_one
@[deprecated (since := "2026-03-25")] alias nilpotent_center_quotient_ind :=
  nilpotent_center_quotient_ind
@[deprecated (since := "2026-03-25")] alias derived_le_lower_central := derived_le_lower_central
@[deprecated (since := "2026-03-25")] alias upperCentralSeries.eq_ge_of_eq_succ :=
  upperCentralSeries.eq_ge_of_eq_succ
@[deprecated (since := "2026-03-25")] alias upperCentralSeries.eq_ge_of_eq_gt :=
  upperCentralSeries.eq_ge_of_eq_gt
@[deprecated (since := "2026-03-25")] alias upperCentralSeries.eq_top := upperCentralSeries.eq_top
@[deprecated (since := "2026-03-25")] alias nilpotencyClass_le_of_upperCentralSeries_eq :=
  nilpotencyClass_le_of_upperCentralSeries_eq
@[deprecated (since := "2026-03-25")] alias upperCentralSeries.StrictMonoOn :=
  upperCentralSeries.StrictMonoOn
@[deprecated (since := "2026-03-25")]
alias upperCentralSeries.card_image_eq_of_le_nilpotencyClass :=
  upperCentralSeries.card_image_eq_of_le_nilpotencyClass
@[deprecated (since := "2026-03-25")] alias lowerCentralSeries_prod := lowerCentralSeries_prod
@[deprecated (since := "2026-03-25")] alias isNilpotent_prod := isNilpotent_prod
@[deprecated (since := "2026-03-25")] alias nilpotencyClass_prod := nilpotencyClass_prod
@[deprecated (since := "2026-03-25")] alias lowerCentralSeries_pi_le := lowerCentralSeries_pi_le
@[deprecated (since := "2026-03-25")] alias isNilpotent_pi_of_bounded_class :=
  isNilpotent_pi_of_bounded_class
@[deprecated (since := "2026-03-25")] alias lowerCentralSeries_pi_of_finite :=
  lowerCentralSeries_pi_of_finite
@[deprecated (since := "2026-03-25")] alias isNilpotent_pi := isNilpotent_pi
@[deprecated (since := "2026-03-25")] alias nilpotencyClass_pi := nilpotencyClass_pi
@[deprecated (since := "2026-03-25")] alias nilpotencyClass_le_one_of_isSimple_of_isNilpotent :=
  nilpotencyClass_le_one_of_isSimple_of_isNilpotent
@[deprecated (since := "2026-03-25")] alias normalizerCondition_of_isNilpotent :=
  normalizerCondition_of_isNilpotent
@[deprecated (since := "2026-03-25")] alias isNilpotent_of_product_of_sylow_group :=
  isNilpotent_of_product_of_sylow_group
@[deprecated (since := "2026-03-25")] alias isNilpotent_of_finite_tfae := isNilpotent_of_finite_tfae
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Nilpotent/Variant63511213e5886a297f6bdf5b650cd2b5f3f63d4f244684a71c31455f21f3f4e5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Nilpotent/Variant63511213e5886a297f6bdf5b650cd2b5f3f63d4f244684a71c31455f21f3f4e5.lean#L1335).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `30c59694ffb89b9851d8498640ef653bd9c59778` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
