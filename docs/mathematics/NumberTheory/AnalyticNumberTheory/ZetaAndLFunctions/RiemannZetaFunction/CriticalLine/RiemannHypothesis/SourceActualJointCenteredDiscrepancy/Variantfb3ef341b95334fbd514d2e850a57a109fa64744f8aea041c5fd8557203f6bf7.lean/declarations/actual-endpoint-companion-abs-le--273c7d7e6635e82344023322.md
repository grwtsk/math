# actual_endpoint_companion_abs_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:81822f12-c3f2-584c-8457-ea915e03db4b",
  "kind": "theorem",
  "lexical_name": "actual_endpoint_companion_abs_le",
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
  "slug": "actual-endpoint-companion-abs-le--273c7d7e6635e82344023322",
  "source": {
    "blob": "77ab386da8f7855fc450c231f0785db9107a1262",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 45,
    "line": 34,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualJointCenteredDiscrepancy/Variantfb3ef341b95334fbd514d2e850a57a109fa64744f8aea041c5fd8557203f6bf7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:273c7d7e6635e82344023322231d8d2111cc126313d98a32cba0aaf0e02aeb9c",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualJointCenteredDiscrepancy/Variantfb3ef341b95334fbd514d2e850a57a109fa64744f8aea041c5fd8557203f6bf7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:81822f12-c3f2-584c-8457-ea915e03db4b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 34–45.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_endpoint_companion_abs_le (b : ℝ) (hb : 0 ≤ b) :
    |actualCenteredLogDiscrepancy b * (1 - Real.exp (-b / 2))| ≤
      Real.log 4 + 4 + Real.log 2 + 2 / 3 := by
  have he : Real.exp (-b / 2) ≤ 1 := Real.exp_le_one_iff.mpr (by linarith)
  have hm : 0 ≤ 1 - Real.exp (-b / 2) := by linarith
  have hm1 : 1 - Real.exp (-b / 2) ≤ 1 := by linarith [Real.exp_pos (-b / 2)]
  rw [abs_mul, abs_of_nonneg hm]
  calc
    _ ≤ |actualCenteredLogDiscrepancy b| * 1 :=
      mul_le_mul_of_nonneg_left hm1 (abs_nonneg _)
    _ ≤ _ := by rw [mul_one]; exact actual_centered_discrepancy_abs_le b hb

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualJointCenteredDiscrepancy/Variantfb3ef341b95334fbd514d2e850a57a109fa64744f8aea041c5fd8557203f6bf7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualJointCenteredDiscrepancy/Variantfb3ef341b95334fbd514d2e850a57a109fa64744f8aea041c5fd8557203f6bf7.lean#L34).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `77ab386da8f7855fc450c231f0785db9107a1262` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
