# rustSubsetTraceCommitment

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8c60d8b38dd3d7b19d4a3c8e9c30fd51c72de8a719d5be8ce19075a85df05204",
  "kind": "def",
  "lexical_name": "rustSubsetTraceCommitment",
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
  "slug": "rustsubsettracecommitment--79971f8e2ab7ffdc59dfce31",
  "source": {
    "blob": "2e2786c73b4d66ce360894cb5f69bd7d58311eea",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 422,
    "line": 381,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RhetoricalHilbert/Variantf70b174ac7a3b36799e037734d3ff4b2d63faaad34e1259d517d0ba4b176fa07.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:79971f8e2ab7ffdc59dfce3110704ef370e03c34ab2b17dbca5a6f7c2e96b94d",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RhetoricalHilbert/Variantf70b174ac7a3b36799e037734d3ff4b2d63faaad34e1259d517d0ba4b176fa07.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8c60d8b38dd3d7b19d4a3c8e9c30fd51c72de8a719d5be8ce19075a85df05204`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 381–422.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def rustSubsetTraceCommitment :
    CanonicalTraceCommitment fixtureFormalKernel 2 where
  traceWire := rustSubsetTraceWire
  problemWire := rustSubsetProblemWire
  problem := rustSubsetProblem
  problemDecoded := by native_decide
  schemaWire := fixtureSchemaWire
  formalManifest := KernelManifest.productionManifest
  formalManifestValid := KernelManifest.productionManifest_valid
  manifestWire := KernelManifest.productionManifestWire
  manifestGenerated := rfl
  semanticGramWire := KernelManifest.productionManifest.semanticGramWire
  semanticGramGenerated := rfl
  kernelIdentityPreimage :=
    KernelManifest.kernelIdentityPreimageWire KernelManifest.productionManifest
  kernelIdentityGenerated := rfl
  activeIndices := [11, 17]
  formalIndices := fixtureSubsetFormalIndices
  expectedGram := fixtureSubsetExpectedGram
  expectedGramValid := by native_decide
  expectedDimension := rfl
  representsFormal := by
    intro row column
    change exactComplexToComplex (fixtureSubsetExpectedGram.at row column) =
      KernelManifest.productionKernel
        (KernelManifest.productionActiveBinding (liftSubsetPosition row)).rhetoricalIndex
        (KernelManifest.productionActiveBinding (liftSubsetPosition column)).rhetoricalIndex
    rw [KernelManifest.productionKernel_apply,
      KernelManifest.productionActiveGram_entry]
    fin_cases row <;> fin_cases column <;>
      apply Complex.ext <;>
      norm_num [fixtureSubsetExpectedGram, fixtureExpectedEntry,
        liftSubsetPosition, KernelManifest.productionActiveBinding,
        KernelManifest.productionActiveBindings, ExactGram.at,
        KernelManifest.ActiveIndexBinding.rhetoricalIndex,
        KernelManifest.positiveKernelConcept_ne_hilbertCompletionConcept,
        KernelManifest.hilbertCompletionConcept_ne_positiveKernelConcept,
        exactComplexToComplex, productionEpsilon, productionEpsilonNumerator,
        productionEpsilonDenominator]

/-- A proper active subset is accepted with the parent production-kernel
identity, rather than deriving an incompatible identity from its sub-Gram. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RhetoricalHilbert/Variantf70b174ac7a3b36799e037734d3ff4b2d63faaad34e1259d517d0ba4b176fa07.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RhetoricalHilbert/Variantf70b174ac7a3b36799e037734d3ff4b2d63faaad34e1259d517d0ba4b176fa07.lean#L381).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2e2786c73b4d66ce360894cb5f69bd7d58311eea` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
