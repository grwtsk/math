# energy_increment

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:196d97bf-8b0f-31a4-b77d-76a197a341c3",
  "kind": "theorem",
  "lexical_name": "energy_increment",
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
  "slug": "energy-increment--016c75aa121209e1870612c3",
  "source": {
    "blob": "d4379be155c7ef01f6963ad728fd7b65052b460e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 186,
    "line": 141,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Increment/Variant6dbcd7e6d312cc02d9d88c2acb3c30f79ae5e584cdcdf07423f0364bdfcedf59.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:016c75aa121209e1870612c3c59e8b0cf4b0a842c44465ec3c18365a8e3bd54b",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/GraphTheory/Increment/Variant6dbcd7e6d312cc02d9d88c2acb3c30f79ae5e584cdcdf07423f0364bdfcedf59.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:196d97bf-8b0f-31a4-b77d-76a197a341c3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 141–186.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem energy_increment (hP : P.IsEquipartition) (hP₇ : 7 ≤ #P.parts)
    (hPε : 100 ≤ 4 ^ #P.parts * ε ^ 5) (hPα : #P.parts * 16 ^ #P.parts ≤ card α)
    (hPG : ¬P.IsUniform G ε) (hε₀ : 0 ≤ ε) (hε₁ : ε ≤ 1) :
    ↑(P.energy G) + ε ^ 5 / 4 ≤ (increment hP G ε).energy G := by
  calc
    _ = (∑ x ∈ P.parts.offDiag, (G.edgeDensity x.1 x.2 : ℝ) ^ 2 +
          #P.parts ^ 2 * (ε ^ 5 / 4) : ℝ) / #P.parts ^ 2 := by
        rw [coe_energy, add_div, mul_div_cancel_left₀]; positivity
    _ ≤ (∑ x ∈ P.parts.offDiag.attach, (∑ i ∈ distinctPairs hP G ε x,
          G.edgeDensity i.1 i.2 ^ 2 : ℝ) / 16 ^ #P.parts) / #P.parts ^ 2 := ?_
    _ = (∑ x ∈ P.parts.offDiag.attach, ∑ i ∈ distinctPairs hP G ε x,
          G.edgeDensity i.1 i.2 ^ 2 : ℝ) / #(increment hP G ε).parts ^ 2 := by
        rw [card_increment hPα hPG, coe_stepBound, mul_pow, pow_right_comm,
          div_mul_eq_div_div_swap, ← sum_div]; norm_num
    _ ≤ _ := by
        rw [coe_energy]
        gcongr
        rw [← sum_biUnion pairwiseDisjoint_distinctPairs]
        exact sum_le_sum_of_subset_of_nonneg distinctPairs_increment fun i _ _ ↦ sq_nonneg _
  gcongr
  rw [Finpartition.IsUniform, not_le, mul_tsub, mul_one, ← offDiag_card] at hPG
  calc
    _ ≤ ∑ x ∈ P.parts.offDiag, (edgeDensity G x.1 x.2 : ℝ) ^ 2 +
        (#(nonUniforms P G ε) * (ε ^ 4 / 3) - #P.parts.offDiag * (ε ^ 5 / 25)) :=
        add_le_add_left ?_ _
    _ = ∑ x ∈ P.parts.offDiag, ((G.edgeDensity x.1 x.2 : ℝ) ^ 2 +
        ((if G.IsUniform ε x.1 x.2 then (0 : ℝ) else ε ^ 4 / 3) - ε ^ 5 / 25) : ℝ) := by
        rw [sum_add_distrib, sum_sub_distrib, sum_const, nsmul_eq_mul, sum_ite, sum_const_zero,
          zero_add, sum_const, nsmul_eq_mul, ← Finpartition.nonUniforms, ← add_sub_assoc,
          add_sub_right_comm]
    _ = _ := (sum_attach ..).symm
    _ ≤ _ := sum_le_sum fun i _ ↦ le_sum_distinctPairs_edgeDensity_sq i hε₁ hPα hPε
  calc
    _ = (6/7 * #P.parts ^ 2) * ε ^ 5 * (7 / 24) := by ring
    _ ≤ #P.parts.offDiag * ε ^ 5 * (22 / 75) := by
        gcongr ?_ * _ * ?_
        · rw [← mul_div_right_comm, div_le_iff₀ (by norm_num), offDiag_card]
          norm_cast
          rw [tsub_mul]
          refine le_tsub_of_add_le_left ?_
          nlinarith
        · norm_num
    _ = (#P.parts.offDiag * ε * (ε ^ 4 / 3) - #P.parts.offDiag * (ε ^ 5 / 25)) := by ring
    _ ≤ (#(nonUniforms P G ε) * (ε ^ 4 / 3) - #P.parts.offDiag * (ε ^ 5 / 25)) := by gcongr

end SzemerediRegularity
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/GraphTheory/Increment/Variant6dbcd7e6d312cc02d9d88c2acb3c30f79ae5e584cdcdf07423f0364bdfcedf59.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Increment/Variant6dbcd7e6d312cc02d9d88c2acb3c30f79ae5e584cdcdf07423f0364bdfcedf59.lean#L141).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d4379be155c7ef01f6963ad728fd7b65052b460e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
