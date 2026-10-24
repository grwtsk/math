# growingXiHead_abs_le_at_radius

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5f0ae562-8ee5-2769-ac09-4186cb3b9bc3",
  "kind": "theorem",
  "lexical_name": "growingXiHead_abs_le_at_radius",
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
  "slug": "growingxihead-abs-le-at-radius--e4ee0de5147a7cb4cde9e8da",
  "source": {
    "blob": "961f25b3361d6aab0c043b1bab7214efdce69ad0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 187,
    "line": 180,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceGrowingXiHead/Variant8fa782ce1c681fa612a329fb1329b5a759153a5d63cacd9b89d39f042812bdb0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e4ee0de5147a7cb4cde9e8da75f9e32d8fbeefc7645fb2a3bea54549733ad18b",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceGrowingXiHead/Variant8fa782ce1c681fa612a329fb1329b5a759153a5d63cacd9b89d39f042812bdb0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5f0ae562-8ee5-2769-ac09-4186cb3b9bc3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 180–187.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem growingXiHead_abs_le_at_radius {Q A : ℝ} (hQ : 91 ≤ Q) (hQA : Q ≤ A) :
    |growingXiHead A| ≤ growingXiHeadCost Q := by
  have h := mul_le_mul_of_nonneg_left (log_div_antitone hQ hQA)
    (mul_nonneg (by norm_num) coefficient_nonneg)
  exact (growingXiHead_abs_le (by linarith : 91 ≤ A)).trans
    (by simpa only [growingXiHeadCost, mul_div_assoc] using h)

/-- Exact original tail recovery, retaining the original seven anchor in both integrals. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceGrowingXiHead/Variant8fa782ce1c681fa612a329fb1329b5a759153a5d63cacd9b89d39f042812bdb0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceGrowingXiHead/Variant8fa782ce1c681fa612a329fb1329b5a759153a5d63cacd9b89d39f042812bdb0.lean#L180).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `961f25b3361d6aab0c043b1bab7214efdce69ad0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
