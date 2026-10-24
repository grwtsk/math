# edgeDensity_chunk_not_uniform

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9755cd36-65bd-18d3-e013-ba929a7c55e1",
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
  "slug": "edgedensity-chunk-not-uniform--0a9d15d957c47e26f3cfa98c",
  "source": {
    "blob": "ac37cd431d24cad3b83dbe4c98e092d1749e35cc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 531,
    "line": 484,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Chunk/Variantbb5be221738148a72f377abef96ebf163216a352b87c51b966a69d2bc9149b21.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0a9d15d957c47e26f3cfa98c4d634a892dafac48e6e23a3ba21907853c4fbdba",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/GraphTheory/Chunk/Variantbb5be221738148a72f377abef96ebf163216a352b87c51b966a69d2bc9149b21.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9755cd36-65bd-18d3-e013-ba929a7c55e1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 484–531.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem edgeDensity_chunk_not_uniform [Nonempty α] (hPα : P.parts.card * 16 ^ P.parts.card ≤ card α)
    (hPε : ↑100 ≤ ↑4 ^ P.parts.card * ε ^ 5) (hε₁ : ε ≤ 1) {hU : U ∈ P.parts} {hV : V ∈ P.parts}
    (hUVne : U ≠ V) (hUV : ¬G.IsUniform ε U V) :
    (G.edgeDensity U V : ℝ) ^ 2 - ε ^ 5 / ↑25 + ε ^ 4 / ↑3 ≤
    (∑ ab in (chunk hP G ε hU).parts.product (chunk hP G ε hV).parts,
      (G.edgeDensity ab.1 ab.2 : ℝ) ^ 2) / ↑16 ^ P.parts.card :=
  calc
    ↑(G.edgeDensity U V) ^ 2 - ε ^ 5 / 25 + ε ^ 4 / ↑3 ≤ ↑(G.edgeDensity U V) ^ 2 - ε ^ 5 / ↑25 +
        (star hP G ε hU V).card * (star hP G ε hV U).card / ↑16 ^ P.parts.card *
          (↑9 / ↑16) * ε ^ 2 := by
      apply add_le_add_left
      have Ul : 4 / 5 * ε ≤ (star hP G ε hU V).card / _ :=
        eps_le_card_star_div hPα hPε hε₁ hU hV hUVne hUV
      have Vl : 4 / 5 * ε ≤ (star hP G ε hV U).card / _ :=
        eps_le_card_star_div hPα hPε hε₁ hV hU hUVne.symm fun h => hUV h.symm
      rw [show (16 : ℝ) = ↑4 ^ 2 by norm_num, pow_right_comm, sq ((4 : ℝ) ^ _), ←
        _root_.div_mul_div_comm, mul_assoc]
      have : 0 < ε := by sz_positivity
      have UVl := mul_le_mul Ul Vl (by positivity) (by positivity)
      refine' le_trans _ (mul_le_mul_of_nonneg_right UVl _)
      · norm_num
        nlinarith
      · norm_num
        positivity
    _ ≤ (∑ ab in (chunk hP G ε hU).parts.product (chunk hP G ε hV).parts,
        (G.edgeDensity ab.1 ab.2 : ℝ) ^ 2) / ↑16 ^ P.parts.card := by
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
        norm_num
        exact edgeDensity_star_not_uniform hPα hPε hε₁ hUVne hUV
      · rw [sp, card_product]
        apply (edgeDensity_chunk_aux hPα hPε hU hV).trans
        rw [card_chunk (m_pos hPα).ne', card_chunk (m_pos hPα).ne', ← mul_pow]
        norm_num; rfl
#align szemeredi_regularity.edge_density_chunk_not_uniform SzemerediRegularity.edgeDensity_chunk_not_uniform

/-- Lower bound on the edge densities between parts of `SzemerediRegularity.increment`. This is the
blanket lower bound used the uniform parts. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/GraphTheory/Chunk/Variantbb5be221738148a72f377abef96ebf163216a352b87c51b966a69d2bc9149b21.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Chunk/Variantbb5be221738148a72f377abef96ebf163216a352b87c51b966a69d2bc9149b21.lean#L484).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ac37cd431d24cad3b83dbe4c98e092d1749e35cc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
