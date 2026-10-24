# exists_ne_zero_mem_ringOfIntegers_lt'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b476eb4ed08625e70f96597062f535e968c201d3",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 521,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/fd/fdbc02aeaf1bc8c0c532baf22ca3954a6a6b561892b23b4891cdcd48de032558.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e715e617-3b8f-3c97-032b-605a88d758fa",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:85ad62ca-6e53-9f05-a7cd-bbeb3991d774",
  "kind": "theorem",
  "lexical_name": "exists_ne_zero_mem_ringOfIntegers_lt'",
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
  "slug": "exists-ne-zero-mem-ringofintegers-lt--2e659d6d3780b8c47144d9a8",
  "source": {
    "blob": "b476eb4ed08625e70f96597062f535e968c201d3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 528,
    "line": 521,
    "path": "GRWTSK/NumberTheory/AlgebraicNumberTheory/ConvexBody/Variantfdbc02aeaf1bc8c0c532baf22ca3954a6a6b561892b23b4891cdcd48de032558.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2e659d6d3780b8c47144d9a85ef0f808f4e79e71d8e045732ed7f1e8579f697b",
  "verification": {
    "reference": "docs/verification/NumberTheory/AlgebraicNumberTheory/ConvexBody/Variantfdbc02aeaf1bc8c0c532baf22ca3954a6a6b561892b23b4891cdcd48de032558.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:85ad62ca-6e53-9f05-a7cd-bbeb3991d774`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 521–528.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_ne_zero_mem_ringOfIntegers_lt' (w₀ : {w : InfinitePlace K // IsComplex w})
    (h : minkowskiBound K ↑1 < volume (convexBodyLT' K f w₀)) :
    ∃ a : 𝓞 K, a ≠ 0 ∧ (∀ w : InfinitePlace K, w ≠ w₀ → w a < f w) ∧
      |(w₀.val.embedding a).re| < 1 ∧ |(w₀.val.embedding a).im| < (f w₀ : ℝ) ^ 2 := by
  obtain ⟨_, h_mem, h_nz, h_bd⟩ := exists_ne_zero_mem_ideal_lt' K ↑1 w₀ h
  obtain ⟨a, rfl⟩ := (FractionalIdeal.mem_one_iff _).mp h_mem
  exact ⟨a, RingOfIntegers.coe_ne_zero_iff.mp h_nz, h_bd⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AlgebraicNumberTheory/ConvexBody/Variantfdbc02aeaf1bc8c0c532baf22ca3954a6a6b561892b23b4891cdcd48de032558.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AlgebraicNumberTheory/ConvexBody/Variantfdbc02aeaf1bc8c0c532baf22ca3954a6a6b561892b23b4891cdcd48de032558.lean#L521).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b476eb4ed08625e70f96597062f535e968c201d3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
