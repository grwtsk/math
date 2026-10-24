# criticalBaselineCorrection_negative_of_six_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ada42ede-c28d-4799-8617-34dbece0fe57",
  "kind": "theorem",
  "lexical_name": "criticalBaselineCorrection_negative_of_six_le",
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
  "slug": "criticalbaselinecorrection-negative-of-six-le--be30dce2490c3d770f50bf16",
  "source": {
    "blob": "429ea74ac9884d39124891e3fa16451c17a5c6dd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 68,
    "line": 60,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/5db7b7ef1836e6b6fa85SourceCriticalDirectBudget/Variantdd57a3f06ac9e36785eec3324166c1e84f5e85af79941a67e382d76751e4e5c8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:be30dce2490c3d770f50bf16e6707672a3bfc61b2f6a58c62cc81533fcf9d68b",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/5db7b7ef1836e6b6fa85SourceCriticalDirectBudget/Variantdd57a3f06ac9e36785eec3324166c1e84f5e85af79941a67e382d76751e4e5c8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ada42ede-c28d-4799-8617-34dbece0fe57`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 60–68.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem criticalBaselineCorrection_negative_of_six_le (R : ℝ) (hR : 6 ≤ R) :
    criticalBaselineCorrection R < 0 := by
  have hR0 : 0 ≤ R := by linarith
  have h4 : (6 : ℝ) ^ 4 ≤ R ^ 4 := by gcongr
  unfold criticalBaselineCorrection
  apply div_neg_of_neg_of_pos
  · nlinarith
  · positivity

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/5db7b7ef1836e6b6fa85SourceCriticalDirectBudget/Variantdd57a3f06ac9e36785eec3324166c1e84f5e85af79941a67e382d76751e4e5c8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/5db7b7ef1836e6b6fa85SourceCriticalDirectBudget/Variantdd57a3f06ac9e36785eec3324166c1e84f5e85af79941a67e382d76751e4e5c8.lean#L60).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `429ea74ac9884d39124891e3fa16451c17a5c6dd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
