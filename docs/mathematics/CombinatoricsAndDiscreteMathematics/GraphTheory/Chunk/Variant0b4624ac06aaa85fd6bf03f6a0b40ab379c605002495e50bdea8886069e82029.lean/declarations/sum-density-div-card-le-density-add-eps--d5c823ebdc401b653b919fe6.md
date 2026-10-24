# sum_density_div_card_le_density_add_eps

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:990ac994-1fa3-eabd-2a3a-f5c0f2ddc4cc",
  "kind": "theorem",
  "lexical_name": "sum_density_div_card_le_density_add_eps",
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
  "slug": "sum-density-div-card-le-density-add-eps--d5c823ebdc401b653b919fe6",
  "source": {
    "blob": "1d3640818920e6fa027bbee864ca5e7737da8fcb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 326,
    "line": 288,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Chunk/Variant0b4624ac06aaa85fd6bf03f6a0b40ab379c605002495e50bdea8886069e82029.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d5c823ebdc401b653b919fe63ad96518bbcc3774803ac00091b1ea3b350e3e44",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/GraphTheory/Chunk/Variant0b4624ac06aaa85fd6bf03f6a0b40ab379c605002495e50bdea8886069e82029.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:990ac994-1fa3-eabd-2a3a-f5c0f2ddc4cc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 288–326.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem sum_density_div_card_le_density_add_eps [Nonempty α]
    (hPα : #P.parts * 16 ^ #P.parts ≤ card α) (hPε : ↑100 ≤ ↑4 ^ #P.parts * ε ^ 5)
    (hε₁ : ε ≤ 1) {hU : U ∈ P.parts} {hV : V ∈ P.parts} {A B : Finset (Finset α)}
    (hA : A ⊆ (chunk hP G ε hU).parts) (hB : B ⊆ (chunk hP G ε hV).parts) :
    (∑ ab ∈ A.product B, G.edgeDensity ab.1 ab.2 : ℝ) / (#A * #B) ≤
    G.edgeDensity (A.biUnion id) (B.biUnion id) + ε ^ 5 / 49 := by
  have : (↑1 + ε ^ 5 / ↑49) * G.edgeDensity (A.biUnion id) (B.biUnion id) ≤
      G.edgeDensity (A.biUnion id) (B.biUnion id) + ε ^ 5 / 49 := by
    rw [add_mul, one_mul, add_le_add_iff_left]
    refine mul_le_of_le_one_right (by sz_positivity) ?_
    exact mod_cast G.edgeDensity_le_one _ _
  refine le_trans ?_ this
  conv_lhs => -- Porting note: LHS and RHS need separate treatment to get the desired form
    simp only [SimpleGraph.edgeDensity, edgeDensity, sum_div, Rat.cast_div, div_div]
  conv_rhs =>
    rw [SimpleGraph.edgeDensity, edgeDensity, ← sup_eq_biUnion, ← sup_eq_biUnion,
      Rel.card_interedges_finpartition _ (ofSubset _ hA rfl) (ofSubset _ hB rfl)]
    simp only [cast_sum, mul_sum, sum_div, Rat.cast_sum, Rat.cast_div,
      mul_div_left_comm ((1 : ℝ) + _)]
  push_cast
  apply sum_le_sum
  simp only [and_imp, Prod.forall, mem_product, show A.product B = A ×ˢ B by rfl]
  intro x y hx hy
  rw [mul_mul_mul_comm, mul_comm (#x : ℝ), mul_comm (#y : ℝ), div_le_iff₀, mul_assoc]
  · refine le_mul_of_one_le_right (cast_nonneg _) ?_
    rw [div_mul_eq_mul_div, one_le_div]
    · refine le_trans ?_ (mul_le_mul_of_nonneg_right (m_add_one_div_m_le_one_add hPα hPε hε₁) ?_)
      · rw [sq, mul_mul_mul_comm, mul_comm (_ / (m : ℝ)), mul_comm (_ / (m : ℝ))]
        gcongr
        exacts [sum_card_subset_chunk_parts_le (by sz_positivity) hA hx,
          sum_card_subset_chunk_parts_le (by sz_positivity) hB hy]
      · exact_mod_cast _root_.zero_le
    rw [← cast_mul, cast_pos]
    apply mul_pos <;> rw [Finset.card_pos, sup_eq_biUnion, biUnion_nonempty]
    · exact ⟨_, hx, nonempty_of_mem_parts _ (hA hx)⟩
    · exact ⟨_, hy, nonempty_of_mem_parts _ (hB hy)⟩
  refine mul_pos (mul_pos ?_ ?_) (mul_pos ?_ ?_) <;> rw [cast_pos, Finset.card_pos]
  exacts [⟨_, hx⟩, nonempty_of_mem_parts _ (hA hx), ⟨_, hy⟩, nonempty_of_mem_parts _ (hB hy)]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/GraphTheory/Chunk/Variant0b4624ac06aaa85fd6bf03f6a0b40ab379c605002495e50bdea8886069e82029.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Chunk/Variant0b4624ac06aaa85fd6bf03f6a0b40ab379c605002495e50bdea8886069e82029.lean#L288).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1d3640818920e6fa027bbee864ca5e7737da8fcb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
