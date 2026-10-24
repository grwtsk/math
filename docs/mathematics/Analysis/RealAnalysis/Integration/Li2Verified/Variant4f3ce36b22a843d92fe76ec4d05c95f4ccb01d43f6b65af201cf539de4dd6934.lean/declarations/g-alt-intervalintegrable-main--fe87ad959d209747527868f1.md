# g_alt_intervalIntegrable_main

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d8eb251967f2b49e0bad95e0d200c55fb0536be4",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 495,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/4f/4f3ce36b22a843d92fe76ec4d05c95f4ccb01d43f6b65af201cf539de4dd6934.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:afc689a8-de97-f999-8530-0cf53133a6ce",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0e97582f-f4aa-cabf-b71c-433bf9f65424",
  "kind": "theorem",
  "lexical_name": "g_alt_intervalIntegrable_main",
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
  "slug": "g-alt-intervalintegrable-main--fe87ad959d209747527868f1",
  "source": {
    "blob": "d8eb251967f2b49e0bad95e0d200c55fb0536be4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 543,
    "line": 495,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Li2Verified/Variant4f3ce36b22a843d92fe76ec4d05c95f4ccb01d43f6b65af201cf539de4dd6934.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fe87ad959d209747527868f12e17a756b1c443287f3619235806a409a445c322",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Li2Verified/Variant4f3ce36b22a843d92fe76ec4d05c95f4ccb01d43f6b65af201cf539de4dd6934.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0e97582f-f4aa-cabf-b71c-433bf9f65424`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 495–543.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem g_alt_intervalIntegrable_main :
    IntervalIntegrable (fun x => Expr.eval (fun _ => x) g_alt_expr) volume
      (g_mid_interval_main.lo : ℝ) (g_mid_interval_main.hi : ℝ) := by
  have heq : ∀ t, t ∈ Set.Ioo (g_mid_interval_main.lo : ℝ) (g_mid_interval_main.hi : ℝ) →
      Expr.eval (fun _ => t) g_alt_expr = g t := by
    intro t ht
    have hlo : (g_mid_interval_main.lo : ℝ) = 1/1000 := by norm_num [g_mid_interval_main]
    have hhi : (g_mid_interval_main.hi : ℝ) = 999/1000 := by norm_num [g_mid_interval_main]
    rw [hlo, hhi] at ht
    have hpos : 0 < t := by linarith [ht.1]
    have hlt1 : t < 1 := by linarith [ht.2]
    exact g_alt_expr_eval t hpos hlt1
  have hmeas_alt : Measurable (fun x => Expr.eval (fun _ => x) g_alt_expr) := by
    have h1_eq : (↑(1:ℚ) : ℝ) = (1:ℝ) := by norm_cast
    simp only [g_alt_expr, Expr.eval, h1_eq]
    have hmeas_log_num : Measurable (fun t : ℝ => Real.log (1 + -(t * t))) :=
      Real.measurable_log.comp (measurable_const.add (measurable_id.mul measurable_id).neg)
    have hmeas_log1p : Measurable (fun t : ℝ => Real.log (1 + t)) :=
      Real.measurable_log.comp (measurable_const.add measurable_id)
    have hmeas_log1m : Measurable (fun t : ℝ => Real.log (1 + -t)) :=
      Real.measurable_log.comp (measurable_const.add measurable_id.neg)
    have hmeas_denom : Measurable (fun t : ℝ => Real.log (1 + t) * Real.log (1 + -t)) :=
      hmeas_log1p.mul hmeas_log1m
    have hmeas_inv_denom : Measurable (fun t : ℝ => (Real.log (1 + t) * Real.log (1 + -t))⁻¹) :=
      hmeas_denom.inv
    exact hmeas_log_num.mul hmeas_inv_denom
  have hInt_Ioo : IntegrableOn (fun x => Expr.eval (fun _ => x) g_alt_expr)
      (Set.Ioo (g_mid_interval_main.lo : ℝ) (g_mid_interval_main.hi : ℝ)) volume := by
    apply Measure.integrableOn_of_bounded
    · exact measure_Ioo_lt_top.ne
    · exact hmeas_alt.aestronglyMeasurable
    · refine (ae_restrict_iff' measurableSet_Ioo).2 ?_
      exact ae_of_all _ (fun t ht => by
        rw [heq t ht]
        have hlo : (g_mid_interval_main.lo : ℝ) = 1/1000 := by norm_num [g_mid_interval_main]
        have hhi : (g_mid_interval_main.hi : ℝ) = 999/1000 := by norm_num [g_mid_interval_main]
        rw [hlo, hhi] at ht
        have hpos : 0 < t := by linarith [ht.1]
        have hlt1 : t < 1 := by linarith [ht.2]
        have hg_pos := g_pos t hpos hlt1
        have hg_le := g_le_two t hpos hlt1
        simpa [Real.norm_eq_abs, abs_of_pos hg_pos] using hg_le)
  have hab : (g_mid_interval_main.lo : ℝ) ≤ g_mid_interval_main.hi := by
    exact_mod_cast g_mid_interval_main.le
  exact (intervalIntegrable_iff_integrableOn_Ioo_of_le hab).2 hInt_Ioo

set_option maxHeartbeats 4000000 in
/-- Verified lower bound on ∫[1/1000, 999/1000] g(t) dt.
    Uses proven Dyadic interval arithmetic for ~4x speedup over rational backend. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Li2Verified/Variant4f3ce36b22a843d92fe76ec4d05c95f4ccb01d43f6b65af201cf539de4dd6934.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Li2Verified/Variant4f3ce36b22a843d92fe76ec4d05c95f4ccb01d43f6b65af201cf539de4dd6934.lean#L495).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d8eb251967f2b49e0bad95e0d200c55fb0536be4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
