# diskBoundary

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:bee3aa14890266c1a656958fa8f3a34c81977d5c135a6a45a57ac774f74bc923",
  "kind": "def",
  "lexical_name": "diskBoundary",
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
  "slug": "diskboundary--0ed1255f1f454206bcf572da",
  "source": {
    "blob": "20adf3a88803a8df4ad54276b11b25c9da97a142",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 32,
    "line": 28,
    "path": "GRWTSK/Topology/GeneralTopology/Sphere/Variant788eccd81ae24889c42cd05325312164169373ae676058caf26537550f2b5487.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0ed1255f1f454206bcf572da7ffdf60053c0346a93dd6b984dca9cd9b0e713fc",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Sphere/Variant788eccd81ae24889c42cd05325312164169373ae676058caf26537550f2b5487.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:bee3aa14890266c1a656958fa8f3a34c81977d5c135a6a45a57ac774f74bc923`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 28–32.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def diskBoundary (n : ℕ) : TopCat.{u} :=
  TopCat.of <| ULift <| Metric.sphere (0 : EuclideanSpace ℝ (Fin n)) 1

/-- The `n`-sphere is the set of points in ℝⁿ⁺¹ whose norm equals `1`,
endowed with the subspace topology. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Sphere/Variant788eccd81ae24889c42cd05325312164169373ae676058caf26537550f2b5487.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Sphere/Variant788eccd81ae24889c42cd05325312164169373ae676058caf26537550f2b5487.lean#L28).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `20adf3a88803a8df4ad54276b11b25c9da97a142` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
