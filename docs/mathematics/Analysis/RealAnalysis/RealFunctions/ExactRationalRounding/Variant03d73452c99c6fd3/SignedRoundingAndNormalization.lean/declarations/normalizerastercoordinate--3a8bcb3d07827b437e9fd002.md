# normalizeRasterCoordinate

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ad4c79563159a7d50a9552d35ad3b95757114353c9758eb5e68b1ff1c6ee87d1",
  "kind": "def",
  "lexical_name": "normalizeRasterCoordinate",
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
  "slug": "normalizerastercoordinate--3a8bcb3d07827b437e9fd002",
  "source": {
    "blob": "201ec1edefe87aef531ed47a39063015aeb278ba",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 193,
    "line": 187,
    "path": "GRWTSK/Analysis/RealAnalysis/RealFunctions/ExactRationalRounding/Variant03d73452c99c6fd3/SignedRoundingAndNormalization.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3a8bcb3d07827b437e9fd002f6c421548f4875bd6c4321fca91a1909f9a5e388",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/RealFunctions/ExactRationalRounding/Variant03d73452c99c6fd3/SignedRoundingAndNormalization.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ad4c79563159a7d50a9552d35ad3b95757114353c9758eb5e68b1ff1c6ee87d1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 187–193.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def normalizeRasterCoordinate (rounding : RasterRounding)
    (direction : AxisDirection) (extent : Nat) (coordinate : ℚ) : ℚ :=
  let normalized := (rounding.round coordinate : ℚ) / extent
  match direction with
  | .increasing => normalized
  | .decreasing => 1 - normalized

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/Analysis/RealAnalysis/RealFunctions/ExactRationalRounding/Variant03d73452c99c6fd3/SignedRoundingAndNormalization.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/RealFunctions/ExactRationalRounding/Variant03d73452c99c6fd3/SignedRoundingAndNormalization.lean#L187).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `201ec1edefe87aef531ed47a39063015aeb278ba` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
