# integral_psi_Ioi_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "67c96e7c3575ca2a9acaf1f66e4172a190ed7a42",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 620,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/86/8645fa3e34345a4863882939ba5082f3353759613b1129aee8edb49e0066febb.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d3337a75-daf6-f650-cae2-dfb10852bc05",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:96c9acb6-b8bd-e38b-8c22-08b2c6e6ed64",
  "kind": "theorem",
  "lexical_name": "integral_psi_Ioi_le",
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
  "slug": "integral-psi-ioi-le--00f9259aa58c613605ad0aae",
  "source": {
    "blob": "67c96e7c3575ca2a9acaf1f66e4172a190ed7a42",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 675,
    "line": 620,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Decay/Variant8645fa3e34345a4863882939ba5082f3353759613b1129aee8edb49e0066febb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:00f9259aa58c613605ad0aaee68f72e8b4f4439cb1962d7cde54341941016f21",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Decay/Variant8645fa3e34345a4863882939ba5082f3353759613b1129aee8edb49e0066febb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:96c9acb6-b8bd-e38b-8c22-08b2c6e6ed64`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 620–675.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem integral_psi_Ioi_le (hϱ : TaperProfile ϱ) (hw : 1 ≤ w) (hwL : 8 * w ≤ L) :
    ∫ r in Ioi 0, psi ϱ L w r ≤ 4 + 2 * Real.log (cRho ϱ * L / (4 * w)) := by
  obtain ⟨hA, hB, hAB, hBA⟩ := psiints_consts hϱ hw hwL
  have hwL' : 2 * w ≤ L := by linarith
  have hL : 0 < L := by linarith
  have hw0 : 0 < w := by linarith
  have hc0 : 0 < cRho ϱ := lt_of_lt_of_le (by norm_num) (four_le_cRho hϱ)
  set A := 2 / L with hAdef
  set B := cRho ϱ / (2 * w) with hBdef
  -- integrability of the three pieces
  have i1 : IntegrableOn (fun _ : ℝ => L) (Ioc 0 A) := integrableOn_const (by simp)
  have i2 : IntegrableOn (fun x : ℝ => 2 * x⁻¹) (Ioc A B) := by
    refine (ContinuousOn.integrableOn_Icc ?_).mono_set Ioc_subset_Icc_self
    exact continuousOn_const.mul
      ((continuousOn_inv₀).mono fun x hx => ne_of_gt (lt_of_lt_of_le hA hx.1))
  have i3 : IntegrableOn (fun x : ℝ => cRho ϱ / w * x ^ (-2:ℝ)) (Ioi B) :=
    (integrableOn_Ioi_rpow_of_lt (by norm_num) hB).const_mul _
  have I1 := i1.integrable_indicator measurableSet_Ioc
  have I2 := i2.integrable_indicator measurableSet_Ioc
  have I3 := i3.integrable_indicator measurableSet_Ioi
  -- the three integrals
  have e1 : ∫ r, (Ioc 0 A).indicator (fun _ => L) r = 2 := by
    rw [integral_indicator measurableSet_Ioc, setIntegral_const, measureReal_def,
      Real.volume_Ioc, ENNReal.toReal_ofReal (by linarith), smul_eq_mul, sub_zero, hAdef]
    field_simp
  have e2 : ∫ r, (Ioc A B).indicator (fun x => 2 * x⁻¹) r = 2 * Real.log (B / A) := by
    rw [integral_indicator measurableSet_Ioc, ← intervalIntegral.integral_of_le hAB,
      intervalIntegral.integral_const_mul, integral_inv]
    exact fun h => by
      have := (Set.mem_uIcc.mp h); rcases this with h | h <;> linarith [h.1, h.2]
  have e3 : ∫ r, (Ioi B).indicator (fun x => cRho ϱ / w * x ^ (-2:ℝ)) r = 2 := by
    rw [integral_indicator measurableSet_Ioi, integral_const_mul,
      integral_Ioi_rpow_of_lt (by norm_num) hB]
    norm_num
    rw [Real.rpow_neg_one, hBdef]
    field_simp
  have I12 : Integrable (fun r => (Ioc 0 A).indicator (fun _ => L) r
      + (Ioc A B).indicator (fun x => 2 * x⁻¹) r) := I1.add I2
  calc ∫ r in Ioi 0, psi ϱ L w r
      = ∫ r, (Ioi (0:ℝ)).indicator (psi ϱ L w) r := (integral_indicator measurableSet_Ioi).symm
    _ ≤ ∫ r, ((Ioc 0 A).indicator (fun _ => L) r
          + (Ioc A B).indicator (fun x => 2 * x⁻¹) r
          + (Ioi B).indicator (fun x => cRho ϱ / w * x ^ (-2:ℝ)) r) := by
        refine integral_mono_of_nonneg (Eventually.of_forall fun r => ?_) ((I1.add I2).add I3)
          (Eventually.of_forall fun r => indicator_psi_le hϱ hw hwL r)
        exact Set.indicator_nonneg (fun x _ => psi_nonneg hϱ hw hwL' x) _
    _ = (∫ r, ((Ioc 0 A).indicator (fun _ => L) r + (Ioc A B).indicator (fun x => 2 * x⁻¹) r))
          + ∫ r, (Ioi B).indicator (fun x => cRho ϱ / w * x ^ (-2:ℝ)) r := integral_add I12 I3
    _ = ((∫ r, (Ioc 0 A).indicator (fun _ => L) r) + ∫ r, (Ioc A B).indicator (fun x => 2 * x⁻¹) r)
          + ∫ r, (Ioi B).indicator (fun x => cRho ϱ / w * x ^ (-2:ℝ)) r := by
        rw [integral_add I1 I2]
    _ = 2 + 2 * Real.log (B / A) + 2 := by rw [e1, e2, e3]
    _ = 4 + 2 * Real.log (cRho ϱ * L / (4 * w)) := by rw [hBA]; ring

/-- [eq:psiints]: ∫_ℝ ψ(r)²|r| dr ≤ 8 + 8 log(c_ϱ L/(4w)) (paper: "="): split (0,2/L],
(2/L, c/2w], (c/2w, ∞): ∫₀^∞ ψ² r ≤ L²(2/L)²/2 + 4 log(cL/4w) + (c/w)²/(2(c/2w)²) = 2 + 4 log + 2. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Decay/Variant8645fa3e34345a4863882939ba5082f3353759613b1129aee8edb49e0066febb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Decay/Variant8645fa3e34345a4863882939ba5082f3353759613b1129aee8edb49e0066febb.lean#L620).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `67c96e7c3575ca2a9acaf1f66e4172a190ed7a42` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
