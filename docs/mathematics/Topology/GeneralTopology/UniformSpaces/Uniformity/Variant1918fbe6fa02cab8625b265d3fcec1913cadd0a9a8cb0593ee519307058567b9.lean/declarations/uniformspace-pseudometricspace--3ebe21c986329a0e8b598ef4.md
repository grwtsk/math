# UniformSpace.pseudoMetricSpace

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:da95a00f450ce510828767f042cb72616b508d48451562d0c83d7f367e838266",
  "kind": "def",
  "lexical_name": "UniformSpace.pseudoMetricSpace",
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
  "slug": "uniformspace-pseudometricspace--3ebe21c986329a0e8b598ef4",
  "source": {
    "blob": "4d07d51a5ccc3e482bdf6e96949ccb19930adeb2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 259,
    "line": 254,
    "path": "GRWTSK/Topology/GeneralTopology/UniformSpaces/Uniformity/Variant1918fbe6fa02cab8625b265d3fcec1913cadd0a9a8cb0593ee519307058567b9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3ebe21c986329a0e8b598ef4090d4cfbe3fc0b3e49addbb6b558d25b0469b901",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/UniformSpaces/Uniformity/Variant1918fbe6fa02cab8625b265d3fcec1913cadd0a9a8cb0593ee519307058567b9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:da95a00f450ce510828767f042cb72616b508d48451562d0c83d7f367e838266`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 254–259.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected noncomputable def UniformSpace.pseudoMetricSpace (X : Type*) [UniformSpace X]
    [IsCountablyGenerated (𝓤 X)] : PseudoMetricSpace X :=
  (UniformSpace.metrizable_uniformity X).choose.replaceUniformity <|
    congr_arg _ (UniformSpace.metrizable_uniformity X).choose_spec.symm

/-- A `MetricSpace` instance compatible with a given `UniformSpace` structure. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Topology/GeneralTopology/UniformSpaces/Uniformity/Variant1918fbe6fa02cab8625b265d3fcec1913cadd0a9a8cb0593ee519307058567b9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/UniformSpaces/Uniformity/Variant1918fbe6fa02cab8625b265d3fcec1913cadd0a9a8cb0593ee519307058567b9.lean#L254).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4d07d51a5ccc3e482bdf6e96949ccb19930adeb2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
