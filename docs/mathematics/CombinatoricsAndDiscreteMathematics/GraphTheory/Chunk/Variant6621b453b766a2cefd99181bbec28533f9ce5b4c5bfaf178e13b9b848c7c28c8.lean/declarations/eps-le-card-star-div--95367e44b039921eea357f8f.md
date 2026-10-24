# eps_le_card_star_div

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
      "line": 376,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/66/6621b453b766a2cefd99181bbec28533f9ce5b4c5bfaf178e13b9b848c7c28c8.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e6a11f48-efe4-cc09-82c3-8c3c2bd7f9f8",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0601cf07-891d-3eb9-18ad-c46049c40ff5",
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
  "slug": "eps-le-card-star-div--95367e44b039921eea357f8f",
  "source": {
    "blob": "a420b7644d456dba8515ea565bb5ca301a691cd8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 418,
    "line": 376,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Chunk/Variant6621b453b766a2cefd99181bbec28533f9ce5b4c5bfaf178e13b9b848c7c28c8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:95367e44b039921eea357f8ffa52971c10769ff5779afd7616468fb7e216f349",
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

Occurrence: `result:0601cf07-891d-3eb9-18ad-c46049c40ff5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 376–418.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem eps_le_card_star_div [Nonempty α] (hPα : #P.parts * 16 ^ #P.parts ≤ card α)
    (hPε : ↑100 ≤ ↑4 ^ #P.parts * ε ^ 5) (hε₁ : ε ≤ 1) (hU : U ∈ P.parts) (hV : V ∈ P.parts)
    (hUV : U ≠ V) (hunif : ¬G.IsUniform ε U V) :
    ↑4 / ↑5 * ε ≤ #(star hP G ε hU V) / ↑4 ^ #P.parts := by
  have hm : (0 : ℝ) ≤ 1 - (↑m)⁻¹ := sub_nonneg_of_le (inv_le_one_of_one_le₀ <| one_le_m_coe hPα)
  have hε : 0 ≤ 1 - ε / 10 :=
    sub_nonneg_of_le (div_le_one_of_le₀ (hε₁.trans <| by simp) <| by norm_num)
  have hε₀ : 0 < ε := by sz_positivity
  calc
    4 / 5 * ε = (1 - 1 / 10) * (1 - 9⁻¹) * ε := by norm_num
    _ ≤ (1 - ε / 10) * (1 - (↑m)⁻¹) * (#(G.nonuniformWitness ε U V) / #U) := by
        gcongr
        exacts [mod_cast (show 9 ≤ 100 by simp).trans (hundred_le_m hPα hPε hε₁),
          (le_div_iff₀' <| cast_pos.2 (P.nonempty_of_mem_parts hU).card_pos).2 <|
           G.le_card_nonuniformWitness hunif]
    _ = (1 - ε / 10) * #(G.nonuniformWitness ε U V) * ((1 - (↑m)⁻¹) / #U) := by
      rw [mul_assoc, mul_assoc, mul_div_left_comm]
    _ ≤ #((star hP G ε hU V).biUnion id) * ((1 - (↑m)⁻¹) / #U) := by
      gcongr
      exact one_sub_eps_mul_card_nonuniformWitness_le_card_star hV hUV hunif hPε hε₁
    _ ≤ #(star hP G ε hU V) * (m + 1) * ((1 - (↑m)⁻¹) / #U) := by
      gcongr
      exact card_biUnion_star_le_m_add_one_card_star_mul
    _ ≤ #(star hP G ε hU V) * (m + ↑1) * ((↑1 - (↑m)⁻¹) / (↑4 ^ #P.parts * m)) := by
      gcongr
      · sz_positivity
      · exact pow_mul_m_le_card_part hP hU
    _ ≤ #(star hP G ε hU V) / ↑4 ^ #P.parts := by
      rw [mul_assoc, mul_comm ((4 : ℝ) ^ #P.parts), ← div_div, ← mul_div_assoc, ← mul_comm_div]
      refine mul_le_of_le_one_right (by positivity) ?_
      have hm : (0 : ℝ) < m := by sz_positivity
      rw [mul_div_assoc', div_le_one hm, ← one_div, one_sub_div hm.ne', mul_div_assoc',
        div_le_iff₀ hm]
      linarith

/-!
### Final bounds

Those inequalities are the end result of all this hard work.
-/


/-- Lower bound on the edge densities between non-uniform parts of `SzemerediRegularity.star`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/GraphTheory/Chunk/Variant6621b453b766a2cefd99181bbec28533f9ce5b4c5bfaf178e13b9b848c7c28c8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Chunk/Variant6621b453b766a2cefd99181bbec28533f9ce5b4c5bfaf178e13b9b848c7c28c8.lean#L376).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a420b7644d456dba8515ea565bb5ca301a691cd8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
