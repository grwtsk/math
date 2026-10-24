# ContDiffAt.restrictScalars_iteratedFDeriv_eventuallyEq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "454b6e9707d37a3c8ada8f07be159400d056e505",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 82,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/85/859fd53c0c32ee308821a69cdd5faaf8776dca60e1aea2feec83f44147af6362.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d098c7e1-ef31-d65d-13f7-3ba5ca0db9c0",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8286f59a-47ab-7b80-bc00-fcdf868d268e",
  "kind": "theorem",
  "lexical_name": "ContDiffAt.restrictScalars_iteratedFDeriv_eventuallyEq",
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
  "slug": "contdiffat-restrictscalars-iteratedfderiv-eventuallyeq--4af5ccc8da42f1a5df9beeb1",
  "source": {
    "blob": "454b6e9707d37a3c8ada8f07be159400d056e505",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 92,
    "line": 82,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/RestrictScalars/Variant859fd53c0c32ee308821a69cdd5faaf8776dca60e1aea2feec83f44147af6362.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4af5ccc8da42f1a5df9beeb19e322e9b604c73782516288d66bcfc72286e33df",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/RestrictScalars/Variant859fd53c0c32ee308821a69cdd5faaf8776dca60e1aea2feec83f44147af6362.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8286f59a-47ab-7b80-bc00-fcdf868d268e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 82–92.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ContDiffAt.restrictScalars_iteratedFDeriv_eventuallyEq (h : ContDiffAt 𝕜' n f x) :
    (restrictScalars 𝕜) ∘ (iteratedFDeriv 𝕜' n f) =ᶠ[𝓝 x] iteratedFDeriv 𝕜 n f := by
  have h' : ContDiffWithinAt 𝕜' n f Set.univ x := h
  convert! (h'.restrictScalars_iteratedFDerivWithin_eventuallyEq _ trivial)
  <;> simp [iteratedFDerivWithin_univ.symm, uniqueDiffOn_univ]

/--
If `f` is `n` times continuously differentiable at `x`, then the `n`th iterated Fréchet derivative
with respect to `𝕜` equals scalar restriction of the `n`th iterated Fréchet derivative with respect
to `𝕜'`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/RestrictScalars/Variant859fd53c0c32ee308821a69cdd5faaf8776dca60e1aea2feec83f44147af6362.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/RestrictScalars/Variant859fd53c0c32ee308821a69cdd5faaf8776dca60e1aea2feec83f44147af6362.lean#L82).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `454b6e9707d37a3c8ada8f07be159400d056e505` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
