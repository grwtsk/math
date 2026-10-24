# breathingVolumeTensionObstruction

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f12ae0c7ecf0090ddbbb3fd9658760bc155bfaae871d677ad430b5955e8b8943",
  "kind": "def",
  "lexical_name": "breathingVolumeTensionObstruction",
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
  "slug": "breathingvolumetensionobstruction--81f28fe42f6320cd21741ba2",
  "source": {
    "blob": "ef3e7cdea563791a9637e7b42fd406292a2a2501",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 292,
    "line": 284,
    "path": "GRWTSK/Analysis/SpecialFunctions/BubbleResonance/Variantc7a565b11bc3789d57e13c4508e39c8996cdd80365a168dfda0723c72748583b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:81f28fe42f6320cd21741ba271b15617efd6fbfc740f141c022c3e794f0a8166",
  "verification": {
    "reference": "docs/verification/Analysis/SpecialFunctions/BubbleResonance/Variantc7a565b11bc3789d57e13c4508e39c8996cdd80365a168dfda0723c72748583b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f12ae0c7ecf0090ddbbb3fd9658760bc155bfaae871d677ad430b5955e8b8943`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 284–292.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def breathingVolumeTensionObstruction (parameters : Parameters) :
    DescentObstruction (breathingSquared parameters) volumeTension where
  left := unitState
  right := breathingDoubleState parameters
  sameCarrier := breathing_witness_equal parameters
  targetSeparated := fun equal => (breathingRadiusObstruction parameters).targetSeparated
    (congrArg radius (volumeTension_injective equal))

/-- Explicit shape-only obstruction for the requested volume/tension target. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/SpecialFunctions/BubbleResonance/Variantc7a565b11bc3789d57e13c4508e39c8996cdd80365a168dfda0723c72748583b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/SpecialFunctions/BubbleResonance/Variantc7a565b11bc3789d57e13c4508e39c8996cdd80365a168dfda0723c72748583b.lean#L284).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ef3e7cdea563791a9637e7b42fd406292a2a2501` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
