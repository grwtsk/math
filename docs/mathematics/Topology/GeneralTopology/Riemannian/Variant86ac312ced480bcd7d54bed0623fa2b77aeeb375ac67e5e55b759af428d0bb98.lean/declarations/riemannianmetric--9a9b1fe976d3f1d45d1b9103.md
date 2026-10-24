# RiemannianMetric

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:fcf1a98b062c5ab99ea732f7c5fc427692d339a86f9c1f17220a652f6b320039",
  "kind": "structure",
  "lexical_name": "RiemannianMetric",
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
  "slug": "riemannianmetric--9a9b1fe976d3f1d45d1b9103",
  "source": {
    "blob": "1846c1475dfe7bb95a80b4497bdd70622b7f61bd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 393,
    "line": 378,
    "path": "GRWTSK/Topology/GeneralTopology/Riemannian/Variant86ac312ced480bcd7d54bed0623fa2b77aeeb375ac67e5e55b759af428d0bb98.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9a9b1fe976d3f1d45d1b910395682f11a6461d68d36aa32bf6afd696451aa914",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Riemannian/Variant86ac312ced480bcd7d54bed0623fa2b77aeeb375ac67e5e55b759af428d0bb98.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:fcf1a98b062c5ab99ea732f7c5fc427692d339a86f9c1f17220a652f6b320039`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 378–393.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure RiemannianMetric where
  /-- The inner product along the fibers of the bundle. -/
  inner (b : B) : E b →L[ℝ] E b →L[ℝ] ℝ
  symm (b : B) (v w : E b) : inner b v w = inner b w v
  pos (b : B) (v : E b) (hv : v ≠ 0) : 0 < inner b v v
  /-- The continuity at `0` is automatic when `E b` is isomorphic to a normed space, but since
  we are not making this assumption here we have to include it. -/
  continuousAt (b : B) : ContinuousAt (fun (v : E b) ↦ inner b v v) 0
  isVonNBounded (b : B) : IsVonNBounded ℝ {v : E b | inner b v v < 1}

/-- `Core` structure associated to a family of inner products on the fibers of a fiber bundle. This
is an auxiliary construction to endow the fibers with an inner product space structure without
creating diamonds.

Warning: Do not use this `Core` structure if the space you are interested in already has a norm
instance defined on it, otherwise this will create a second non-defeq norm instance! -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Riemannian/Variant86ac312ced480bcd7d54bed0623fa2b77aeeb375ac67e5e55b759af428d0bb98.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Riemannian/Variant86ac312ced480bcd7d54bed0623fa2b77aeeb375ac67e5e55b759af428d0bb98.lean#L378).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1846c1475dfe7bb95a80b4497bdd70622b7f61bd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
