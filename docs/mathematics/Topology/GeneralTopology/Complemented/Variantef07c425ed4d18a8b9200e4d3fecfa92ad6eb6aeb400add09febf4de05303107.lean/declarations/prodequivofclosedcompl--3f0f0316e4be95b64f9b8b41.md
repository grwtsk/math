# prodEquivOfClosedCompl

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:63fc4c308ca98d9186e80f4f8d93faeaf0ce59a0d731bd1f2ea5de1a23ee8720",
  "kind": "def",
  "lexical_name": "prodEquivOfClosedCompl",
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
  "slug": "prodequivofclosedcompl--3f0f0316e4be95b64f9b8b41",
  "source": {
    "blob": "8d5e7f2cb0077c9f263b78e4adc5dc6215610cae",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 86,
    "line": 80,
    "path": "GRWTSK/Topology/GeneralTopology/Complemented/Variantef07c425ed4d18a8b9200e4d3fecfa92ad6eb6aeb400add09febf4de05303107.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3f0f0316e4be95b64f9b8b41a697713138c9feb08186343e12afef11af171abe",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Complemented/Variantef07c425ed4d18a8b9200e4d3fecfa92ad6eb6aeb400add09febf4de05303107.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:63fc4c308ca98d9186e80f4f8d93faeaf0ce59a0d731bd1f2ea5de1a23ee8720`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 80–86.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def prodEquivOfClosedCompl (h : IsCompl p q) (hp : IsClosed (p : Set E))
    (hq : IsClosed (q : Set E)) : (p × q) ≃L[𝕜] E := by
  haveI := hp.completeSpace_coe; haveI := hq.completeSpace_coe
  refine (p.prodEquivOfIsCompl q h).toContinuousLinearEquivOfContinuous ?_
  exact (p.subtypeL.coprod q.subtypeL).continuous

/-- Projection to a closed submodule along a closed complement. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Complemented/Variantef07c425ed4d18a8b9200e4d3fecfa92ad6eb6aeb400add09febf4de05303107.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Complemented/Variantef07c425ed4d18a8b9200e4d3fecfa92ad6eb6aeb400add09febf4de05303107.lean#L80).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8d5e7f2cb0077c9f263b78e4adc5dc6215610cae` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
