# exponential_mixture_wrong_sign

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1b30f22d-3936-fc40-ba06-cc6fe77fa317",
  "kind": "theorem",
  "lexical_name": "exponential_mixture_wrong_sign",
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
  "slug": "exponential-mixture-wrong-sign--f5213acf919a1d7fad7319ad",
  "source": {
    "blob": "ea418eab02fc080fc71b7867ee7e5d561e11a16e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 40,
    "line": 30,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/D5e46a1ff0e2b2cbe6778b8b722bdb869acbc46367326d4518002f5d5e6752f1HostileRankTwo/Variantbad5b543caafbc2135d3964c594c307ed7708189aed496bc40fd5a03226ad5c6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f5213acf919a1d7fad7319adec1a4b78141ffd90adac79f419d8edb2ccff91a6",
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

Occurrence: `result:1b30f22d-3936-fc40-ba06-cc6fe77fa317`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 30–40.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exponential_mixture_wrong_sign {z : ℝ} (hz : 0 < z) (hz1 : z < 1) :
    -((1 + 1 : ℝ) * (z + z ^ 2 / 4) - (z + z ^ 2) * (1 + 1 / 4)) < 0 := by
  have h : 0 < (3 / 4 : ℝ) * z * (1 - z) := by positivity
  nlinarith

#print axioms oriented_cross_eq_ratio
#print axioms third_connected_gap
#print axioms triangular_bumps_wrong_sign
#print axioms exponential_mixture_wrong_sign

end ThetaTailSignScratch
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/D5e46a1ff0e2b2cbe6778b8b722bdb869acbc46367326d4518002f5d5e6752f1HostileRankTwo/Variantbad5b543caafbc2135d3964c594c307ed7708189aed496bc40fd5a03226ad5c6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/D5e46a1ff0e2b2cbe6778b8b722bdb869acbc46367326d4518002f5d5e6752f1HostileRankTwo/Variantbad5b543caafbc2135d3964c594c307ed7708189aed496bc40fd5a03226ad5c6.lean#L30).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ea418eab02fc080fc71b7867ee7e5d561e11a16e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
