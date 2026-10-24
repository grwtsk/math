# exponential_kernel_hasSum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:edd1d380-691f-4d29-6f23-13aa925bafc4",
  "kind": "theorem",
  "lexical_name": "exponential_kernel_hasSum",
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
  "slug": "exponential-kernel-hassum--b4fc4819c1f403632cd69783",
  "source": {
    "blob": "c70e08db4799cc29734ccf60b10bdf6bd0704ff7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 158,
    "line": 136,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/CompensatedGammaIntegral/Variant568be206afdf152f927eaf71685bfa60e52641b1c31f90387245ee5510a1651e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b4fc4819c1f403632cd69783c47a2b5d1280a2671d53757915c971b2485157de",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/CompensatedGammaIntegral/Variant568be206afdf152f927eaf71685bfa60e52641b1c31f90387245ee5510a1651e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:edd1d380-691f-4d29-6f23-13aa925bafc4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 136–158.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exponential_kernel_hasSum {t : ℝ} (ht : 0 < t) :
    HasSum (fun n : ℕ ↦ Real.exp (-physicalRate n * t)) (1 / (Real.exp (2 * t) - 1)) := by
  have hq : |Real.exp (-2 * t)| < 1 := by
    rw [abs_of_pos (Real.exp_pos _)]
    simpa using Real.exp_lt_exp.mpr (by linarith : -2 * t < 0)
  have h := (hasSum_geometric_of_abs_lt_one hq).mul_left (Real.exp (-2 * t))
  have hr : Real.exp (2 * t) - 1 ≠ 0 := by
    exact ne_of_gt (sub_pos.mpr (by simpa using Real.exp_lt_exp.mpr (by linarith : 0 < 2 * t)))
  have hfun (n : ℕ) : Real.exp (-physicalRate n * t) =
      Real.exp (-2 * t) * Real.exp (-2 * t) ^ n := by
    have he : -physicalRate n * t = ((n + 1 : ℕ) : ℝ) * (-2 * t) := by
      unfold physicalRate
      push_cast
      ring
    rw [he, Real.exp_nat_mul]
    simp [pow_succ, mul_comm]
  have hv : Real.exp (-2 * t) * (1 - Real.exp (-2 * t))⁻¹ =
      1 / (Real.exp (2 * t) - 1) := by
    rw [show -2 * t = -(2 * t) by ring, Real.exp_neg]
    field_simp [hr]
  rw [← hv]
  exact h.congr_fun hfun

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/CompensatedGammaIntegral/Variant568be206afdf152f927eaf71685bfa60e52641b1c31f90387245ee5510a1651e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/CompensatedGammaIntegral/Variant568be206afdf152f927eaf71685bfa60e52641b1c31f90387245ee5510a1651e.lean#L136).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c70e08db4799cc29734ccf60b10bdf6bd0704ff7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
