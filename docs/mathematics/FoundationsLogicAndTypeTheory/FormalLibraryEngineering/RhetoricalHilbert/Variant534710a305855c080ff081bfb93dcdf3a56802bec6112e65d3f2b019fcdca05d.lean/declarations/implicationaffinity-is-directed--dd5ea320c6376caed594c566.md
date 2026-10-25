# implicationAffinity_is_directed

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e39d7166-f1e0-bf02-520b-82f938d28717",
  "kind": "theorem",
  "lexical_name": "implicationAffinity_is_directed",
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
  "slug": "implicationaffinity-is-directed--dd5ea320c6376caed594c566",
  "source": {
    "blob": "31a68fe908f0315cde01bbd2e497dd69d5be1c92",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 155,
    "line": 135,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RhetoricalHilbert/Variant534710a305855c080ff081bfb93dcdf3a56802bec6112e65d3f2b019fcdca05d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dd5ea320c6376caed594c566833a946fda38fcb6d8a3371d786fe38bdbeac0e1",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RhetoricalHilbert/Variant534710a305855c080ff081bfb93dcdf3a56802bec6112e65d3f2b019fcdca05d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e39d7166-f1e0-bf02-520b-82f938d28717`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 135–155.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem implicationAffinity_is_directed :
    implicationAffinity directedKernel conceptA conceptB ≠
      implicationAffinity directedKernel conceptB conceptA := by
  rw [implicationAffinity, implicationAffinity,
    normalizedRealAffinity, normalizedRealAffinity]
  simp only [premiseA_norm_ne_zero, conclusionB_norm_ne_zero,
    premiseB_norm_ne_zero, conclusionA_norm_ne_zero, false_or,
    if_false]
  simp only [normalizedRealAffinityValue, premiseVector, conclusionVector,
    roleVector, inner_rhetoricalVector, directedKernel_forward,
    directedKernel_reverse, Complex.one_re, Complex.zero_re, zero_div]
  intro equality
  have scalarZero := Option.some.inj equality
  have denominatorNonzero :
      ‖rhetoricalVector directedKernel (conceptA, .premise)‖ *
          ‖rhetoricalVector directedKernel (conceptB, .conclusion)‖ ≠ 0 := by
    simpa [premiseVector, conclusionVector, roleVector] using
      mul_ne_zero premiseA_norm_ne_zero conclusionB_norm_ne_zero
  exact (div_ne_zero one_ne_zero denominatorNonzero) scalarZero

/-- Exact translational analogy has zero residual. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RhetoricalHilbert/Variant534710a305855c080ff081bfb93dcdf3a56802bec6112e65d3f2b019fcdca05d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RhetoricalHilbert/Variant534710a305855c080ff081bfb93dcdf3a56802bec6112e65d3f2b019fcdca05d.lean#L135).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `31a68fe908f0315cde01bbd2e497dd69d5be1c92` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
