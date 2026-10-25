# HyperbolicSurgeryPlan.crossIntervalKernel

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5f3dd259646c15e42c8c97f7658e196e71abd943c5c1d432632c9197db568996",
  "kind": "def",
  "lexical_name": "HyperbolicSurgeryPlan.crossIntervalKernel",
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
  "slug": "hyperbolicsurgeryplan-crossintervalkernel--0457c66918a9bff40504ab79",
  "source": {
    "blob": "9bd36633ac83b082708e105aaf7fbc4c5363806b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 44,
    "line": 36,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CrossCutSquare/Variantd40fe9e14828103fd5ff4d5e737f46b26cfa54af2c8df720b3b27461e71069fd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0457c66918a9bff40504ab791aec974a828548107ca0de0ff8b0538852be8cb2",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CrossCutSquare/Variantd40fe9e14828103fd5ff4d5e737f46b26cfa54af2c8df720b3b27461e71069fd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5f3dd259646c15e42c8c97f7658e196e71abd943c5c1d432632c9197db568996`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 36–44.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def HyperbolicSurgeryPlan.crossIntervalKernel
    {N q : ℕ} {B : TypeIIShellFactorBlock N q}
    (plan : HyperbolicSurgeryPlan N q B) (node : plan.tree.Node)
    (cut : TypeIIBlockCut B.Left B.Right)
    (interval : TypeIIProductDyadicInterval N q) : Matrix B.Left B.Right ℂ :=
  cut.crossMatrix (plan.intervalKernel node interval)

/-- Exact square sum of cross-cut correlations at one evaluated node. -/
@[expose]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CrossCutSquare/Variantd40fe9e14828103fd5ff4d5e737f46b26cfa54af2c8df720b3b27461e71069fd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CrossCutSquare/Variantd40fe9e14828103fd5ff4d5e737f46b26cfa54af2c8df720b3b27461e71069fd.lean#L36).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9bd36633ac83b082708e105aaf7fbc4c5363806b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
