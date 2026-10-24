# density_sub_eps_le_sum_density_div_card

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "fe82b5b7f503465ea2496096f7f8af51b174624c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 259,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/21/212f5f14a83107a93c4a85556dea48bd36ef32d5d550a5f14750f696acce0ecd.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5eadbacf-99f2-d5bf-cf8e-c0071ed5d389",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:18725e9a-91e6-937e-7288-43a94d2649fe",
  "kind": "theorem",
  "lexical_name": "density_sub_eps_le_sum_density_div_card",
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
  "slug": "density-sub-eps-le-sum-density-div-card--2e3b9e828912f55173391ca7",
  "source": {
    "blob": "fe82b5b7f503465ea2496096f7f8af51b174624c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 296,
    "line": 259,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Chunk/Variant212f5f14a83107a93c4a85556dea48bd36ef32d5d550a5f14750f696acce0ecd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2e3b9e828912f55173391ca7a7df97e66036a7c1a2c5aed56499031b8f8e3fac",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/GraphTheory/Chunk/Variant212f5f14a83107a93c4a85556dea48bd36ef32d5d550a5f14750f696acce0ecd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:18725e9a-91e6-937e-7288-43a94d2649fe`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 259–296.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem density_sub_eps_le_sum_density_div_card [Nonempty α]
    (hPα : P.parts.card * 16 ^ P.parts.card ≤ card α) (hPε : ↑100 ≤ ↑4 ^ P.parts.card * ε ^ 5)
    {hU : U ∈ P.parts} {hV : V ∈ P.parts} {A B : Finset (Finset α)}
    (hA : A ⊆ (chunk hP G ε hU).parts) (hB : B ⊆ (chunk hP G ε hV).parts) :
    (G.edgeDensity (A.biUnion id) (B.biUnion id)) - ε ^ 5 / 50 ≤
    (∑ ab in A.product B, (G.edgeDensity ab.1 ab.2 : ℝ)) / (A.card * B.card) := by
  have : ↑(G.edgeDensity (A.biUnion id) (B.biUnion id)) - ε ^ 5 / ↑50 ≤
      (↑1 - ε ^ 5 / 50) * G.edgeDensity (A.biUnion id) (B.biUnion id) := by
    rw [sub_mul, one_mul, sub_le_sub_iff_left]
    refine' mul_le_of_le_one_right (by sz_positivity) _
    exact_mod_cast G.edgeDensity_le_one _ _
  refine' this.trans _
  conv_rhs => -- Porting note: LHS and RHS need separate treatment to get the desired form
    simp only [SimpleGraph.edgeDensity_def, sum_div, Rat.cast_div, div_div]
  conv_lhs =>
    rw [SimpleGraph.edgeDensity_def, SimpleGraph.interedges, ← sup_eq_biUnion, ← sup_eq_biUnion,
      Rel.card_interedges_finpartition _ (ofSubset _ hA rfl) (ofSubset _ hB rfl), ofSubset_parts,
      ofSubset_parts]
    simp only [cast_sum, sum_div, mul_sum, Rat.cast_sum, Rat.cast_div,
      mul_div_left_comm ((1 : ℝ) - _)]
  push_cast
  apply sum_le_sum
  simp only [and_imp, Prod.forall, mem_product]
  rintro x y hx hy
  rw [mul_mul_mul_comm, mul_comm (x.card : ℝ), mul_comm (y.card : ℝ), le_div_iff, mul_assoc]
  · refine' mul_le_of_le_one_right (cast_nonneg _) _
    rw [div_mul_eq_mul_div, ← mul_assoc, mul_assoc]
    refine' div_le_one_of_le _ (by positivity)
    refine' (mul_le_mul_of_nonneg_right (one_sub_le_m_div_m_add_one_sq hPα hPε) _).trans _
    · exact_mod_cast _root_.zero_le _
    rw [sq, mul_mul_mul_comm, mul_comm ((m : ℝ) / _), mul_comm ((m : ℝ) / _)]
    refine' mul_le_mul _ _ _ (cast_nonneg _)
    apply le_sum_card_subset_chunk_parts hA hx
    apply le_sum_card_subset_chunk_parts hB hy
    positivity
  refine' mul_pos (mul_pos _ _) (mul_pos _ _) <;> rw [cast_pos, Finset.card_pos]
  exacts [⟨_, hx⟩, nonempty_of_mem_parts _ (hA hx), ⟨_, hy⟩, nonempty_of_mem_parts _ (hB hy)]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/GraphTheory/Chunk/Variant212f5f14a83107a93c4a85556dea48bd36ef32d5d550a5f14750f696acce0ecd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Chunk/Variant212f5f14a83107a93c4a85556dea48bd36ef32d5d550a5f14750f696acce0ecd.lean#L259).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fe82b5b7f503465ea2496096f7f8af51b174624c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
