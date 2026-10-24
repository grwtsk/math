# ownedNamespace

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:76ed089f24fd35538d93839de0092292a0731b7faafd838937dac4c8e0d6d159",
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
  "slug": "ownednamespace--92f386f33d606348ca18b263",
  "source": {
    "blob": "49c87791ec554796cf86e8ed6a3861c533d3350e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 199,
    "line": 159,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/ArchitectureManifest/Variant6fbc7123fa5dcaacd3cfe08179f69ea344b2a74a6398986ad652135f680a0ba9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:92f386f33d606348ca18b263399d4cc399741131c59a966e48b5185d238eabc5",
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

Occurrence: `declaration:76ed089f24fd35538d93839de0092292a0731b7faafd838937dac4c8e0d6d159`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 159–199.

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
  | .binaryMatrix => `BinMat
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

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/ArchitectureManifest/Variant6fbc7123fa5dcaacd3cfe08179f69ea344b2a74a6398986ad652135f680a0ba9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/ArchitectureManifest/Variant6fbc7123fa5dcaacd3cfe08179f69ea344b2a74a6398986ad652135f680a0ba9.lean#L159).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `49c87791ec554796cf86e8ed6a3861c533d3350e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
