# pi_lower

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "453e830095347a4b4868e31bd20aa3dede73817f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 476,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/5f/5f91bddfe86f40f2999d0c7ad3ed85a7ba0ae27bc2c2e15e84c22b4be1157a92.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:777f5fbe-b409-1a53-f693-a61bbeb2a137",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:5666d761-372b-89bf-ffe2-821ae65e51d6",
  "kind": "theorem",
  "lexical_name": "pi_lower",
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
  "slug": "pi-lower--4734c7f03ad7a5ada607a461",
  "source": {
    "blob": "453e830095347a4b4868e31bd20aa3dede73817f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 537,
    "line": 476,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/RamanujanCalculations/Variant5f91bddfe86f40f2999d0c7ad3ed85a7ba0ae27bc2c2e15e84c22b4be1157a92.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4734c7f03ad7a5ada607a461d20f4d4afa7ae9b00c2807ff1529693b0e46528e",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/RamanujanCalculations/Variant5f91bddfe86f40f2999d0c7ad3ed85a7ba0ae27bc2c2e15e84c22b4be1157a92.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5666d761-372b-89bf-ffe2-821ae65e51d6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 476–537.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem pi_lower (a : ℝ → ℝ) (htheta : ∀ x ≥ 2, |θ x - x| * log x ^ 5 ≤ x * a x) (x : ℝ)
    (ha : IntegrableOn (fun t ↦ a t / log t ^ 7) (Icc 2 x) volume)
    (hx : 2 ≤ x) :
    pi x ≥ x / log x - a x * x / log x ^ 6 + (∫ t in Icc 2 x, 1 / log t ^ 2) - ∫ t in Icc 2 x, a t / log t ^ 7 := by
  have h1 : (θ x - x) / log x ≥ - (x * a x / log x ^ 6) := by
    have hlog_pos : 0 < log x := log_pos (by linarith)
    have h1a : (θ x - x) / log x ≥ - (|θ x - x| / log x) := by
      have h1a1 : - |θ x - x| ≤ (θ x - x) := neg_abs_le (θ x - x)
      have h : (- |θ x - x|) / log x ≤ (θ x - x) / log x := div_le_div_of_nonneg_right h1a1 hlog_pos.le
      have h' : (- |θ x - x|) / log x = - (|θ x - x| / log x) := by field_simp [hlog_pos.ne']
      rw [h'] at h; exact h.ge
    have h1b : |θ x - x| * log x ^ 5 ≤ x * a x := htheta x hx
    have h1c : |θ x - x| / log x ≤ (x * a x) / log x ^ 6 := by
      have h1c1 : |θ x - x| ≤ (x * a x) / log x ^ 5 := by
        have h1c2 : 0 < log x ^ 5 := by positivity
        calc
          |θ x - x| = (|θ x - x| * log x ^ 5) / log x ^ 5 := by field_simp [hlog_pos.ne']
          _ ≤ (x * a x) / log x ^ 5 := by gcongr
      calc
        |θ x - x| / log x ≤ ((x * a x) / log x ^ 5) / log x := by gcongr
        _ = (x * a x) / log x ^ 6 := by field_simp [pow_succ, hlog_pos.ne']
    have h1d : - (|θ x - x| / log x) ≥ - ((x * a x) / log x ^ 6) := by gcongr
    linarith
  have h_int_abs : IntegrableOn (fun t : ℝ ↦ |(θ t - t) / (t * log t ^ 2)|) (Icc 2 x) volume := integrable_theta x |>.abs
  have h_neg_abs_int : IntegrableOn (fun t : ℝ ↦ - |(θ t - t) / (t * log t ^ 2)|) (Icc 2 x) volume := h_int_abs.neg
  have h2a : ∫ t in Icc 2 x, (θ t - t) / (t * log t ^ 2) ≥ - (∫ t in Icc 2 x, |(θ t - t) / (t * log t ^ 2)|) := by
    have h2a1 : ∀ t ∈ Icc 2 x, - |(θ t - t) / (t * log t ^ 2)| ≤ (θ t - t) / (t * log t ^ 2) := fun t _ => neg_abs_le _
    have h2a2 : ∫ t in Icc 2 x, (- |(θ t - t) / (t * log t ^ 2)|) ≤ ∫ t in Icc 2 x, (θ t - t) / (t * log t ^ 2) :=
      MeasureTheory.setIntegral_mono_on h_neg_abs_int (integrable_theta x) measurableSet_Icc h2a1
    have h2a3 : ∫ t in Icc 2 x, (- |(θ t - t) / (t * log t ^ 2)|) = - (∫ t in Icc 2 x, |(θ t - t) / (t * log t ^ 2)|) := by rw [MeasureTheory.integral_neg]
    rw [h2a3] at h2a2; exact h2a2.ge
  have h2b : ∫ t in Icc 2 x, |(θ t - t) / (t * log t ^ 2)| ≤ ∫ t in Icc 2 x, a t / log t ^ 7 :=
    MeasureTheory.setIntegral_mono_on h_int_abs ha measurableSet_Icc (fun t ht => by
      have ht2 : 2 ≤ t := ht.1
      have hlog_t_pos : 0 < log t := log_pos (by linarith)
      have h71 : |θ t - t| * log t ^ 5 ≤ t * a t := htheta t ht2
      have h72 : |θ t - t| ≤ (t * a t) / log t ^ 5 := by
        have h : 0 < log t ^ 5 := by positivity
        calc
          |θ t - t| = (|θ t - t| * log t ^ 5) / log t ^ 5 := by field_simp [hlog_t_pos.ne']
          _ ≤ (t * a t) / log t ^ 5 := by gcongr
      have h73 : |(θ t - t) / (t * log t ^ 2)| = |θ t - t| / (t * log t ^ 2) := by
        have h_t_pos : 0 < t := by linarith
        rw [abs_div, abs_of_pos (show 0 < t * log t ^ 2 from by positivity)]
      rw [h73]
      calc
        |θ t - t| / (t * log t ^ 2) ≤ ((t * a t) / log t ^ 5) / (t * log t ^ 2) := by gcongr
        _ = (t * a t) / (t * log t ^ 7) := by field_simp [pow_succ, hlog_t_pos.ne']
        _ = a t / log t ^ 7 := by
          have h_t_pos : 0 < t := by linarith
          field_simp [h_t_pos.ne'])
  have h2c : - (∫ t in Icc 2 x, |(θ t - t) / (t * log t ^ 2)|) ≥ - (∫ t in Icc 2 x, a t / log t ^ 7) := by gcongr
  have h2 : ∫ t in Icc 2 x, (θ t - t) / (t * log t ^ 2) ≥ - (∫ t in Icc 2 x, a t / log t ^ 7) := by linarith
  calc
    pi x = x / log x + (θ x - x) / log x + (∫ t in Icc 2 x, 1 / log t ^ 2) + ∫ t in Icc 2 x, (θ t - t) / (t * log t ^ 2) := by
      have h_eq1 : pi x - Li x = (θ x - x) / log x + 2 / log 2 + ∫ t in Icc 2 x, (θ t - t) / (t * log t ^ 2) := pi_error_identity x hx
      have h_eq2 : Li x = x / log x - 2 / log 2 + ∫ t in Icc 2 x, 1 / log t ^ 2 := Li_eq_sub_add_integral x hx
      linarith
    _ ≥ x / log x + (- (x * a x / log x ^ 6)) + (∫ t in Icc 2 x, 1 / log t ^ 2) + (- (∫ t in Icc 2 x, a t / log t ^ 7)) := by
      gcongr
    _ = x / log x - a x * x / log x ^ 6 + (∫ t in Icc 2 x, 1 / log t ^ 2) - ∫ t in Icc 2 x, a t / log t ^ 7 := by ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/RamanujanCalculations/Variant5f91bddfe86f40f2999d0c7ad3ed85a7ba0ae27bc2c2e15e84c22b4be1157a92.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/RamanujanCalculations/Variant5f91bddfe86f40f2999d0c7ad3ed85a7ba0ae27bc2c2e15e84c22b4be1157a92.lean#L476).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `453e830095347a4b4868e31bd20aa3dede73817f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
