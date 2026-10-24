# boundaryW_ae_ne_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a7e6cd7df97637494d96a8b64397b7439ed9f445",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 440,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/3c/3c54db5fdca7ab4e9d91e60b72906fce284eeb7b16775eee52beac984ed7b668.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:54df3463-479b-3d87-6d43-eba0ff6dfdbb",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f5f4d419-bb9b-7aee-b6e3-3f93c6e22779",
  "kind": "theorem",
  "lexical_name": "boundaryW_ae_ne_zero",
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
  "slug": "boundaryw-ae-ne-zero--4bd988a9c2f849ed22e0ecfe",
  "source": {
    "blob": "a7e6cd7df97637494d96a8b64397b7439ed9f445",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 446,
    "line": 440,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceFilterDeltaLiteralCheck/Variant3c54db5fdca7ab4e9d91e60b72906fce284eeb7b16775eee52beac984ed7b668.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4bd988a9c2f849ed22e0ecfea8d998bee11243836aa381a5b13ee46e4d21cf59",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/SourceFilterDeltaLiteralCheck/Variant3c54db5fdca7ab4e9d91e60b72906fce284eeb7b16775eee52beac984ed7b668.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f5f4d419-bb9b-7aee-b6e3-3f93c6e22779`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 440–446.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem boundaryW_ae_ne_zero : ∀ᵐ t : ℝ, W ((t : ℂ) * Complex.I) ≠ 0 := by
  have hi : Function.Injective (fun t : ℝ => (t : ℂ) * Complex.I) :=
    (mul_left_injective₀ Complex.I_ne_zero).comp Complex.ofReal_injective
  have hc := W_zero_set_countable.preimage hi
  simpa only [mem_preimage, mem_ofPred_eq] using hc.ae_notMem volume

/-- The exact shifted, smoothed boundary source filter, retaining every prescribed factor. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/SourceFilterDeltaLiteralCheck/Variant3c54db5fdca7ab4e9d91e60b72906fce284eeb7b16775eee52beac984ed7b668.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceFilterDeltaLiteralCheck/Variant3c54db5fdca7ab4e9d91e60b72906fce284eeb7b16775eee52beac984ed7b668.lean#L440).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a7e6cd7df97637494d96a8b64397b7439ed9f445` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
