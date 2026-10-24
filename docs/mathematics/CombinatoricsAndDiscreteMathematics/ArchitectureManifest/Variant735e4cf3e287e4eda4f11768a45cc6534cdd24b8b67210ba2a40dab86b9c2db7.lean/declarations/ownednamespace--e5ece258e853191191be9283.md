# ownedNamespace

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7d4cd5dc3228b92df0a025b15fe71d385b638cab3d5330645a5a79e9869033f9",
  "kind": "def",
  "lexical_name": "ownedNamespace",
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
  "slug": "ownednamespace--e5ece258e853191191be9283",
  "source": {
    "blob": "904a0a0f2db2abd30358a3e02df64bc61b9eadbf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 207,
    "line": 167,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/ArchitectureManifest/Variant735e4cf3e287e4eda4f11768a45cc6534cdd24b8b67210ba2a40dab86b9c2db7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e5ece258e853191191be9283ff80a48c9ea31551f183ea99c216579ef1335984",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/ArchitectureManifest/Variant735e4cf3e287e4eda4f11768a45cc6534cdd24b8b67210ba2a40dab86b9c2db7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7d4cd5dc3228b92df0a025b15fe71d385b638cab3d5330645a5a79e9869033f9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 167–207.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def ownedNamespace : ProjectId → Lean.Name
  | .kernel => `DAF.Kernel
  | .framework => `DAF
  | .causal => `DAF.Causal
  | .finiteDynamicsCore => `FinitePermutationDynamics
  | .observerDynamics => `ObserverSpectral
  | .homology => `DAF.Homology
  | .runtimeModel => `DAF.Runtime
  | .rustCodegen => `DAF.RustCodegen
  | .comparisonCore => `DAF.Comparison
  | .comparisonCoefficients => `DAF.Comparison.Coefficients
  | .perfectComplex => `DAF.PerfectComplex
  | .determinant => `DAF.Determinant
  | .assemblyInterface => `DAF.Assembly
  | .arithmeticInterface => `DAF.Arithmetic
  | .arithmeticComparison => `DAF.Arithmetic.Comparison
  | .comparisonIntegration => `DAF.Integration.ComparisonTests
  | .fabricPresentation => `DAF.Fabric.Presentation
  | .fabricCore => `DAF.Fabric.Core
  | .fabricReaction => `DAF.Fabric.Reaction
  | .fabricBoundary => `DAF.Fabric.Boundary
  | .fabricRealization => `DAF.Fabric.Realization
  | .fabricRuntime => `DAF.Fabric.Runtime
  | .prismaticInterface => `DAF.Prismatic.Interface
  | .prismaticFabric => `DAF.Prismatic.Fabric
  | .prismaticTotalization => `DAF.Prismatic.Totalization
  | .cyclotomicDefect => `DAF.Cyclotomic.Defect
  | .fabricIntegration => `DAF.Integration.FabricTests
  | .bitMatrix => `BitMatrix
  | .terrain => `DAF.Terrain
  | .geometry => `DAF.Geometry
  | .filesystemCodec => `FilesystemCodec
  | .filesystemDynamics => `FilesystemFirstReturn
  | .filesystemHomology => `FilesystemHomologicalTransport
  | .integration => `DAF.Integration.Architecture

/--
The representative logical interfaces permitted to a project.  These names
are obtained from the certified dependency graph; they are policy data rather
than a parser-derived assertion about the text of every source-file import.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/ArchitectureManifest/Variant735e4cf3e287e4eda4f11768a45cc6534cdd24b8b67210ba2a40dab86b9c2db7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/ArchitectureManifest/Variant735e4cf3e287e4eda4f11768a45cc6534cdd24b8b67210ba2a40dab86b9c2db7.lean#L167).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `904a0a0f2db2abd30358a3e02df64bc61b9eadbf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
