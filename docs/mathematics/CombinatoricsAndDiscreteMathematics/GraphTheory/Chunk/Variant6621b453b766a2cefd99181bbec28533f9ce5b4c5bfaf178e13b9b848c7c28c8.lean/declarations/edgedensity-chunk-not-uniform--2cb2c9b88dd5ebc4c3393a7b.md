# edgeDensity_chunk_not_uniform

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a420b7644d456dba8515ea565bb5ca301a691cd8",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 454,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/66/6621b453b766a2cefd99181bbec28533f9ce5b4c5bfaf178e13b9b848c7c28c8.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ec1f93be-ac20-eeb8-239d-03d8b810e196",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:379f5005-737f-d816-a674-5178af75bff2",
  "kind": "theorem",
  "lexical_name": "edgeDensity_chunk_not_uniform",
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
  "slug": "edgedensity-chunk-not-uniform--2cb2c9b88dd5ebc4c3393a7b",
  "source": {
    "blob": "a420b7644d456dba8515ea565bb5ca301a691cd8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 502,
    "line": 454,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Chunk/Variant6621b453b766a2cefd99181bbec28533f9ce5b4c5bfaf178e13b9b848c7c28c8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2cb2c9b88dd5ebc4c3393a7b9fe6b7092527645c38883b7eee76f864c18ce7c3",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/GraphTheory/Chunk/Variant6621b453b766a2cefd99181bbec28533f9ce5b4c5bfaf178e13b9b848c7c28c8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:379f5005-737f-d816-a674-5178af75bff2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 454–502.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem edgeDensity_chunk_not_uniform [Nonempty α] (hPα : #P.parts * 16 ^ #P.parts ≤ card α)
    (hPε : ↑100 ≤ ↑4 ^ #P.parts * ε ^ 5) (hε₁ : ε ≤ 1) {hU : U ∈ P.parts} {hV : V ∈ P.parts}
    (hUVne : U ≠ V) (hUV : ¬G.IsUniform ε U V) :
    (G.edgeDensity U V : ℝ) ^ 2 - ε ^ 5 / ↑25 + ε ^ 4 / ↑3 ≤
    (∑ ab ∈ (chunk hP G ε hU).parts.product (chunk hP G ε hV).parts,
      (G.edgeDensity ab.1 ab.2 : ℝ) ^ 2) / ↑16 ^ #P.parts :=
  calc
    ↑(G.edgeDensity U V) ^ 2 - ε ^ 5 / 25 + ε ^ 4 / ↑3 ≤ ↑(G.edgeDensity U V) ^ 2 - ε ^ 5 / ↑25 +
        #(star hP G ε hU V) * #(star hP G ε hV U) / ↑16 ^ #P.parts *
          (↑9 / ↑16) * ε ^ 2 := by
      gcongr
      have Ul : 4 / 5 * ε ≤ #(star hP G ε hU V) / _ :=
        eps_le_card_star_div hPα hPε hε₁ hU hV hUVne hUV
      have Vl : 4 / 5 * ε ≤ #(star hP G ε hV U) / _ :=
        eps_le_card_star_div hPα hPε hε₁ hV hU hUVne.symm fun h => hUV h.symm
      rw [show (16 : ℝ) = ↑4 ^ 2 by norm_num, pow_right_comm, sq ((4 : ℝ) ^ _), ←
        _root_.div_mul_div_comm, mul_assoc]
      have : 0 < ε := by sz_positivity
      have UVl := mul_le_mul Ul Vl (by positivity) ?_
      swap
      · -- This seems faster than `exact div_nonneg (by positivity) (by positivity)` and *much*
        -- (tens of seconds) faster than `positivity` on its own.
        apply div_nonneg <;> positivity
      refine le_trans ?_ (mul_le_mul_of_nonneg_right UVl ?_)
      · norm_num
        nlinarith
      · simp [pow_two_nonneg]
    _ ≤ (∑ ab ∈ (chunk hP G ε hU).parts.product (chunk hP G ε hV).parts,
        (G.edgeDensity ab.1 ab.2 : ℝ) ^ 2) / ↑16 ^ #P.parts := by
      have t : (star hP G ε hU V).product (star hP G ε hV U) ⊆
          (chunk hP G ε hU).parts.product (chunk hP G ε hV).parts :=
        product_subset_product star_subset_chunk star_subset_chunk
      have hε : 0 ≤ ε := by sz_positivity
      have sp : ∀ (a b : Finset (Finset α)), a.product b = a ×ˢ b := fun a b => rfl
      have := add_div_le_sum_sq_div_card t (fun x => (G.edgeDensity x.1 x.2 : ℝ))
        ((G.edgeDensity U V : ℝ) ^ 2 - ε ^ 5 / ↑25) (show 0 ≤ 3 / 4 * ε by linarith) ?_ ?_
      · simp_rw [sp, card_product, card_chunk (m_pos hPα).ne', ← mul_pow, cast_pow, mul_pow,
          div_pow, ← mul_assoc] at this
        norm_num at this
        exact this
      · simp_rw [sp, card_product, card_chunk (m_pos hPα).ne', ← mul_pow]
        simpa using edgeDensity_star_not_uniform hPα hPε hε₁ hUVne hUV
      · rw [sp, card_product]
        apply (edgeDensity_chunk_aux hP hPα hPε hU hV).trans
        · rw [card_chunk (m_pos hPα).ne', card_chunk (m_pos hPα).ne', ← mul_pow]
          simp

/-- Lower bound on the edge densities between parts of `SzemerediRegularity.increment`. This is the
blanket lower bound used the uniform parts. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/GraphTheory/Chunk/Variant6621b453b766a2cefd99181bbec28533f9ce5b4c5bfaf178e13b9b848c7c28c8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Chunk/Variant6621b453b766a2cefd99181bbec28533f9ce5b4c5bfaf178e13b9b848c7c28c8.lean#L454).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a420b7644d456dba8515ea565bb5ca301a691cd8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
