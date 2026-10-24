# ioiIntegrable_inv_log_pow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9b6f9577-567c-8862-9189-67a7a4dbf7c8",
  "kind": "theorem",
  "lexical_name": "ioiIntegrable_inv_log_pow",
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
  "slug": "ioiintegrable-inv-log-pow--08c143570eb9b82402b6af91",
  "source": {
    "blob": "c0704692114bca6c8ed8a8e14715cb316b48f6a3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 661,
    "line": 635,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/RosserSchoenfeldPrime/Variant6b2a1c084de44bb6f172823734de33966085c204039725e5df61aa3044a072b5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:08c143570eb9b82402b6af91993507f74e27844a892b5207382bf06264c2ca4b",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/RosserSchoenfeldPrime/Variant6b2a1c084de44bb6f172823734de33966085c204039725e5df61aa3044a072b5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9b6f9577-567c-8862-9189-67a7a4dbf7c8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 635–661.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ioiIntegrable_inv_log_pow {n : ℕ} (hn : 1 < n) {x : ℝ} (hx : 1 < x) :
    IntegrableOn (fun t ↦ 1 / (t * Real.log t ^ n)) (Set.Ioi x) volume := by
  refine integrableOn_Ioi_of_intervalIntegral_norm_tendsto (log x ^ (1 - (n : ℝ)) / (n - 1)) x
    (fun k => ?_) tendsto_natCast_atTop_atTop ?_
  · simpa using intervalIntegrable_inv_log_pow 1 n hx k
  · have : 0 < (n : ℝ) - 1 := by linarith [(one_lt_cast (α := ℝ)).2 hn]
    refine Tendsto.congr' (f₁ := fun i : ℕ => (log i : ℝ) ^ (1 - (n : ℝ)) / (1 - (n : ℝ)) -
      (log x) ^ (1 - (n : ℝ)) / (1 - (n : ℝ))) ?_ ?_
    · have := tendsto_def.1 tendsto_natCast_atTop_atTop (Set.Ici x) (Ici_mem_atTop x)
      filter_upwards [this] with i hi
      refine (intervalIntegral.integral_eq_sub_of_hasDerivAt
        (f := fun r => log r ^ (1 - (n : ℝ)) / (1 - (n : ℝ))) (fun z hz => ?_) ?_).symm
      · simp_all only [preimage_Ici, Set.mem_Ici, ceil_le, Set.uIcc_of_le, Set.mem_Icc]
        have := Real.log_pos (by linarith)
        rw [norm_of_nonneg <| one_div_nonneg.2 (mul_nonneg (by grind) (pow_nonneg this.le n))]
        refine (((hasDerivAt_log (by grind)).rpow_const (by grind)).div_const _).congr_deriv ?_
        have : 1 - (n : ℝ) ≠ 0 := by linarith
        simp [field]
      · apply IntervalIntegrable.norm
        simpa using (intervalIntegrable_iff_integrableOn_Ioc_of_le hi).2
          (intervalIntegrable_inv_log_pow 1 n hx i)
    · suffices h : Tendsto (fun i : ℕ ↦ Real.log i ^ (1 - (n : ℝ)) / (1 - n)) atTop (𝓝 0) from by
        have : (log x ^ (1 - (n : ℝ)) / (n - 1)) = 0 - (log x ^ (1 - (n : ℝ)) / (1 - n)) := by grind
        exact this ▸ h.sub_const (log x ^ (1 - (n : ℝ)) / (1 - n))
      simpa using (((tendsto_rpow_neg_atTop this).comp tendsto_log_atTop).comp
        tendsto_natCast_atTop_atTop).div_const (1 - (n : ℝ))

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/RosserSchoenfeldPrime/Variant6b2a1c084de44bb6f172823734de33966085c204039725e5df61aa3044a072b5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/RosserSchoenfeldPrime/Variant6b2a1c084de44bb6f172823734de33966085c204039725e5df61aa3044a072b5.lean#L635).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c0704692114bca6c8ed8a8e14715cb316b48f6a3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
