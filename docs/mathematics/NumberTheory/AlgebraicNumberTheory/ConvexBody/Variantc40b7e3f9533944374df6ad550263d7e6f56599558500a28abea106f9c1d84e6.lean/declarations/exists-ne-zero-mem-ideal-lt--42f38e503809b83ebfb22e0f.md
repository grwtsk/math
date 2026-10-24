# exists_ne_zero_mem_ideal_lt'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f2bcfbe5-321c-ff0a-4a0b-8e70ddfc1ce1",
  "kind": "theorem",
  "lexical_name": "exists_ne_zero_mem_ideal_lt'",
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
  "slug": "exists-ne-zero-mem-ideal-lt--42f38e503809b83ebfb22e0f",
  "source": {
    "blob": "74653116c7f397063415db43507efd1c65a6c1ee",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 520,
    "line": 505,
    "path": "GRWTSK/NumberTheory/AlgebraicNumberTheory/ConvexBody/Variantc40b7e3f9533944374df6ad550263d7e6f56599558500a28abea106f9c1d84e6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:42f38e503809b83ebfb22e0ff71cb4229b97bab7332f461976f502d58c892de5",
  "verification": {
    "reference": "docs/verification/NumberTheory/AlgebraicNumberTheory/ConvexBody/Variantc40b7e3f9533944374df6ad550263d7e6f56599558500a28abea106f9c1d84e6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f2bcfbe5-321c-ff0a-4a0b-8e70ddfc1ce1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 505–520.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_ne_zero_mem_ideal_lt' (w₀ : {w : InfinitePlace K // IsComplex w})
    (h : minkowskiBound K I < volume (convexBodyLT' K f w₀)) :
    ∃ a ∈ (I : FractionalIdeal (𝓞 K)⁰ K), a ≠ 0 ∧ (∀ w : InfinitePlace K, w ≠ w₀ → w a < f w) ∧
      |(w₀.val.embedding a).re| < 1 ∧ |(w₀.val.embedding a).im| < (f w₀ : ℝ) ^ 2 := by
  have h_fund := ZSpan.isAddFundamentalDomain' (fractionalIdealLatticeBasis K I) volume
  have : Countable (span ℤ (Set.range (fractionalIdealLatticeBasis K I))).toAddSubgroup := by
    change Countable (span ℤ (Set.range (fractionalIdealLatticeBasis K I)))
    infer_instance
  obtain ⟨⟨x, hx⟩, h_nz, h_mem⟩ := exists_ne_zero_mem_lattice_of_measure_mul_two_pow_lt_measure
    h_fund (convexBodyLT'_neg_mem K f w₀) (convexBodyLT'_convex K f w₀) h
  rw [mem_toAddSubgroup, mem_span_fractionalIdealLatticeBasis] at hx
  obtain ⟨a, ha, rfl⟩ := hx
  exact ⟨a, ha, by simpa using h_nz, (convexBodyLT'_mem K f w₀).mp h_mem⟩

open scoped Classical in
/-- A version of `exists_ne_zero_mem_ideal_lt` for the ring of integers of `K`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AlgebraicNumberTheory/ConvexBody/Variantc40b7e3f9533944374df6ad550263d7e6f56599558500a28abea106f9c1d84e6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AlgebraicNumberTheory/ConvexBody/Variantc40b7e3f9533944374df6ad550263d7e6f56599558500a28abea106f9c1d84e6.lean#L505).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `74653116c7f397063415db43507efd1c65a6c1ee` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
