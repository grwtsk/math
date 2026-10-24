# ownedNamespace

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:70dbdde98f5f47d7b802936a1b80b6b143f41be7d0ea4d9cac3f3cab8c9a9664",
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
  "slug": "ownednamespace--7e8d804000160d7e61e7fc0a",
  "source": {
    "blob": "fcd7aafe7ad20f2ed6855255c78997746eb4ed93",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 207,
    "line": 167,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/ArchitectureManifest/Variant2f98eb48f1e623d1027859a18b4e854cc66b969c6e39f93da1cf11e45e843df9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7e8d804000160d7e61e7fc0a6928d863692f3cf27d5b9ea10d8ba8f24d065a4f",
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

Occurrence: `declaration:70dbdde98f5f47d7b802936a1b80b6b143f41be7d0ea4d9cac3f3cab8c9a9664`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 167–207.

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

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/ArchitectureManifest/Variant2f98eb48f1e623d1027859a18b4e854cc66b969c6e39f93da1cf11e45e843df9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/ArchitectureManifest/Variant2f98eb48f1e623d1027859a18b4e854cc66b969c6e39f93da1cf11e45e843df9.lean#L167).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fcd7aafe7ad20f2ed6855255c78997746eb4ed93` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
