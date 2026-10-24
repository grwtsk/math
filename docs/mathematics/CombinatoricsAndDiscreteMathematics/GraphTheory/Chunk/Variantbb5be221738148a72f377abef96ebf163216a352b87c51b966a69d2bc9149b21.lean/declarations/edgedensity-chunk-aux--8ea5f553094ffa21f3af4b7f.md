# edgeDensity_chunk_aux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5cb750d8-3e9d-65cc-848c-69584254f25b",
  "kind": "theorem",
  "lexical_name": "edgeDensity_chunk_aux",
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
  "slug": "edgedensity-chunk-aux--8ea5f553094ffa21f3af4b7f",
  "source": {
    "blob": "ac37cd431d24cad3b83dbe4c98e092d1749e35cc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 387,
    "line": 360,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Chunk/Variantbb5be221738148a72f377abef96ebf163216a352b87c51b966a69d2bc9149b21.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8ea5f553094ffa21f3af4b7f335cdb9d6b82dabcec9481d4be6fc6bf5867ac60",
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

Occurrence: `result:5cb750d8-3e9d-65cc-848c-69584254f25b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 360–387.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem edgeDensity_chunk_aux [Nonempty α]
    (hPα : P.parts.card * 16 ^ P.parts.card ≤ card α) (hPε : ↑100 ≤ ↑4 ^ P.parts.card * ε ^ 5)
    (hU : U ∈ P.parts) (hV : V ∈ P.parts) :
    (G.edgeDensity U V : ℝ) ^ 2 - ε ^ 5 / ↑25 ≤
    ((∑ ab in (chunk hP G ε hU).parts.product (chunk hP G ε hV).parts,
      (G.edgeDensity ab.1 ab.2 : ℝ)) / ↑16 ^ P.parts.card) ^ 2 := by
  obtain hGε | hGε := le_total (G.edgeDensity U V : ℝ) (ε ^ 5 / 50)
  · refine' (sub_nonpos_of_le <| (sq_le _ _).trans <| hGε.trans _).trans (sq_nonneg _)
    · exact_mod_cast G.edgeDensity_nonneg _ _
    · exact_mod_cast G.edgeDensity_le_one _ _
    · exact div_le_div_of_le_left (by sz_positivity) (by norm_num) (by norm_num)
  rw [← sub_nonneg] at hGε
  have : ↑(G.edgeDensity U V) - ε ^ 5 / ↑50 ≤
      (∑ ab in (chunk hP G ε hU).parts.product (chunk hP G ε hV).parts,
        (G.edgeDensity ab.1 ab.2 : ℝ)) / ↑16 ^ P.parts.card := by
    have rflU := Set.Subset.refl (chunk hP G ε hU).parts.toSet
    have rflV := Set.Subset.refl (chunk hP G ε hV).parts.toSet
    refine' (le_trans _ <| density_sub_eps_le_sum_density_div_card hPα hPε rflU rflV).trans _
    · rw [biUnion_parts, biUnion_parts]
    · rw [card_chunk (m_pos hPα).ne', card_chunk (m_pos hPα).ne', ← cast_mul, ← mul_pow, cast_pow]
      norm_cast
  refine' le_trans _ (pow_le_pow_of_le_left hGε this 2)
  rw [sub_sq, sub_add, sub_le_sub_iff_left]
  refine' (sub_le_self _ <| sq_nonneg <| ε ^ 5 / 50).trans _
  rw [mul_right_comm, mul_div_left_comm, div_eq_mul_inv (ε ^ 5),
    show (2 : ℝ) / 50 = 25⁻¹ by norm_num]
  exact mul_le_of_le_one_right (by sz_positivity) (by exact_mod_cast G.edgeDensity_le_one _ _)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/GraphTheory/Chunk/Variantbb5be221738148a72f377abef96ebf163216a352b87c51b966a69d2bc9149b21.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Chunk/Variantbb5be221738148a72f377abef96ebf163216a352b87c51b966a69d2bc9149b21.lean#L360).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ac37cd431d24cad3b83dbe4c98e092d1749e35cc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
