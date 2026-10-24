# cubicLogModelDerivative

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:bc7b68dbd89e43c2e243d51199f7c7ee1a243835813463c2d224bfb83a2df426",
  "kind": "def",
  "lexical_name": "cubicLogModelDerivative",
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
  "slug": "cubiclogmodelderivative--e9aa48ed3a8fa9d5d330a855",
  "source": {
    "blob": "40e846c3911ef2401aa8d5ca2366da72f6ddf78f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 26,
    "line": 21,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceCubicSamplingRemainder/Variant6c751ac91d4284716518431b11e2e3a8f898ad65c9466b8ca823f3aa58988445.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e9aa48ed3a8fa9d5d330a8559e71ca345ff0b4ec6dc70a88d703368baee5fed2",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceCubicSamplingRemainder/Variant6c751ac91d4284716518431b11e2e3a8f898ad65c9466b8ca823f3aa58988445.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:bc7b68dbd89e43c2e243d51199f7c7ee1a243835813463c2d224bfb83a2df426`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 21–26.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def cubicLogModelDerivative (A k u : ℝ) : ℝ :=
  1 / Real.sqrt k * u ^ (-3 / 2 : ℝ) *
    ((1 - Real.log u / 2) * cubicCorrelationJet A (Real.log k) (Real.log u) +
      Real.log u * deriv (cubicCorrelationJet A (Real.log k)) (Real.log u))

/-- The exact derivative difference is the actual cubic remainder and its derivative. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceCubicSamplingRemainder/Variant6c751ac91d4284716518431b11e2e3a8f898ad65c9466b8ca823f3aa58988445.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceCubicSamplingRemainder/Variant6c751ac91d4284716518431b11e2e3a8f898ad65c9466b8ca823f3aa58988445.lean#L21).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `40e846c3911ef2401aa8d5ca2366da72f6ddf78f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
