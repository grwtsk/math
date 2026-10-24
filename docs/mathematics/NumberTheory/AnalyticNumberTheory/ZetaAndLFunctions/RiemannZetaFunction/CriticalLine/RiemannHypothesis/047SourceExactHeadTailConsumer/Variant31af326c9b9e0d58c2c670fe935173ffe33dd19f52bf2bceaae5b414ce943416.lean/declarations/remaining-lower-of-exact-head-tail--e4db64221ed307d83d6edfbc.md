# remaining_lower_of_exact_head_tail

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8998ed3a-5887-013c-82c5-d2aa01a18f6c",
  "kind": "theorem",
  "lexical_name": "remaining_lower_of_exact_head_tail",
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
  "slug": "remaining-lower-of-exact-head-tail--e4db64221ed307d83d6edfbc",
  "source": {
    "blob": "c1dbf80566f8eb554c728534f9da945af6ed6859",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 64,
    "line": 54,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/047SourceExactHeadTailConsumer/Variant31af326c9b9e0d58c2c670fe935173ffe33dd19f52bf2bceaae5b414ce943416.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e4db64221ed307d83d6edfbc7b86a5292c9a3e6c425164f7d27db4e07213b485",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/047SourceExactHeadTailConsumer/Variant31af326c9b9e0d58c2c670fe935173ffe33dd19f52bf2bceaae5b414ce943416.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8998ed3a-5887-013c-82c5-d2aa01a18f6c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 54–64.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem remaining_lower_of_exact_head_tail (K Q A : ℝ) (hQ : 91 ≤ Q) (hA : Q ≤ A)
    (htail : -K ≤ completeXiTail A) :
    -exactHeadAtomBudget K Q ≤ remainingAtomWork A := by
  have hh := head_lower_at_radius A Q hQ hA
  have hg := gammaTraceFloor_le_actual Q A hQ hA
  have hm : K + actualXiHeadJ / 2 + exactHeadErrorBudget Q - gammaTraceFloor Q ≤
      exactHeadAtomBudget K Q := le_max_right _ _
  rw [remainingAtomWork_eq_gamma_head_tail A (hQ.trans hA)]
  linarith

/-- Produce the original fixed nonnegative atom witness at the same real radius. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/047SourceExactHeadTailConsumer/Variant31af326c9b9e0d58c2c670fe935173ffe33dd19f52bf2bceaae5b414ce943416.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/047SourceExactHeadTailConsumer/Variant31af326c9b9e0d58c2c670fe935173ffe33dd19f52bf2bceaae5b414ce943416.lean#L54).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c1dbf80566f8eb554c728534f9da945af6ed6859` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
