# eps_le_card_star_div

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d973b5d5-9b39-1eff-e988-e3b5e9ddad0d",
  "kind": "theorem",
  "lexical_name": "eps_le_card_star_div",
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
  "slug": "eps-le-card-star-div--62561fbc292769edcadaf103",
  "source": {
    "blob": "ac37cd431d24cad3b83dbe4c98e092d1749e35cc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 441,
    "line": 400,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Chunk/Variantbb5be221738148a72f377abef96ebf163216a352b87c51b966a69d2bc9149b21.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:62561fbc292769edcadaf1035c9abd467efb0bdae027a2c0be2c5c8a9ccec535",
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

Occurrence: `result:d973b5d5-9b39-1eff-e988-e3b5e9ddad0d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 400–441.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem eps_le_card_star_div [Nonempty α] (hPα : P.parts.card * 16 ^ P.parts.card ≤ card α)
    (hPε : ↑100 ≤ ↑4 ^ P.parts.card * ε ^ 5) (hε₁ : ε ≤ 1) (hU : U ∈ P.parts) (hV : V ∈ P.parts)
    (hUV : U ≠ V) (hunif : ¬G.IsUniform ε U V) :
    ↑4 / ↑5 * ε ≤ (star hP G ε hU V).card / ↑4 ^ P.parts.card := by
  have hm : (0 : ℝ) ≤ 1 - (↑m)⁻¹ := sub_nonneg_of_le (inv_le_one <| one_le_m_coe hPα)
  have hε : 0 ≤ 1 - ε / 10 :=
    sub_nonneg_of_le (div_le_one_of_le (hε₁.trans <| by norm_num) <| by norm_num)
  calc
    4 / 5 * ε = (1 - 1 / 10) * (1 - 9⁻¹) * ε := by norm_num
    _ ≤ (1 - ε / 10) * (1 - (↑m)⁻¹) * ((G.nonuniformWitness ε U V).card / U.card) :=
      (mul_le_mul (mul_le_mul (sub_le_sub_left (div_le_div_of_le_of_nonneg hε₁ <| by norm_num) _)
        (sub_le_sub_left (inv_le_inv_of_le (by norm_num) <| by
          exact_mod_cast (show 9 ≤ 100 by norm_num).trans
            (hundred_le_m hPα hPε hε₁)) _) (by norm_num) hε)
        ((le_div_iff' <| (@cast_pos ℝ _ _ _).2 (P.nonempty_of_mem_parts hU).card_pos).2 <|
          G.le_card_nonuniformWitness hunif) (by sz_positivity) (by positivity))
    _ = (1 - ε / 10) * (G.nonuniformWitness ε U V).card * ((1 - (↑m)⁻¹) / U.card) := by
      rw [mul_assoc, mul_assoc, mul_div_left_comm]
    _ ≤ ((star hP G ε hU V).biUnion id).card * ((1 - (↑m)⁻¹) / U.card) :=
      (mul_le_mul_of_nonneg_right
        (one_sub_eps_mul_card_nonuniformWitness_le_card_star hV hUV hunif hPε hε₁) (by positivity))
    _ ≤ (star hP G ε hU V).card * (m + 1) * ((1 - (↑m)⁻¹) / U.card) :=
      (mul_le_mul_of_nonneg_right card_biUnion_star_le_m_add_one_card_star_mul (by positivity))
    _ ≤ (star hP G ε hU V).card * (m + ↑1) * ((↑1 - (↑m)⁻¹) / (↑4 ^ P.parts.card * m)) :=
      (mul_le_mul_of_nonneg_left (div_le_div_of_le_left hm (by sz_positivity) <|
        pow_mul_m_le_card_part hP hU) (by positivity))
    _ ≤ (star hP G ε hU V).card / ↑4 ^ P.parts.card := by
      rw [mul_assoc, mul_comm ((4 : ℝ) ^ P.parts.card), ← div_div, ← mul_div_assoc, ← mul_comm_div]
      refine' mul_le_of_le_one_right (by positivity) _
      have hm : (0 : ℝ) < m := by sz_positivity
      rw [mul_div_assoc', div_le_one hm, ← one_div, one_sub_div hm.ne', mul_div_assoc',
        div_le_iff hm]
      linarith

/-!
### Final bounds

Those inequalities are the end result of all this hard work.
-/


/-- Lower bound on the edge densities between non-uniform parts of `SzemerediRegularity.star`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/GraphTheory/Chunk/Variantbb5be221738148a72f377abef96ebf163216a352b87c51b966a69d2bc9149b21.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Chunk/Variantbb5be221738148a72f377abef96ebf163216a352b87c51b966a69d2bc9149b21.lean#L400).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ac37cd431d24cad3b83dbe4c98e092d1749e35cc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
