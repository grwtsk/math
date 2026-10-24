# compactProbeRigidityOpenElement

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4411b9a04243ef700b0d146b523e1a7d8877de64e912d2ea6aa21d933644611f",
  "kind": "def",
  "lexical_name": "compactProbeRigidityOpenElement",
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
  "slug": "compactproberigidityopenelement--a22740f0db822743cf2581b5",
  "source": {
    "blob": "f2b135a96670f36ef09c62d7fbd06d1bce8c7ab0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 110,
    "line": 89,
    "path": "GRWTSK/Topology/GeneralTopology/StablePointEmbedding/Variant8b1e025b09b8b1787cec4ba9da2d3fb0802bf10680e2b03aa1bed8a98220913d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a22740f0db822743cf2581b5cb36bc9b2109c34a9c0f9ef9ae7df28c7fbf98ba",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/StablePointEmbedding/Variant8b1e025b09b8b1787cec4ba9da2d3fb0802bf10680e2b03aa1bed8a98220913d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4411b9a04243ef700b0d146b523e1a7d8877de64e912d2ea6aa21d933644611f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 89–110.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def compactProbeRigidityOpenElement :
    Mathematics.Discovery.OpenConjectureElement
      CompactProbeRigidityStatement where
  elementId := {
    id := {
      value := "open:prismatic:compact-stable-probe-rigidity"
    }
  }
  elementId_valid := by
    simp [StableId.Valid]
  name := "Compact stable probes are intrinsically rigid"
  name_nonempty := by
    decide
  leanDeclarationName :=
    "Mathematics.Prismatic.StableProbeFamily.CompactProbeRigidityStatement"
  leanDeclarationName_nonempty := by
    decide

/--
The low-dependency seed closes without an extra topology-recovery axiom.
Compactness supplies closedness of the continuous injective profile.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/StablePointEmbedding/Variant8b1e025b09b8b1787cec4ba9da2d3fb0802bf10680e2b03aa1bed8a98220913d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/StablePointEmbedding/Variant8b1e025b09b8b1787cec4ba9da2d3fb0802bf10680e2b03aa1bed8a98220913d.lean#L89).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f2b135a96670f36ef09c62d7fbd06d1bce8c7ab0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
