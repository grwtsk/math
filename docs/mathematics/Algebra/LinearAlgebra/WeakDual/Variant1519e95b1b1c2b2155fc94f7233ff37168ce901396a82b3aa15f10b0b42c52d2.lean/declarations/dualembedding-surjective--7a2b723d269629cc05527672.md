# dualEmbedding_surjective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e438f85a-a391-5bc9-629c-b88e2b92c940",
  "kind": "theorem",
  "lexical_name": "dualEmbedding_surjective",
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
  "slug": "dualembedding-surjective--7a2b723d269629cc05527672",
  "source": {
    "blob": "ec12ffe16920ff1577d627ad05b1be24b22c2dd9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 202,
    "line": 194,
    "path": "GRWTSK/Algebra/LinearAlgebra/WeakDual/Variant1519e95b1b1c2b2155fc94f7233ff37168ce901396a82b3aa15f10b0b42c52d2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7a2b723d269629cc05527672d8eaa0644edb1229f01a8fb02a8388cfc25cc522",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/WeakDual/Variant1519e95b1b1c2b2155fc94f7233ff37168ce901396a82b3aa15f10b0b42c52d2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e438f85a-a391-5bc9-629c-b88e2b92c940`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 194–202.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem dualEmbedding_surjective : Function.Surjective (WeakBilin.eval B) := fun f ↦ by
  have : f.toLinearMap ∈
      Submodule.span 𝕜 (ContinuousLinearMap.coeLM 𝕜 ∘ₗ WeakBilin.eval B).range := by
    simpa [coe_range, mem_span_iff_continuous, continuous_iff_le_induced, ← induced_to_pi] using!
      f.continuous.le_induced
  simpa

/-- When `B` is right-separating, `F` is linearly equivalent to the strong dual of `E` with the
weak topology. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/WeakDual/Variant1519e95b1b1c2b2155fc94f7233ff37168ce901396a82b3aa15f10b0b42c52d2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/WeakDual/Variant1519e95b1b1c2b2155fc94f7233ff37168ce901396a82b3aa15f10b0b42c52d2.lean#L194).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ec12ffe16920ff1577d627ad05b1be24b22c2dd9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
