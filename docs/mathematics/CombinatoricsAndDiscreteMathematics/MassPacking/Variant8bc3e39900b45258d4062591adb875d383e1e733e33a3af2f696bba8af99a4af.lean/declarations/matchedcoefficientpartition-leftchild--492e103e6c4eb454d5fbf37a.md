# MatchedCoefficientPartition.leftChild

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a34a3b370537f2abf7436e5fec3688d3755aa5dc53f9973ec4c630b426d3194c",
  "kind": "def",
  "lexical_name": "MatchedCoefficientPartition.leftChild",
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
  "slug": "matchedcoefficientpartition-leftchild--492e103e6c4eb454d5fbf37a",
  "source": {
    "blob": "5f66ec3f51860c4af8baf3adfa64f8ec3eb783e9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 48,
    "line": 38,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/MassPacking/Variant8bc3e39900b45258d4062591adb875d383e1e733e33a3af2f696bba8af99a4af.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:492e103e6c4eb454d5fbf37a8363e2075ba6fe5f5a95cabda4a75b13df83faea",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/MassPacking/Variant8bc3e39900b45258d4062591adb875d383e1e733e33a3af2f696bba8af99a4af.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a34a3b370537f2abf7436e5fec3688d3755aa5dc53f9973ec4c630b426d3194c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 38–48.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def MatchedCoefficientPartition.leftChild
    {Child Left Right : Type*} [Fintype Child] [DecidableEq Child]
    [Fintype Left] [Fintype Right]
    (partition : MatchedCoefficientPartition Child Left Right)
    (left : EuclideanSpace ℂ Left) (child : Child) :
    EuclideanSpace ℂ Left :=
  WithLp.toLp 2 fun index ↦
    if partition.leftBlock index = child then left index else 0

/-- Right coefficient vector restricted to one child block. -/
@[expose]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/MassPacking/Variant8bc3e39900b45258d4062591adb875d383e1e733e33a3af2f696bba8af99a4af.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/MassPacking/Variant8bc3e39900b45258d4062591adb875d383e1e733e33a3af2f696bba8af99a4af.lean#L38).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5f66ec3f51860c4af8baf3adfa64f8ec3eb783e9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
