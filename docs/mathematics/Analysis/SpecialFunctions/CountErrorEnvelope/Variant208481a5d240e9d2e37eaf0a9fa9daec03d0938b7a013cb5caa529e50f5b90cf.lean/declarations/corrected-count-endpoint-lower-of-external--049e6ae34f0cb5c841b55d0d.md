# corrected_count_endpoint_lower_of_external

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:214e55ba-5bc4-11a7-36a8-01b4a183f27b",
  "kind": "theorem",
  "lexical_name": "corrected_count_endpoint_lower_of_external",
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
  "slug": "corrected-count-endpoint-lower-of-external--049e6ae34f0cb5c841b55d0d",
  "source": {
    "blob": "4d2b395b7a75e3e6c9988b3360f08ab6b00cff1e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 66,
    "line": 60,
    "path": "GRWTSK/Analysis/SpecialFunctions/CountErrorEnvelope/Variant208481a5d240e9d2e37eaf0a9fa9daec03d0938b7a013cb5caa529e50f5b90cf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:049e6ae34f0cb5c841b55d0d74161e49bf0d21c5f4fd889bd8dec3821a720b89",
  "verification": {
    "reference": "docs/verification/Analysis/SpecialFunctions/CountErrorEnvelope/Variant208481a5d240e9d2e37eaf0a9fa9daec03d0938b7a013cb5caa529e50f5b90cf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:214e55ba-5bc4-11a7-36a8-01b4a183f27b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 60–66.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem corrected_count_endpoint_lower_of_external (hBW : CorrectedBellottiWongCount)
    (T : ℝ) (hT : Real.exp 1 ≤ T) :
    zeroCountMain T - correctedBellottiWongError T ≤ actualPositiveZeroCount T := by
  have hc := (neg_abs_le (actualPositiveZeroCount T-zeroCountMain T)).trans' (neg_le_neg (hBW T hT))
  linarith

end CommonMeanStieltjes
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/SpecialFunctions/CountErrorEnvelope/Variant208481a5d240e9d2e37eaf0a9fa9daec03d0938b7a013cb5caa529e50f5b90cf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/SpecialFunctions/CountErrorEnvelope/Variant208481a5d240e9d2e37eaf0a9fa9daec03d0938b7a013cb5caa529e50f5b90cf.lean#L60).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4d2b395b7a75e3e6c9988b3360f08ab6b00cff1e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
