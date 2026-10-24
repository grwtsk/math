# actual_adaptive_depth_ge_four_square

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2d80395d-b09e-557c-8bca-1fab1b4ab2b2",
  "kind": "theorem",
  "lexical_name": "actual_adaptive_depth_ge_four_square",
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
  "slug": "actual-adaptive-depth-ge-four-square--d0808cdb1909ba0f4e34b332",
  "source": {
    "blob": "69f82403d4e1e399958c89922e6045472adfd10a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 41,
    "line": 21,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt02Source/Variant4b63cdfd568bb7a61e0b97980d68d1f5e1166f4c80b06f9bc68ef5e497c8ae15.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d0808cdb1909ba0f4e34b33235087fd8c743dcebe2843536a2b921355f4a5772",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt02Source/Variant4b63cdfd568bb7a61e0b97980d68d1f5e1166f4c80b06f9bc68ef5e497c8ae15.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2d80395d-b09e-557c-8bca-1fab1b4ab2b2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 21–41.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_adaptive_depth_ge_four_square (A : ℝ) (hA : 32 ≤ A) :
    4 * (vaughanCutoff A) ^ 2 ≤ adaptiveMangoldtDepth A := by
  have ha : 0 ≤ A := by linarith
  have hU : (vaughanCutoff A : ℝ) ≤ A ^ 2 := Nat.floor_le (sq_nonneg A)
  have hA2 : 945 ≤ A ^ 2 := by nlinarith
  have hexp := Real.pow_div_factorial_le_exp (2 * A) (by linarith : 0 ≤ 2 * A) 8
  norm_num at hexp
  have hpoly : 6 * A ^ 6 ≤ (2 * A) ^ 8 / (40320 : ℝ) := by
    nlinarith [mul_nonneg (pow_nonneg ha 6) (sub_nonneg.mpr hA2)]
  have hc : (vaughanCutoff A : ℝ) ^ 3 ≤ A ^ 6 := by
    simpa only [← pow_mul] using
      pow_le_pow_left₀ (Nat.cast_nonneg (vaughanCutoff A)) hU 3
  have he : ((4 * (vaughanCutoff A) ^ 3 : ℕ) : ℝ) ≤ Real.exp (2 * A) := by
    push_cast
    nlinarith [pow_nonneg ha 6]
  have hn : 4 * (vaughanCutoff A) ^ 3 ≤ sourceKernelCutoff A := by
    exact (Nat.le_floor_iff (Real.exp_pos (2 * A)).le).mpr he
  unfold adaptiveMangoldtDepth
  apply (Nat.le_div_iff_mul_le (vaughanCutoff_pos A (by linarith : 1 ≤ A))).mpr
  simpa only [pow_succ, Nat.mul_assoc] using hn
end RH16ActualAdaptiveDepthBudget
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt02Source/Variant4b63cdfd568bb7a61e0b97980d68d1f5e1166f4c80b06f9bc68ef5e497c8ae15.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt02Source/Variant4b63cdfd568bb7a61e0b97980d68d1f5e1166f4c80b06f9bc68ef5e497c8ae15.lean#L21).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `69f82403d4e1e399958c89922e6045472adfd10a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
