# mvt_fc_upper_bound_neg_decreasing_core

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:bb54bc0a-90dc-b862-1ac4-3ce712c878c0",
  "kind": "lemma",
  "lexical_name": "mvt_fc_upper_bound_neg_decreasing_core",
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
  "slug": "mvt-fc-upper-bound-neg-decreasing-core--95439597a7520e09393384b0",
  "source": {
    "blob": "5ea4189e45a24c7ff8d1c90dd03058a17967d83f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1559,
    "line": 1523,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Bounds/Variant990312bb045d8addf3167c26a44c5e2e7f79180ecb684e3f9b7ccc8ae5469da0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:95439597a7520e09393384b0f46f94a653d5e273991e177ecbb77f56228a450e",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Bounds/Variant990312bb045d8addf3167c26a44c5e2e7f79180ecb684e3f9b7ccc8ae5469da0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bb54bc0a-90dc-b862-1ac4-3ce712c878c0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1523–1559.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma mvt_fc_upper_bound_neg_decreasing_core
    (e : Expr) (hsupp : ExprSupported e)
    (I : IntervalRat) (cfg : EvalConfig)
    (_hI_nonsingleton : I.lo < I.hi)
    (_hdI_hi_neg : (derivIntervalCore e I cfg).hi < 0)
    (hCont : ContinuousOn (evalFunc1 e) (Set.Icc I.lo I.hi))
    (hf_Ilo_neg : evalFunc1 e I.lo < 0) :
    let c : ℚ := I.midpoint
    let hw : ℚ := (I.hi - I.lo) / 2
    let dI := derivIntervalCore e I cfg
    evalFunc1 e c < (dI.hi : ℝ) * hw := by
  intro c hw dI
  have hderiv_hi : ∀ ξ ∈ I, deriv (evalFunc1 e) ξ ≤ (dI.hi : ℝ) := fun ξ hξ =>
    (derivIntervalCore_correct e hsupp I ξ hξ cfg).2
  have hc_in_I : (c : ℝ) ∈ I := IntervalRat.midpoint_mem I
  have hIlo_in_I : (I.lo : ℝ) ∈ I := by
    simp only [IntervalRat.mem_def]
    exact ⟨le_refl _, by exact_mod_cast I.le⟩
  have hIlo_le_c : (I.lo : ℝ) ≤ c := by
    have hle : (I.lo : ℝ) ≤ I.hi := by exact_mod_cast I.le
    have hc_def : (c : ℝ) = ((I.lo : ℝ) + I.hi) / 2 := by
      show ((I.lo + I.hi) / 2 : ℚ) = ((I.lo : ℝ) + I.hi) / 2; push_cast; ring
    linarith
  have hmvt := mvt_upper_bound_core e hsupp I cfg hCont I.lo c hIlo_in_I hc_in_I hIlo_le_c
  have hc_minus_Ilo : (c : ℝ) - I.lo = hw := by
    have hc_def : (c : ℝ) = ((I.lo : ℝ) + I.hi) / 2 := by
      show ((I.lo + I.hi) / 2 : ℚ) = ((I.lo : ℝ) + I.hi) / 2; push_cast; ring
    have hhw_def : (hw : ℝ) = ((I.hi : ℝ) - I.lo) / 2 := by
      show (((I.hi - I.lo) / 2 : ℚ) : ℝ) = ((I.hi : ℝ) - I.lo) / 2; push_cast; ring
    linarith
  rw [hc_minus_Ilo] at hmvt
  calc evalFunc1 e c ≤ evalFunc1 e I.lo + dI.hi * hw := by linarith
    _ < 0 + dI.hi * hw := by linarith
    _ = dI.hi * hw := by ring

/-- MVT bound using Core functions: If f' ≤ dI.hi < 0 (decreasing) and f(I.hi) > 0,
    then f(c) > 0 and more specifically, fc.hi / dI.hi ≤ -hw. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Bounds/Variant990312bb045d8addf3167c26a44c5e2e7f79180ecb684e3f9b7ccc8ae5469da0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Bounds/Variant990312bb045d8addf3167c26a44c5e2e7f79180ecb684e3f9b7ccc8ae5469da0.lean#L1523).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5ea4189e45a24c7ff8d1c90dd03058a17967d83f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
