# thetaLogError_moment_integrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:bd2a822d-0ad0-9cf8-4498-41b39254cf83",
  "kind": "theorem",
  "lexical_name": "thetaLogError_moment_integrable",
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
  "slug": "thetalogerror-moment-integrable--67a7d03d06527ae944cc383e",
  "source": {
    "blob": "a5519e889510ec94c21d6792e35e1d4828337f8f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 186,
    "line": 143,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/ThetaErrorMoments/Variant3c353cbb2a46e98e3265a9c70896d55555b7bf681c7df95e040a12e32afc4fb6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:67a7d03d06527ae944cc383e0a6107d9fa67256cb38233ffc2912564958909a2",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/ThetaErrorMoments/Variant3c353cbb2a46e98e3265a9c70896d55555b7bf681c7df95e040a12e32afc4fb6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bd2a822d-0ad0-9cf8-4498-41b39254cf83`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 143–186.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem thetaLogError_moment_integrable (k : ℕ) :
    IntegrableOn (fun u : ℝ => u ^ k * |thetaLogError u|) (Ioi 0) := by
  obtain ⟨c, hc, C, hC, T, hT, hb⟩ := thetaLogError_eventual_bound
  have ht0 : 0 ≤ T := by linarith
  have hsubset : Ioi T ⊆ Ioi (0 : ℝ) := fun _ hu => lt_of_le_of_lt ht0 hu
  have h1 : IntegrableOn (fun u : ℝ => C * (u ^ k * Real.exp (-c * u ^ ((1 : ℝ) / 10))))
      (Ioi 0) := (polynomial_stretched_integrable k c (1 / 10) hc (by norm_num)).const_mul C
  have h2 : IntegrableOn (fun u : ℝ => 2 * (u ^ (k + 1) * Real.exp (-u / 2))) (Ioi 0) := by
    have h : IntegrableOn (fun u : ℝ => 2 * (u ^ (k + 1) * Real.exp (-(1 / 2) * u ^ (1 : ℝ))))
        (Ioi 0) := (polynomial_stretched_integrable (k + 1) (1 / 2) 1
          (by norm_num) (by norm_num)).const_mul 2
    apply h.congr_fun _ measurableSet_Ioi
    intro u _
    simp only [Real.rpow_one]
    congr 3
    ring
  have htail : IntegrableOn (fun u : ℝ => u ^ k * |thetaLogError u|) (Ioi T) := by
    have hm : AEStronglyMeasurable (fun u : ℝ => u ^ k * |thetaLogError u|)
        (volume.restrict (Ioi T)) :=
      ((measurable_id.pow_const k).mul thetaLogError_measurable.abs).aestronglyMeasurable
    have hg : IntegrableOn (fun u : ℝ => C * (u ^ k * Real.exp (-c * u ^ ((1 : ℝ) / 10))) +
        2 * (u ^ (k + 1) * Real.exp (-u / 2))) (Ioi 0) := h1.add h2
    apply (hg.mono_set hsubset).mono' hm
    filter_upwards [ae_restrict_mem measurableSet_Ioi] with u hu
    rw [Real.norm_eq_abs, abs_of_nonneg
      (mul_nonneg (pow_nonneg (hsubset hu).le _) (abs_nonneg _))]
    calc
      _ ≤ u ^ k * (C * Real.exp (-c * u ^ ((1 : ℝ) / 10)) + 2 * u * Real.exp (-u / 2)) :=
        mul_le_mul_of_nonneg_left (hb u hu.le) (pow_nonneg (hsubset hu).le _)
      _ = _ := by simp only [pow_succ]; ring
  have hunion : Ioc (0 : ℝ) T ∪ Ioi T = Ioi 0 := by
    ext u
    simp only [mem_union, mem_Ioc, mem_Ioi]
    constructor
    · rintro (⟨hu, _⟩ | hu)
      · exact hu
      · exact lt_of_le_of_lt ht0 hu
    · intro hu
      by_cases h : u ≤ T
      · exact Or.inl ⟨hu, h⟩
      · exact Or.inr (lt_of_not_ge h)
  rw [← hunion]
  exact (thetaLogError_moment_prefix_integrable k T).union htail

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/ThetaErrorMoments/Variant3c353cbb2a46e98e3265a9c70896d55555b7bf681c7df95e040a12e32afc4fb6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/ThetaErrorMoments/Variant3c353cbb2a46e98e3265a9c70896d55555b7bf681c7df95e040a12e32afc4fb6.lean#L143).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a5519e889510ec94c21d6792e35e1d4828337f8f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
