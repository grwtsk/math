# pullPointPort

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:237166ff5feccd7422c467b11cac601fb0aec472e60b9eeb3e7a84d6a3010f9e",
  "kind": "def",
  "lexical_name": "pullPointPort",
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
  "slug": "pullpointport--5c323eb64e009ed9a6aeda68",
  "source": {
    "blob": "8e4429e6e7b9b5bc7d5c261e990f1e8204f000ba",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 204,
    "line": 190,
    "path": "GRWTSK/Analysis/Operator/HolomorphicSectionMeasureTransfer.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5c323eb64e009ed9a6aeda6887af6ce413decc1fef2120049d545cfadea4704a",
  "verification": {
    "reference": "docs/verification/Analysis/OperatorTheory/HolomorphicSectionMeasureTransfer.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:237166ff5feccd7422c467b11cac601fb0aec472e60b9eeb3e7a84d6a3010f9e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 190–204.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def pullPointPort (A : MeasureDomination (D := D) μ ν) (M : MetricWeights C)
    (hOpen : D.IsOpenCover) {x : D.X.carrier} (P : PointEvaluationPort M ν hOpen x)
    (s : FiniteEnergySection M μ hOpen) (hs : s.1.value x ≠ 0) :
    PointEvaluationPort M μ hOpen x where
  functional := P.functional.comp (A.restrictionCLM M hOpen)
  on_class t := P.on_class (A.finiteRestrict M hOpen t)
  nonzero := by
    intro h
    have he := congrArg (fun T : SectionQuotient M μ hOpen →L[ℂ] ℂ =>
      T (classOf M μ hOpen s)) h
    change P.functional (A.restrictionCLM M hOpen (classOf M μ hOpen s)) = 0 at he
    rw [restrictionCLM_classOf, P.on_class] at he
    exact hs he

/-- For the identity bundle, finite mass supplies the actual unit-section detector. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/OperatorTheory/HolomorphicSectionMeasureTransfer.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Operator/HolomorphicSectionMeasureTransfer.lean#L190).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8e4429e6e7b9b5bc7d5c261e990f1e8204f000ba` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
