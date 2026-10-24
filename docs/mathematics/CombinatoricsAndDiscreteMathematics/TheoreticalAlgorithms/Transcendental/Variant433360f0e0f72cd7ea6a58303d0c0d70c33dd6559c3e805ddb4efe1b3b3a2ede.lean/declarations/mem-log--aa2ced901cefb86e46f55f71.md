# mem_log

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6981a512-d898-45b7-bb06-0170035cdfbc",
  "kind": "theorem",
  "lexical_name": "mem_log",
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
  "slug": "mem-log--aa2ced901cefb86e46f55f71",
  "source": {
    "blob": "ea52ba339990d060b7c387fbe9ee10c225d1b912",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 439,
    "line": 379,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Transcendental/Variant433360f0e0f72cd7ea6a58303d0c0d70c33dd6559c3e805ddb4efe1b3b3a2ede.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:aa2ced901cefb86e46f55f711c03de5751f427cd16db3d50e12539af9779b1ff",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Transcendental/Variant433360f0e0f72cd7ea6a58303d0c0d70c33dd6559c3e805ddb4efe1b3b3a2ede.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6981a512-d898-45b7-bb06-0170035cdfbc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 379–439.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mem_log {a : AffineForm} {eps : NoiseAssignment} {v : ℝ}
    (hvalid : validNoise eps)
    (hmem : mem_affine a eps v)
    (_hv_pos : 0 < v)
    (hI_pos : 0 < a.toInterval.lo)
    (_taylorDepth : Nat) :
    mem_affine (log a taylorDepth) eps (Real.log v) := by
  -- Get v ∈ a.toInterval
  have hv_in_I := mem_toInterval_weak hvalid hmem

  -- Construct the positive interval
  let I := a.toInterval
  let I_pos : IntervalRat.IntervalRatPos := ⟨I, hI_pos⟩

  -- Coerce membership proof to the IntervalRatPos type
  have hv_in_I_pos : v ∈ I_pos.toIntervalRat := hv_in_I

  -- Get Real.log v ∈ logInterval I_pos
  have hlog_in := IntervalRat.mem_logInterval hv_in_I_pos

  -- The logInterval
  let logI := IntervalRat.logInterval I_pos
  let mid := (logI.lo + logI.hi) / 2
  let rad := (logI.hi - logI.lo) / 2

  -- The result has coeffs = [], so evalLinear = c0 = mid
  simp only [log, dif_pos hI_pos, mem_affine, evalLinear, linearSum, List.zipWith, List.sum_nil, add_zero]

  simp only [IntervalRat.mem_def] at hlog_in
  have hlo : (logI.lo : ℝ) ≤ Real.log v := hlog_in.1
  have hhi : Real.log v ≤ (logI.hi : ℝ) := hlog_in.2

  use Real.log v - (mid : ℝ)
  constructor
  · -- |Real.log v - mid| ≤ |rad|
    have hrad_nonneg : 0 ≤ rad := by
      simp only [rad]; linarith [logI.le]
    have habs_eq : |((logI.hi - logI.lo) / 2 : ℚ)| = (logI.hi - logI.lo) / 2 := by
      rw [abs_of_nonneg]; linarith [logI.le]

    rw [habs_eq, abs_le]

    have hmid_val : (mid : ℝ) = ((logI.lo : ℝ) + logI.hi) / 2 := by
      simp only [mid]; push_cast; ring

    constructor
    · calc -(((logI.hi - logI.lo) / 2 : ℚ) : ℝ)
          = -((logI.hi : ℝ) - logI.lo) / 2 := by push_cast; ring
        _ = (logI.lo : ℝ) - ((logI.lo : ℝ) + logI.hi) / 2 := by ring
        _ = (logI.lo : ℝ) - (mid : ℝ) := by rw [← hmid_val]
        _ ≤ Real.log v - (mid : ℝ) := by linarith
    · calc Real.log v - (mid : ℝ)
          ≤ (logI.hi : ℝ) - (mid : ℝ) := by linarith
        _ = (logI.hi : ℝ) - ((logI.lo : ℝ) + logI.hi) / 2 := by rw [hmid_val]
        _ = ((logI.hi : ℝ) - logI.lo) / 2 := by ring
        _ = (((logI.hi - logI.lo) / 2 : ℚ) : ℝ) := by push_cast; ring
  · ring

end AffineForm

end LeanCert.Engine.Affine
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Transcendental/Variant433360f0e0f72cd7ea6a58303d0c0d70c33dd6559c3e805ddb4efe1b3b3a2ede.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Transcendental/Variant433360f0e0f72cd7ea6a58303d0c0d70c33dd6559c3e805ddb4efe1b3b3a2ede.lean#L379).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ea52ba339990d060b7c387fbe9ee10c225d1b912` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
