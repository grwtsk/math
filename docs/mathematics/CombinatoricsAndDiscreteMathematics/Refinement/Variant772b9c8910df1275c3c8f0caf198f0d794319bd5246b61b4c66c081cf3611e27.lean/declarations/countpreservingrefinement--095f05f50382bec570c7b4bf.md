# CountPreservingRefinement

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:afae7ebd66aaf93dfa6768b75eade93905af7b429152fa85ed7624423290e0f4",
  "kind": "structure",
  "lexical_name": "CountPreservingRefinement",
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
  "slug": "countpreservingrefinement--095f05f50382bec570c7b4bf",
  "source": {
    "blob": "0cc90b3d99445e94d9654b1d79f619beec3c322e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 78,
    "line": 50,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Refinement/Variant772b9c8910df1275c3c8f0caf198f0d794319bd5246b61b4c66c081cf3611e27.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:095f05f50382bec570c7b4bf636f85733211497f50d349ece1903248e946c27d",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Refinement/Variant772b9c8910df1275c3c8f0caf198f0d794319bd5246b61b4c66c081cf3611e27.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:afae7ebd66aaf93dfa6768b75eade93905af7b429152fa85ed7624423290e0f4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 50–78.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure CountPreservingRefinement
    {model : ContourIntegrationModel}
    {xi xiPrime : ℂ → ℂ}
    (authority :
      ArgumentPrincipleAuthority model xi xiPrime)
    (parent : AnalyticCell) where
  refinementId : RefinementId
  parentCount :
    ArgumentPrincipleCertificate authority parent
  partition :
    CellPartitionCertificate xi parent
  childCount :
    ∀ index : partition.Child,
      ArgumentPrincipleCertificate authority
        (partition.child index)
  countConservation :
    parentCount.count =
      ∑ index : partition.Child,
        (childCount index).count
  cellDiameter : AnalyticCell → ℝ
  diameter_nonneg :
    ∀ cell, 0 ≤ cellDiameter cell
  geometricContraction :
    ∃ q : ℝ,
      0 < q ∧ q < 1 ∧
      ∀ index : partition.Child,
        cellDiameter (partition.child index) ≤
          q * cellDiameter parent

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Refinement/Variant772b9c8910df1275c3c8f0caf198f0d794319bd5246b61b4c66c081cf3611e27.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Refinement/Variant772b9c8910df1275c3c8f0caf198f0d794319bd5246b61b4c66c081cf3611e27.lean#L50).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0cc90b3d99445e94d9654b1d79f619beec3c322e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
