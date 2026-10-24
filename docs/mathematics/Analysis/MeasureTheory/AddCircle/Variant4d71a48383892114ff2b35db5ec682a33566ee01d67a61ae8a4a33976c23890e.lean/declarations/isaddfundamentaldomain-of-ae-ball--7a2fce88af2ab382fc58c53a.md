# isAddFundamentalDomain_of_ae_ball

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4b4aeff201aecf95438c4649b570e90f4be1928b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 54,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/4d/4d71a48383892114ff2b35db5ec682a33566ee01d67a61ae8a4a33976c23890e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d49e4da3-2d21-7541-94c1-a7c0fcf2fd0c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:78aa8caf-ecbe-eaf9-610f-de94c6a48942",
  "kind": "theorem",
  "lexical_name": "isAddFundamentalDomain_of_ae_ball",
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
  "slug": "isaddfundamentaldomain-of-ae-ball--7a2fce88af2ab382fc58c53a",
  "source": {
    "blob": "4b4aeff201aecf95438c4649b570e90f4be1928b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 94,
    "line": 54,
    "path": "GRWTSK/Analysis/MeasureTheory/AddCircle/Variant4d71a48383892114ff2b35db5ec682a33566ee01d67a61ae8a4a33976c23890e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7a2fce88af2ab382fc58c53a7d5056d242681b62ec2768e19a540788919e1eaf",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/AddCircle/Variant4d71a48383892114ff2b35db5ec682a33566ee01d67a61ae8a4a33976c23890e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:78aa8caf-ecbe-eaf9-610f-de94c6a48942`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 54–94.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isAddFundamentalDomain_of_ae_ball (I : Set <| AddCircle T) (u x : AddCircle T)
    (hu : IsOfFinAddOrder u) (hI : I =ᵐ[volume] ball x (T / (2 * addOrderOf u))) :
    IsAddFundamentalDomain (AddSubgroup.zmultiples u) I := by
  set G := AddSubgroup.zmultiples u
  set n := addOrderOf u
  set B := ball x (T / (2 * n))
  have hn : 1 ≤ (n : ℝ) := by norm_cast; linarith [addOrderOf_pos' hu]
  refine' IsAddFundamentalDomain.mk_of_measure_univ_le _ _ _ _
  · -- `NullMeasurableSet I volume`
    exact measurableSet_ball.nullMeasurableSet.congr hI.symm
  · -- `∀ (g : G), g ≠ 0 → AEDisjoint volume (g +ᵥ I) I`
    rintro ⟨g, hg⟩ hg'
    replace hg' : g ≠ 0; · simpa only [Ne.def, AddSubgroup.mk_eq_zero_iff] using hg'
    change AEDisjoint volume (g +ᵥ I) I
    refine' AEDisjoint.congr (Disjoint.aedisjoint _)
      ((quasiMeasurePreserving_add_left volume (-g)).vadd_ae_eq_of_ae_eq g hI) hI
    have hBg : g +ᵥ B = ball (g + x) (T / (2 * n)) := by
      rw [add_comm g x, ← singleton_add_ball _ x g, add_ball, thickening_singleton]
    rw [hBg]
    apply ball_disjoint_ball
    rw [dist_eq_norm, add_sub_cancel, div_mul_eq_div_div, ← add_div, ← add_div, add_self_div_two,
      div_le_iff' (by positivity : 0 < (n : ℝ)), ← nsmul_eq_mul]
    refine' (le_add_order_smul_norm_of_isOfFinAddOrder (hu.of_mem_zmultiples hg) hg').trans
      (nsmul_le_nsmul (norm_nonneg g) _)
    exact Nat.le_of_dvd (addOrderOf_pos_iff.mpr hu) (addOrderOf_dvd_of_mem_zmultiples hg)
  · -- `∀ (g : G), QuasiMeasurePreserving (VAdd.vadd g) volume volume`
    exact fun g => quasiMeasurePreserving_add_left (G := AddCircle T) volume g
  · -- `volume univ ≤ ∑' (g : G), volume (g +ᵥ I)`
    replace hI := hI.trans closedBall_ae_eq_ball.symm
    haveI : Fintype G := @Fintype.ofFinite _ hu.finite_zmultiples
    have hG_card : (Finset.univ : Finset G).card = n := by
      show _ = addOrderOf u
      rw [add_order_eq_card_zmultiples', Nat.card_eq_fintype_card]; rfl
    simp_rw [measure_vadd]
    rw [AddCircle.measure_univ, tsum_fintype, Finset.sum_const, measure_congr hI,
      volume_closedBall, ← ENNReal.ofReal_nsmul, mul_div, mul_div_mul_comm,
      div_self, one_mul, min_eq_right (div_le_self hT.out.le hn), hG_card,
      nsmul_eq_mul, mul_div_cancel' T (lt_of_lt_of_le zero_lt_one hn).ne.symm]
    exact two_ne_zero
#align add_circle.is_add_fundamental_domain_of_ae_ball AddCircle.isAddFundamentalDomain_of_ae_ball

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/AddCircle/Variant4d71a48383892114ff2b35db5ec682a33566ee01d67a61ae8a4a33976c23890e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/AddCircle/Variant4d71a48383892114ff2b35db5ec682a33566ee01d67a61ae8a4a33976c23890e.lean#L54).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4b4aeff201aecf95438c4649b570e90f4be1928b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
