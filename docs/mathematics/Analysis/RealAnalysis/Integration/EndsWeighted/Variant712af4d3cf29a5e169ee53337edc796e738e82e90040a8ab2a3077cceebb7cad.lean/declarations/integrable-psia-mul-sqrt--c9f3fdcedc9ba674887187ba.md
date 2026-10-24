# integrable_psiA_mul_sqrt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2278475a5def48b05af157cb9bfffefd6023b35b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 101,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/71/712af4d3cf29a5e169ee53337edc796e738e82e90040a8ab2a3077cceebb7cad.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ff297329-71fb-6c4e-85fc-25997bffb445",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b978d4b9-2730-f3dd-041b-9a917d11ef55",
  "kind": "theorem",
  "lexical_name": "integrable_psiA_mul_sqrt",
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
  "slug": "integrable-psia-mul-sqrt--c9f3fdcedc9ba674887187ba",
  "source": {
    "blob": "2278475a5def48b05af157cb9bfffefd6023b35b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 154,
    "line": 101,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/EndsWeighted/Variant712af4d3cf29a5e169ee53337edc796e738e82e90040a8ab2a3077cceebb7cad.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c9f3fdcedc9ba674887187ba36314e8dca6dbbd1860e4e03e7d6747cefe0f6a7",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/EndsWeighted/Variant712af4d3cf29a5e169ee53337edc796e738e82e90040a8ab2a3077cceebb7cad.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b978d4b9-2730-f3dd-041b-9a917d11ef55`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 101–154.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem integrable_psiA_mul_sqrt (hF : LocalHypsCoreW cϱ p F) :
    Integrable (fun r : ℝ => psiA cϱ p r * Real.sqrt |r|) := by
  have hL := hF.L_pos
  have hw : 0 < p.w := by linarith [hF.one_le_w]
  have hc : (0 : ℝ) ≤ cϱ := by linarith [hF.four_le_cϱ]
  have hmeas : AEStronglyMeasurable (fun r : ℝ => psiA cϱ p r * Real.sqrt |r|) volume :=
    (psiA_aestronglyMeasurable hF).mul
      (Real.continuous_sqrt.comp continuous_abs).aestronglyMeasurable
  have hnn : ∀ r : ℝ, 0 ≤ psiA cϱ p r * Real.sqrt |r| :=
    fun r => mul_nonneg (psiA_nonneg hL.le hc hw r) (Real.sqrt_nonneg _)
  have heven : ∀ r : ℝ, psiA cϱ p (-r) * Real.sqrt |(-r)| = psiA cϱ p r * Real.sqrt |r| := by
    intro r; rw [psiA_even, abs_neg]
  have htail : ∀ r : ℝ, r ∈ Ioi (1 : ℝ) →
      psiA cϱ p r * Real.sqrt |r| ≤ (cϱ / p.w) * r ^ (-(3 / 2) : ℝ) := by
    intro r hr
    have hr1 : (1 : ℝ) < r := hr
    have hr0 : (0 : ℝ) < r := by linarith
    have h1 : psiA cϱ p r ≤ cϱ / (p.w * r ^ 2) := psiA_le_div_sq (by linarith)
    have h2 : Real.sqrt |r| = r ^ (1 / 2 : ℝ) := by
      rw [abs_of_pos hr0, Real.sqrt_eq_rpow]
    calc psiA cϱ p r * Real.sqrt |r| ≤ cϱ / (p.w * r ^ 2) * r ^ (1 / 2 : ℝ) := by
          rw [h2]; gcongr
      _ = (cϱ / p.w) * r ^ (-(3 / 2) : ℝ) := by
          rw [show (-(3 / 2) : ℝ) = 1 / 2 - 2 by norm_num, Real.rpow_sub hr0, Real.rpow_two]
          field_simp
  have hIoi : IntegrableOn (fun r : ℝ => psiA cϱ p r * Real.sqrt |r|) (Ioi 1) := by
    refine ((integrableOn_Ioi_rpow_of_lt (by norm_num : (-(3 / 2) : ℝ) < -1)
      one_pos).const_mul (cϱ / p.w)).mono' hmeas.restrict ?_
    filter_upwards [ae_restrict_mem measurableSet_Ioi] with r hr
    rw [Real.norm_eq_abs, abs_of_nonneg (hnn r)]
    exact htail r hr
  have hIio : IntegrableOn (fun r : ℝ => psiA cϱ p r * Real.sqrt |r|) (Iio (-1)) := by
    have hIoi' : IntegrableOn (fun r : ℝ => psiA cϱ p r * Real.sqrt |r|) (Ioi (-(-1) : ℝ)) := by
      rw [neg_neg]; exact hIoi
    have h := hIoi'.comp_neg_Iio
    exact h.congr_fun (fun r _ => heven r) measurableSet_Iio
  have hIcc : IntegrableOn (fun r : ℝ => psiA cϱ p r * Real.sqrt |r|) (Icc (-1) 1) := by
    have hconst : IntegrableOn (fun _ : ℝ => p.L) (Icc (-1 : ℝ) 1) :=
      integrableOn_const (by rw [Real.volume_Icc]; exact ENNReal.ofReal_ne_top)
    refine hconst.mono' hmeas.restrict ?_
    filter_upwards [ae_restrict_mem measurableSet_Icc] with r hr
    rw [Real.norm_eq_abs, abs_of_nonneg (hnn r)]
    calc psiA cϱ p r * Real.sqrt |r| ≤ p.L * 1 := by
          refine mul_le_mul (psiA_le_L r) ?_ (Real.sqrt_nonneg _) hL.le
          rw [show (1 : ℝ) = Real.sqrt 1 from Real.sqrt_one.symm]
          exact Real.sqrt_le_sqrt (abs_le.mpr ⟨hr.1, hr.2⟩)
      _ = p.L := mul_one _
  have hall : IntegrableOn (fun r : ℝ => psiA cϱ p r * Real.sqrt |r|) univ := by
    rw [show (univ : Set ℝ) = Iio (-1) ∪ (Icc (-1) 1 ∪ Ioi 1) from ?_]
    · exact hIio.union (hIcc.union hIoi)
    · rw [Set.Icc_union_Ioi_eq_Ici (by norm_num : (-1 : ℝ) ≤ 1), Set.Iio_union_Ici]
  rwa [integrableOn_univ] at hall

/-- ψ(· − a)·|ν| is integrable, for a ∈ [T, 2T]. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/EndsWeighted/Variant712af4d3cf29a5e169ee53337edc796e738e82e90040a8ab2a3077cceebb7cad.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/EndsWeighted/Variant712af4d3cf29a5e169ee53337edc796e738e82e90040a8ab2a3077cceebb7cad.lean#L101).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2278475a5def48b05af157cb9bfffefd6023b35b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
