# directDependencies

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1bdc61c37e7ac9fac5d488a27f326ee6a6d5e6886ca8a1fdaa551fef1a208d9e",
  "kind": "def",
  "lexical_name": "directDependencies",
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
  "slug": "directdependencies--2b7411f6f1bb0f54457ddf97",
  "source": {
    "blob": "49c87791ec554796cf86e8ed6a3861c533d3350e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 109,
    "line": 54,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/ArchitectureManifest/Variant6fbc7123fa5dcaacd3cfe08179f69ea344b2a74a6398986ad652135f680a0ba9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2b7411f6f1bb0f54457ddf97b574ebe160261fe35a8b179d854c48392a8fc343",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/ArchitectureManifest/Variant6fbc7123fa5dcaacd3cfe08179f69ea344b2a74a6398986ad652135f680a0ba9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1bdc61c37e7ac9fac5d488a27f326ee6a6d5e6886ca8a1fdaa551fef1a208d9e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 54–109.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def directDependencies : ProjectId → Finset ProjectId
  | .kernel => ∅
  | .framework => {.kernel}
  | .causal => {.framework}
  | .finiteDynamicsCore => {.kernel}
  | .observerDynamics => {.framework, .causal, .finiteDynamicsCore}
  | .homology => {.kernel}
  | .runtimeModel => {.kernel, .framework}
  | .rustCodegen => {.runtimeModel}
  | .comparisonCore => {.kernel, .framework, .causal}
  | .comparisonCoefficients => {.comparisonCore}
  | .perfectComplex => {.homology, .comparisonCore}
  | .determinant => {.perfectComplex, .comparisonCoefficients}
  | .assemblyInterface => {.comparisonCore, .determinant}
  | .arithmeticInterface => {.assemblyInterface, .comparisonCoefficients}
  | .arithmeticComparison =>
      {.arithmeticInterface, .comparisonCoefficients, .determinant}
  | .comparisonIntegration =>
      {.comparisonCore, .comparisonCoefficients, .perfectComplex,
        .determinant, .assemblyInterface, .arithmeticInterface,
        .arithmeticComparison, .framework, .causal, .binaryMatrix,
        .filesystemCodec}
  | .fabricPresentation => {.framework, .comparisonCore}
  | .fabricCore => {.fabricPresentation}
  | .fabricReaction => {.fabricCore}
  | .fabricBoundary => {.fabricCore}
  | .fabricRealization => {.fabricCore, .fabricReaction}
  | .fabricRuntime => {.fabricCore, .runtimeModel}
  | .prismaticInterface =>
      {.fabricCore, .comparisonCoefficients, .terrain, .geometry}
  | .prismaticFabric =>
      {.prismaticInterface, .fabricCore, .fabricReaction}
  | .prismaticTotalization =>
      {.prismaticInterface, .prismaticFabric, .determinant}
  | .cyclotomicDefect => {.prismaticInterface}
  | .fabricIntegration =>
      {.fabricPresentation, .fabricCore, .fabricReaction, .fabricBoundary,
        .fabricRealization, .fabricRuntime, .prismaticInterface,
        .prismaticFabric, .prismaticTotalization, .cyclotomicDefect,
        .binaryMatrix, .filesystemCodec}
  | .binaryMatrix => {.kernel, .finiteDynamicsCore}
  | .terrain => {.framework}
  | .geometry => {.terrain}
  | .filesystemCodec => {.kernel, .binaryMatrix}
  | .filesystemDynamics =>
      {.filesystemCodec, .framework, .causal,
        .finiteDynamicsCore, .observerDynamics}
  | .filesystemHomology => {.filesystemDynamics, .homology}
  | .integration =>
      {.framework, .causal, .observerDynamics, .runtimeModel, .rustCodegen,
        .comparisonCoefficients, .binaryMatrix, .terrain, .geometry,
        .finiteDynamicsCore, .prismaticInterface,
        .filesystemCodec, .filesystemDynamics, .filesystemHomology,
        .fabricIntegration}

/-- A topological rank certifying acyclicity of the logical package graph. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/ArchitectureManifest/Variant6fbc7123fa5dcaacd3cfe08179f69ea344b2a74a6398986ad652135f680a0ba9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/ArchitectureManifest/Variant6fbc7123fa5dcaacd3cfe08179f69ea344b2a74a6398986ad652135f680a0ba9.lean#L54).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `49c87791ec554796cf86e8ed6a3861c533d3350e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
