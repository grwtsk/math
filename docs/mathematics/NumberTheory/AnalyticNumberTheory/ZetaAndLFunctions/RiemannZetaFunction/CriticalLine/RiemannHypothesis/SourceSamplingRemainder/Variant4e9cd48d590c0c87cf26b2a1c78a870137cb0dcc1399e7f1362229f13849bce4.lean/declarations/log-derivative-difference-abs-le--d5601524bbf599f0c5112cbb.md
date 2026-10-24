# log_derivative_difference_abs_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a60b79767177e2a916d820ba6b4d63163d91412e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 101,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/4e/4e9cd48d590c0c87cf26b2a1c78a870137cb0dcc1399e7f1362229f13849bce4.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:079bc569-b664-b2d4-7e65-4fecb8f63749",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ac874608-d835-7446-0c2b-0821b8182e62",
  "kind": "theorem",
  "lexical_name": "log_derivative_difference_abs_le",
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
  "slug": "log-derivative-difference-abs-le--d5601524bbf599f0c5112cbb",
  "source": {
    "blob": "a60b79767177e2a916d820ba6b4d63163d91412e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 132,
    "line": 101,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceSamplingRemainder/Variant4e9cd48d590c0c87cf26b2a1c78a870137cb0dcc1399e7f1362229f13849bce4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d5601524bbf599f0c5112cbb74a12a9d588228fc05d1ffa038c6f94bb1e1c807",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceSamplingRemainder/Variant4e9cd48d590c0c87cf26b2a1c78a870137cb0dcc1399e7f1362229f13849bce4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ac874608-d835-7446-0c2b-0821b8182e62`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 101–132.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem log_derivative_difference_abs_le {A k u : ℝ} (hA : 1 ≤ A)
    (hk : 0 < k) (hu : 0 < u) :
    |deriv (logProfile A k) u - logModelDerivative A k u| ≤
      (162826 / 7623 : ℝ) / (A ^ 2 * Real.sqrt k) * u ^ (-3 / 2 : ℝ) *
        (3 / 2 * (Real.log u) ^ 2 + |Real.log u| ^ 3 / 4) := by
  have hweight : 0 ≤ 1 / Real.sqrt k * u ^ (-3 / 2 : ℝ) := by positivity
  have hR := correlationTaylorRemainder_abs_le hA (Real.log k) (Real.log u)
  have hd := sourceCorrelation_deriv_increment_bound hA (Real.log k) (Real.log u)
  have hy : |1 - Real.log u / 2| ≤ 1 + |Real.log u| / 2 := by
    simpa only [abs_one, abs_div, abs_of_pos (by norm_num : (0 : ℝ) < 2)] using
      abs_sub (1 : ℝ) (Real.log u / 2)
  rw [log_derivative_difference hA hk hu, abs_mul, abs_of_nonneg hweight]
  calc
    _ ≤ (1 / Real.sqrt k * u ^ (-3 / 2 : ℝ)) *
        (|1 - Real.log u / 2| * |correlationTaylorRemainder A (Real.log k) (Real.log u)| +
          |Real.log u| *
            |deriv (sourceCorrelation explicitSecondDerivative A) (Real.log k + Real.log u) -
              deriv (sourceCorrelation explicitSecondDerivative A) (Real.log k)|) := by
      apply mul_le_mul_of_nonneg_left _ hweight
      simpa only [abs_mul] using abs_add_le
        ((1 - Real.log u / 2) * correlationTaylorRemainder A (Real.log k) (Real.log u))
        (Real.log u *
          (deriv (sourceCorrelation explicitSecondDerivative A) (Real.log k + Real.log u) -
            deriv (sourceCorrelation explicitSecondDerivative A) (Real.log k)))
    _ ≤ (1 / Real.sqrt k * u ^ (-3 / 2 : ℝ)) *
        ((1 + |Real.log u| / 2) *
          (162826 / (7623 * A ^ 2) * (Real.log u) ^ 2 / 2) +
          |Real.log u| * (162826 / (7623 * A ^ 2) * |Real.log u|)) := by
      gcongr
    _ = _ := by rw [← sq_abs (Real.log u)]; ring

end FormalResearch.RiemannHypothesis.SourceSamplingRemainder
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceSamplingRemainder/Variant4e9cd48d590c0c87cf26b2a1c78a870137cb0dcc1399e7f1362229f13849bce4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceSamplingRemainder/Variant4e9cd48d590c0c87cf26b2a1c78a870137cb0dcc1399e7f1362229f13849bce4.lean#L101).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a60b79767177e2a916d820ba6b4d63163d91412e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
