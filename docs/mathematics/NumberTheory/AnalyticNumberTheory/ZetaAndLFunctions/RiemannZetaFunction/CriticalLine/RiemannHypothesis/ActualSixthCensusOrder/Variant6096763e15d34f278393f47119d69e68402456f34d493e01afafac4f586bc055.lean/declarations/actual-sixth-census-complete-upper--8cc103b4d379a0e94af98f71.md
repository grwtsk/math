# actual_sixth_census_complete_upper

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0f3ac9a3-8758-b518-0236-8b785e866533",
  "kind": "theorem",
  "lexical_name": "actual_sixth_census_complete_upper",
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
  "slug": "actual-sixth-census-complete-upper--8cc103b4d379a0e94af98f71",
  "source": {
    "blob": "ac073defd5ee3f5d5897294cd67dd1ed70970fb4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 78,
    "line": 62,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualSixthCensusOrder/Variant6096763e15d34f278393f47119d69e68402456f34d493e01afafac4f586bc055.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8cc103b4d379a0e94af98f712886c8adbeadc974adef3fd53bc27ddabab44bac",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualSixthCensusOrder/Variant6096763e15d34f278393f47119d69e68402456f34d493e01afafac4f586bc055.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0f3ac9a3-8758-b518-0236-8b785e866533`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 62–78.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_sixth_census_complete_upper {A : ℝ} (hA : 8 ≤ A) :
    actualCensus A 6 ≤ (max 1 (upperConstant (1 / 6)) / 6) *
      (Real.exp (A / 3) / A ^ 9) + 15 := by
  have hA1 : 1 ≤ A := by linarith
  have hc := actual_complete_census_moment_error_le_fifteen hA
    (by norm_num : (0 : ℝ) < 6) (by norm_num)
  have hm := actual_laplace_square_le_full_absolute_norm hA1 (1 / 6)
  have hn := full_actual_weighted_norm_upper hA1 (by norm_num : (0 : ℝ) < 1 / 6)
  have he : 2 * (1 / 6 : ℝ) * A = A / 3 := by ring
  rw [he] at hn
  have hprice0 : 0 ≤ Real.exp (A / 3) / A ^ 9 := by positivity
  have hu := mul_le_mul_of_nonneg_left (le_max_right 1 (upperConstant (1 / 6))) hprice0
  have hn' : normPrice A (1 / 6) ≤ max 1 (upperConstant (1 / 6)) *
      (Real.exp (A / 3) / A ^ 9) := hn.trans (by simpa only [mul_comm] using hu)
  have ht := (abs_le.mp hc).2
  nlinarith

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualSixthCensusOrder/Variant6096763e15d34f278393f47119d69e68402456f34d493e01afafac4f586bc055.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualSixthCensusOrder/Variant6096763e15d34f278393f47119d69e68402456f34d493e01afafac4f586bc055.lean#L62).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ac073defd5ee3f5d5897294cd67dd1ed70970fb4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
