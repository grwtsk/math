# actualBalancedAdaptiveTailCost_le_old

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:917af1fe-1753-7b43-7599-f9ce6f00cf0c",
  "kind": "theorem",
  "lexical_name": "actualBalancedAdaptiveTailCost_le_old",
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
  "slug": "actualbalancedadaptivetailcost-le-old--e5b523e352ad1aabbef72696",
  "source": {
    "blob": "774d299d2cf354743f402de9ed3fd9013777b24d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 82,
    "line": 67,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/SourceBalancedAdaptiveTailBudget/Variantc4516a63b49242d5df98d891c674bbf68a8f70321afd3bd2c5d8dd2c0ede11d7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e5b523e352ad1aabbef7269676a40f2adc014ab09c8f78d71534f0d8a69bc1cc",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/SourceBalancedAdaptiveTailBudget/Variantc4516a63b49242d5df98d891c674bbf68a8f70321afd3bd2c5d8dd2c0ede11d7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:917af1fe-1753-7b43-7599-f9ce6f00cf0c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 67–82.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualBalancedAdaptiveTailCost_le_old {A0 η Q : ℝ}
    (hA0 : 1 ≤ A0) (hη : 1 ≤ η) (hQ : 91 ≤ Q) :
    actualBalancedAdaptiveTailCost A0 η Q ≤ actualAdaptiveSharpTailCost A0 η Q := by
  have hQpos : 0 < Q := by linarith
  have hlQ : 0 ≤ Real.log Q := Real.log_nonneg (by linarith)
  have hlη : 0 ≤ Real.log η := Real.log_nonneg hη
  have hm : max 0 (Real.log η + 2 - (8 / 5 : ℝ) * Real.log Q) ≤
      Real.log η + 2 := by
    apply max_le
    · linarith
    · nlinarith
  unfold actualBalancedAdaptiveTailCost actualAdaptiveSharpTailCost
  apply mul_le_mul_of_nonneg_left _ (by positivity)
  exact add_le_add_left (div_le_div_of_nonneg_right hm hQpos.le) _

/-- The fixed eta=1 tail cost is exactly 1.8 million times the same count witness. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/SourceBalancedAdaptiveTailBudget/Variantc4516a63b49242d5df98d891c674bbf68a8f70321afd3bd2c5d8dd2c0ede11d7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/SourceBalancedAdaptiveTailBudget/Variantc4516a63b49242d5df98d891c674bbf68a8f70321afd3bd2c5d8dd2c0ede11d7.lean#L67).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `774d299d2cf354743f402de9ed3fd9013777b24d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
