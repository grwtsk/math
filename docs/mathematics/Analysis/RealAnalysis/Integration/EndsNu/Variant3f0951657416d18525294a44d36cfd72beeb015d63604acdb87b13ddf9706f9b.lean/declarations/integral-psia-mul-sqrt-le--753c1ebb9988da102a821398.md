# integral_psiA_mul_sqrt_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fb035396-3555-51b8-c9f6-7fdadd4d2817",
  "kind": "theorem",
  "lexical_name": "integral_psiA_mul_sqrt_le",
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
  "slug": "integral-psia-mul-sqrt-le--753c1ebb9988da102a821398",
  "source": {
    "blob": "63016c230313d48ce8fede3551c3ee7496c7b37b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 109,
    "line": 55,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/EndsNu/Variant3f0951657416d18525294a44d36cfd72beeb015d63604acdb87b13ddf9706f9b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:753c1ebb9988da102a8213983dbdd98cb1e6b9061d13610cb4242d0efdb8a412",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/EndsNu/Variant3f0951657416d18525294a44d36cfd72beeb015d63604acdb87b13ddf9706f9b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fb035396-3555-51b8-c9f6-7fdadd4d2817`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 55–109.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem integral_psiA_mul_sqrt_le (hF : LocalHypsCoreW cϱ p F) :
    ∫ r, psiA cϱ p r * Real.sqrt |r| ≤ 2 * p.L + 4 * (cϱ / p.w) := by
  have hL := hF.L_pos
  have hw : 0 < p.w := by linarith [hF.one_le_w]
  have hc : (0:ℝ) ≤ cϱ := by linarith [hF.four_le_cϱ]
  set f : ℝ → ℝ := fun s => psiA cϱ p s * Real.sqrt s with hf
  have h1 : (fun r => psiA cϱ p r * Real.sqrt |r|) = fun r => f |r| := by
    funext r; simp only [hf, psiA_abs]
  rw [h1, integral_comp_abs]
  have hint0 : IntegrableOn f (Ioi 0) := by
    have := (integrable_psiA_mul_sqrt hF).integrableOn (s := Ioi 0)
    refine this.congr_fun (fun s hs => ?_) measurableSet_Ioi
    simp only [hf]; rw [abs_of_pos (Set.mem_Ioi.mp hs)]
  have hsplit : ∫ s in Ioi 0, f s = (∫ s in Ioc 0 1, f s) + ∫ s in Ioi 1, f s := by
    rw [← setIntegral_union ?_ measurableSet_Ioi (hint0.mono_set Ioc_subset_Ioi_self)
      (hint0.mono_set (Ioi_subset_Ioi zero_le_one)), Ioc_union_Ioi_eq_Ioi zero_le_one]
    exact Set.disjoint_left.mpr fun x hx hx' => not_lt.mpr hx.2 hx'
  have hb1 : ∫ s in Ioc 0 1, f s ≤ p.L := by
    have hvol : volume (Ioc (0:ℝ) 1) ≠ ⊤ := by rw [Real.volume_Ioc]; exact ENNReal.ofReal_ne_top
    calc ∫ s in Ioc 0 1, f s ≤ ∫ s in Ioc (0:ℝ) 1, p.L := by
          apply setIntegral_mono_on (hint0.mono_set Ioc_subset_Ioi_self)
            (integrableOn_const hvol) measurableSet_Ioc
          intro s hs
          simp only [hf]
          calc psiA cϱ p s * Real.sqrt s ≤ p.L * 1 := by
                apply mul_le_mul (psiA_le_L s) _ (Real.sqrt_nonneg _) hL.le
                rw [← Real.sqrt_one]; exact Real.sqrt_le_sqrt hs.2
            _ = p.L := mul_one _
      _ = p.L := by
          rw [setIntegral_const]
          simp [Measure.real, Real.volume_Ioc]
  have hb2 : ∫ s in Ioi 1, f s ≤ cϱ / p.w * 2 := by
    have hrpow := integral_Ioi_rpow_of_lt (by norm_num : (-(3/2):ℝ) < -1) one_pos
    calc ∫ s in Ioi 1, f s ≤ ∫ s in Ioi (1:ℝ), cϱ / p.w * s ^ (-(3/2):ℝ) := by
          apply setIntegral_mono_on (hint0.mono_set (Ioi_subset_Ioi zero_le_one))
            ((integrableOn_Ioi_rpow_of_lt (by norm_num) one_pos).const_mul _) measurableSet_Ioi
          intro r hr
          have hr1 : (1 : ℝ) < r := hr
          have hr0 : (0 : ℝ) < r := by linarith
          have hψ : psiA cϱ p r ≤ cϱ / (p.w * r ^ 2) := psiA_le_div_sq (by linarith)
          have h2 : Real.sqrt r = r ^ (1 / 2 : ℝ) := Real.sqrt_eq_rpow r
          simp only [hf]
          calc psiA cϱ p r * Real.sqrt r ≤ cϱ / (p.w * r ^ 2) * r ^ (1 / 2 : ℝ) := by
                rw [h2]; gcongr
            _ = (cϱ / p.w) * r ^ (-(3 / 2) : ℝ) := by
                rw [show (-(3 / 2) : ℝ) = 1 / 2 - 2 by norm_num, Real.rpow_sub hr0, Real.rpow_two]
                field_simp
      _ = cϱ / p.w * ∫ s in Ioi (1:ℝ), s ^ (-(3/2):ℝ) := integral_const_mul _ _
      _ = cϱ / p.w * 2 := by rw [hrpow, Real.one_rpow]; norm_num
  rw [hsplit]
  linarith

/-- **N1, master form** (§5.3, "the second factor is ≤ 3Ψ₀B uniformly in k"): for a ∈ [T,2T] and any level
`B` with `L ≤ 2B`, `4 ≤ B`,   ∫_ℝ ψ(τ−a)|ν(τ)| dτ ≤ (2(4 + 2 log(c_ϱL/4w)) + 7c_ϱ)·B.
(The two paper regimes are the corollaries `nu_weight_bound` (B ≥ l ≥ L/2) and `nu_weight_bound_L` (B ≥ L).) -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/EndsNu/Variant3f0951657416d18525294a44d36cfd72beeb015d63604acdb87b13ddf9706f9b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/EndsNu/Variant3f0951657416d18525294a44d36cfd72beeb015d63604acdb87b13ddf9706f9b.lean#L55).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `63016c230313d48ce8fede3551c3ee7496c7b37b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
