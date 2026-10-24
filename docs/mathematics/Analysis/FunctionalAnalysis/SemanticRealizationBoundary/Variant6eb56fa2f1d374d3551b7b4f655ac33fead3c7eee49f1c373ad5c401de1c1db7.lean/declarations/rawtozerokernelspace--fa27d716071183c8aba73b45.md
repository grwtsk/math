# rawToZeroKernelSpace

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:dc2f1d32-35ef-a513-028d-b9a12c7a26a2",
  "kind": "theorem",
  "lexical_name": "rawToZeroKernelSpace",
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
  "slug": "rawtozerokernelspace--fa27d716071183c8aba73b45",
  "source": {
    "blob": "a9ad444fd97a5e9598f7d9f562dcd4d9e4e6fb94",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 97,
    "line": 82,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/SemanticRealizationBoundary/Variant6eb56fa2f1d374d3551b7b4f655ac33fead3c7eee49f1c373ad5c401de1c1db7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fa27d716071183c8aba73b45c62855f90a607b18aa6639ae55f1989cab0df9a9",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/SemanticRealizationBoundary/Variant6eb56fa2f1d374d3551b7b4f655ac33fead3c7eee49f1c373ad5c401de1c1db7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dc2f1d32-35ef-a513-028d-b9a12c7a26a2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 82–97.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[simp] theorem rawToZeroKernelSpace
    (combination : Concept.SemanticCombination Unit) :
    rawToKernelSpace zeroKernel combination = 0 := by
  change
    completePreKernel zeroKernel
        (preKernelMk zeroKernel combination) = 0
  have quotientZero :
      preKernelMk zeroKernel combination = 0 :=
    (preKernelMk_eq_zero_iff zeroKernel combination).mpr
      (mem_zeroKernelNull combination)
  rw [quotientZero]
  exact map_zero
    (UniformSpace.Completion.toComplL :
      PreKernelSpace zeroKernel →L[ℂ] KernelSpace zeroKernel)

/-- The zero kernel satisfies the upper compatibility interface. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/SemanticRealizationBoundary/Variant6eb56fa2f1d374d3551b7b4f655ac33fead3c7eee49f1c373ad5c401de1c1db7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/SemanticRealizationBoundary/Variant6eb56fa2f1d374d3551b7b4f655ac33fead3c7eee49f1c373ad5c401de1c1db7.lean#L82).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a9ad444fd97a5e9598f7d9f562dcd4d9e4e6fb94` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
