# triangular_bumps_wrong_sign

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9040c333-ed82-1f6a-d35e-3e8ec8de50ac",
  "kind": "theorem",
  "lexical_name": "triangular_bumps_wrong_sign",
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
  "slug": "triangular-bumps-wrong-sign--f8f7b6ba65bf6743f38cf34a",
  "source": {
    "blob": "ea418eab02fc080fc71b7867ee7e5d561e11a16e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 29,
    "line": 25,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/D5e46a1ff0e2b2cbe6778b8b722bdb869acbc46367326d4518002f5d5e6752f1HostileRankTwo/Variantbad5b543caafbc2135d3964c594c307ed7708189aed496bc40fd5a03226ad5c6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f8f7b6ba65bf6743f38cf34abbcd41610d4e3b9e48565f5263a974bfd7f0466a",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/D5e46a1ff0e2b2cbe6778b8b722bdb869acbc46367326d4518002f5d5e6752f1HostileRankTwo/Variantbad5b543caafbc2135d3964c594c307ed7708189aed496bc40fd5a03226ad5c6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9040c333-ed82-1f6a-d35e-3e8ec8de50ac`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 25–29.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem triangular_bumps_wrong_sign :
    -(29 * (200 : ℝ) - 24 * (945 / 4 : ℝ)) = -130 := by
  norm_num

/-- Positive exponential mixtures already fail the required orientation at rank two. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/D5e46a1ff0e2b2cbe6778b8b722bdb869acbc46367326d4518002f5d5e6752f1HostileRankTwo/Variantbad5b543caafbc2135d3964c594c307ed7708189aed496bc40fd5a03226ad5c6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/D5e46a1ff0e2b2cbe6778b8b722bdb869acbc46367326d4518002f5d5e6752f1HostileRankTwo/Variantbad5b543caafbc2135d3964c594c307ed7708189aed496bc40fd5a03226ad5c6.lean#L25).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ea418eab02fc080fc71b7867ee7e5d561e11a16e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
