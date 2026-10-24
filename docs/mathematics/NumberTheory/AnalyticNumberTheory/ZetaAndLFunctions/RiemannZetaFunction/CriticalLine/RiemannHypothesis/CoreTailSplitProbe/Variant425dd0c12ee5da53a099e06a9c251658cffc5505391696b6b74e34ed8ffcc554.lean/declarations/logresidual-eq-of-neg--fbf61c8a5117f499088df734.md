# logResidual_eq_of_neg

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cb618532-0d0e-7a12-b269-8a622891b69c",
  "kind": "theorem",
  "lexical_name": "logResidual_eq_of_neg",
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
  "slug": "logresidual-eq-of-neg--fbf61c8a5117f499088df734",
  "source": {
    "blob": "2cc827dc3a32ee1b8eab406c2d687b83a9ce35eb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 78,
    "line": 69,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CoreTailSplitProbe/Variant425dd0c12ee5da53a099e06a9c251658cffc5505391696b6b74e34ed8ffcc554.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fbf61c8a5117f499088df7341c54c7e78b08608d53b3e013df35d72b0015fb3d",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CoreTailSplitProbe/Variant425dd0c12ee5da53a099e06a9c251658cffc5505391696b6b74e34ed8ffcc554.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cb618532-0d0e-7a12-b269-8a622891b69c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 69–78.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem logResidual_eq_of_neg (X : ℕ) (ε : ℝ) (hX : 1 ≤ X) (u : ℝ) (hu : u < 0) :
    logResidual X ε u = (Real.exp (u / 2) : ℂ) *
      correctedNumerator X (1 / 2 + (ε : ℂ)) := by
  unfold logResidual
  rw [arithmeticResidual_eq_below_one X ε hX (Real.exp u) (Real.exp_nonneg _)
    (Real.exp_lt_one_iff.mpr hu), ← mul_assoc, ← Complex.ofReal_mul, ← Real.exp_add]
  congr 2
  ring

/-- The actual logarithmic residual has the complete positive-tail exponential budget. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CoreTailSplitProbe/Variant425dd0c12ee5da53a099e06a9c251658cffc5505391696b6b74e34ed8ffcc554.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CoreTailSplitProbe/Variant425dd0c12ee5da53a099e06a9c251658cffc5505391696b6b74e34ed8ffcc554.lean#L69).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2cc827dc3a32ee1b8eab406c2d687b83a9ce35eb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
