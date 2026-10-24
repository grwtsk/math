# EdgeRelaxation.laplacianSmoothingKernel

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:df4d105fe774395dc46c7d76f0d0add374d4169464912e60d543b5ef58b0b61c",
  "kind": "def",
  "lexical_name": "EdgeRelaxation.laplacianSmoothingKernel",
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
  "slug": "edgerelaxation-laplaciansmoothingkernel--3e4a3e1eae57d2e0b9fb2aa6",
  "source": {
    "blob": "13e86a394e68c0fd97d3424f93e69f2dbc11d9e4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 192,
    "line": 180,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EdgeRelaxation/Variant89f83c840b2462752346145375851ec0516fc2eb2b3d0271805af584dc64cb83.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3e4a3e1eae57d2e0b9fb2aa6b43a5c2a13f02dc60a10b45579e05ce7cf23659d",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EdgeRelaxation/Variant89f83c840b2462752346145375851ec0516fc2eb2b3d0271805af584dc64cb83.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:df4d105fe774395dc46c7d76f0d0add374d4169464912e60d543b5ef58b0b61c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 180–192.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def EdgeRelaxation.laplacianSmoothingKernel :
    EdgeRelaxation.Kernel EdgeRelaxation.EpsilonDensity
  | .left, .left => EdgeRelaxation.EpsilonDensity.oneMinusEps
  | .left, .center => EdgeRelaxation.EpsilonDensity.eps
  | .left, .right => EdgeRelaxation.EpsilonDensity.zero
  | .center, .left => EdgeRelaxation.EpsilonDensity.eps
  | .center, .center => EdgeRelaxation.EpsilonDensity.oneMinusTwoEps
  | .center, .right => EdgeRelaxation.EpsilonDensity.eps
  | .right, .left => EdgeRelaxation.EpsilonDensity.zero
  | .right, .center => EdgeRelaxation.EpsilonDensity.eps
  | .right, .right => EdgeRelaxation.EpsilonDensity.oneMinusEps

/-- Apply a symbolic kernel to a crisp Boolean three-row vector. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EdgeRelaxation/Variant89f83c840b2462752346145375851ec0516fc2eb2b3d0271805af584dc64cb83.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EdgeRelaxation/Variant89f83c840b2462752346145375851ec0516fc2eb2b3d0271805af584dc64cb83.lean#L180).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `13e86a394e68c0fd97d3424f93e69f2dbc11d9e4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
