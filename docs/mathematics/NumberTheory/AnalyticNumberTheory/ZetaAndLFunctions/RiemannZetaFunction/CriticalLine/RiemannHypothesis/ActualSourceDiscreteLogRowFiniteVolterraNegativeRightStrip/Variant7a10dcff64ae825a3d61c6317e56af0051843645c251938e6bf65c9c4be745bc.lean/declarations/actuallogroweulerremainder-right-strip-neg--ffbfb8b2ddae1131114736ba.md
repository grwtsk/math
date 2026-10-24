# actualLogRowEulerRemainder_right_strip_neg

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c09eb9d7-feb6-dbd5-9bcf-4210e6e75091",
  "kind": "theorem",
  "lexical_name": "actualLogRowEulerRemainder_right_strip_neg",
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
  "slug": "actuallogroweulerremainder-right-strip-neg--ffbfb8b2ddae1131114736ba",
  "source": {
    "blob": "82de71621fa9f1a4b030b305798e3ce24458f50f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 184,
    "line": 174,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualSourceDiscreteLogRowFiniteVolterraNegativeRightStrip/Variant7a10dcff64ae825a3d61c6317e56af0051843645c251938e6bf65c9c4be745bc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ffbfb8b2ddae1131114736bafd2d751ce281b7d8894fe51b154fd56df74134eb",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualSourceDiscreteLogRowFiniteVolterraNegativeRightStrip/Variant7a10dcff64ae825a3d61c6317e56af0051843645c251938e6bf65c9c4be745bc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c09eb9d7-feb6-dbd5-9bcf-4210e6e75091`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 174–184.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualLogRowEulerRemainder_right_strip_neg (A s : ℝ) (hA : 1 ≤ A)
    (hs0 : 0 < s) (hsA : s ≤ A) (hslog : s ≤ Real.log 2) :
    actualDiscreteLogProfile A (A-s)-actualContinuousLogProfile A (A-s) < 0 := by
  have h := actualLogRowEulerRemainder_right_strip_le A s hA hs0.le hsA hslog
  have hp : 0 < s^4/(A^4*Real.sqrt A*Real.sqrt (sourceNormalization A)) := by
    have hz := source_normalization_pos A hA
    positivity
  linarith

end
end FormalResearch.RiemannHypothesis.SourceActualDiscreteLogRowVolterra
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualSourceDiscreteLogRowFiniteVolterraNegativeRightStrip/Variant7a10dcff64ae825a3d61c6317e56af0051843645c251938e6bf65c9c4be745bc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualSourceDiscreteLogRowFiniteVolterraNegativeRightStrip/Variant7a10dcff64ae825a3d61c6317e56af0051843645c251938e6bf65c9c4be745bc.lean#L174).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `82de71621fa9f1a4b030b305798e3ce24458f50f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
