# exists_primitive_element_lt_of_isComplex

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f35ef764-5d5d-1fd4-0400-8b0d8323e3f5",
  "kind": "theorem",
  "lexical_name": "exists_primitive_element_lt_of_isComplex",
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
  "slug": "exists-primitive-element-lt-of-iscomplex--f96f8baf76ed116e142dbe20",
  "source": {
    "blob": "74653116c7f397063415db43507efd1c65a6c1ee",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 590,
    "line": 554,
    "path": "GRWTSK/NumberTheory/AlgebraicNumberTheory/ConvexBody/Variantc40b7e3f9533944374df6ad550263d7e6f56599558500a28abea106f9c1d84e6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f96f8baf76ed116e142dbe20974591900c3fcebf8700539d17b61d4609836670",
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

Occurrence: `result:f35ef764-5d5d-1fd4-0400-8b0d8323e3f5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 554–590.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_primitive_element_lt_of_isComplex {w₀ : InfinitePlace K} (hw₀ : IsComplex w₀)
    {B : ℝ≥0} (hB : minkowskiBound K ↑1 < convexBodyLT'Factor K * B) :
    ∃ a : 𝓞 K, ℚ⟮(a : K)⟯ = ⊤ ∧
      ∀ w : InfinitePlace K, w a < Real.sqrt (1 + B ^ 2) := by
  classical
  have : minkowskiBound K ↑1 <
      volume (convexBodyLT' K (fun w ↦ if w = w₀ then NNReal.sqrt B else 1) ⟨w₀, hw₀⟩) := by
    rw [convexBodyLT'_volume, ← Finset.prod_erase_mul _ _ (Finset.mem_univ w₀)]
    simp_rw [ite_pow, one_pow]
    rw [Finset.prod_ite_eq']
    simp_rw [Finset.notMem_erase, ite_false, mult, not_isReal_iff_isComplex.mpr hw₀,
      ite_true, ite_false, one_mul, NNReal.sq_sqrt]
    exact hB
  obtain ⟨a, h_nz, h_le, h_le₀⟩ := exists_ne_zero_mem_ringOfIntegers_lt' K ⟨w₀, hw₀⟩ this
  refine ⟨a, ?_, fun w ↦ ?_⟩
  · exact is_primitive_element_of_infinitePlace_lt h_nz
      (fun w h_ne ↦ by convert if_neg h_ne ▸ h_le w h_ne) (Or.inr h_le₀.1)
  · by_cases h_eq : w = w₀
    · rw [if_pos rfl] at h_le₀
      dsimp only at h_le₀
      rw [h_eq, ← norm_embedding_eq, Real.lt_sqrt (norm_nonneg _), ← Complex.re_add_im
        (embedding w₀ _), Complex.norm_add_mul_I, Real.sq_sqrt (by positivity)]
      refine add_lt_add ?_ ?_
      · rw [← sq_abs, sq_lt_one_iff₀ (abs_nonneg _)]
        exact h_le₀.1
      · rw [sq_lt_sq, NNReal.abs_eq, ← NNReal.sq_sqrt B]
        exact h_le₀.2
    · refine lt_of_lt_of_le (if_neg h_eq ▸ h_le w h_eq) ?_
      rw [NNReal.coe_one, Real.le_sqrt' zero_lt_one, one_pow]
      norm_num

open scoped Classical in
/-- Let `I` be a fractional ideal of `K`. Assume that `B : ℝ` is such that
`minkowskiBound K I < volume (convexBodySum K B)` where `convexBodySum K B` is the set of points
`x` such that `∑ w real, ‖x w‖ + 2 * ∑ w complex, ‖x w‖ ≤ B` (see `convexBodySum_volume` for
the computation of this volume), then there exists a nonzero algebraic number `a` in `I` such
that `|Norm a| < (B / d) ^ d` where `d` is the degree of `K`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AlgebraicNumberTheory/ConvexBody/Variantc40b7e3f9533944374df6ad550263d7e6f56599558500a28abea106f9c1d84e6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AlgebraicNumberTheory/ConvexBody/Variantc40b7e3f9533944374df6ad550263d7e6f56599558500a28abea106f9c1d84e6.lean#L554).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `74653116c7f397063415db43507efd1c65a6c1ee` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
