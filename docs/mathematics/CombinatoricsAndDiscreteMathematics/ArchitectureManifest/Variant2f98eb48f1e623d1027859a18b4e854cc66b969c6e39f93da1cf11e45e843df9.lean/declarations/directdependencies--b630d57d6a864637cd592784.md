# directDependencies

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7b36814faa78c35f07a3d1525045f015f5415a122b0d666c6cc991f2ce9c1785",
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
  "slug": "directdependencies--b630d57d6a864637cd592784",
  "source": {
    "blob": "fcd7aafe7ad20f2ed6855255c78997746eb4ed93",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 117,
    "line": 62,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/ArchitectureManifest/Variant2f98eb48f1e623d1027859a18b4e854cc66b969c6e39f93da1cf11e45e843df9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b630d57d6a864637cd5927844107f0b19abd6c0fd1869965034cafc343f435e3",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/ArchitectureManifest/Variant2f98eb48f1e623d1027859a18b4e854cc66b969c6e39f93da1cf11e45e843df9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7b36814faa78c35f07a3d1525045f015f5415a122b0d666c6cc991f2ce9c1785`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 62–117.

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

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/ArchitectureManifest/Variant2f98eb48f1e623d1027859a18b4e854cc66b969c6e39f93da1cf11e45e843df9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/ArchitectureManifest/Variant2f98eb48f1e623d1027859a18b4e854cc66b969c6e39f93da1cf11e45e843df9.lean#L62).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fcd7aafe7ad20f2ed6855255c78997746eb4ed93` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
