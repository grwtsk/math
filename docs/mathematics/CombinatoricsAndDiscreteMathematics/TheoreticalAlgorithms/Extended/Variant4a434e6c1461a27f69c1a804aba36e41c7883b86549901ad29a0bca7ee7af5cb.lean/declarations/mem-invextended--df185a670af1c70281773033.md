# mem_invExtended

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f96d0904b8789741ec7593dd0fed34aec5dc2b77",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 265,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/4a/4a434e6c1461a27f69c1a804aba36e41c7883b86549901ad29a0bca7ee7af5cb.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:83fb2a69-33e7-ed99-c4cd-5dba60d53859",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a66acb3b-11c7-bc1e-f29c-bed789fdd6a5",
  "kind": "theorem",
  "lexical_name": "mem_invExtended",
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
  "slug": "mem-invextended--df185a670af1c70281773033",
  "source": {
    "blob": "f96d0904b8789741ec7593dd0fed34aec5dc2b77",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 374,
    "line": 265,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Extended/Variant4a434e6c1461a27f69c1a804aba36e41c7883b86549901ad29a0bca7ee7af5cb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:df185a670af1c702817730335ee30474bd3a198de99be2771ba735af27a371e8",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Extended/Variant4a434e6c1461a27f69c1a804aba36e41c7883b86549901ad29a0bca7ee7af5cb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a66acb3b-11c7-bc1e-f29c-bed789fdd6a5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 265–374.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mem_invExtended {x : ℝ} {I : IntervalRat} (hx : x ∈ I) (hxne : x ≠ 0)
    (large_bound : ℚ := defaultLargeBound) (hlb : |x⁻¹| ≤ large_bound) :
    x⁻¹ ∈ invExtended I large_bound := by
  have hxI : (I.lo : ℝ) ≤ x ∧ x ≤ (I.hi : ℝ) := (IntervalRat.mem_def _ _).1 hx
  have hbound : (-(large_bound : ℝ)) ≤ x⁻¹ ∧ x⁻¹ ≤ (large_bound : ℝ) := abs_le.mp hlb
  by_cases hpos : 0 < I.lo
  · have hxpos : 0 < x := by
      have hlo_pos : (0 : ℝ) < I.lo := by exact_mod_cast hpos
      exact lt_of_lt_of_le hlo_pos hxI.1
    have hhi_pos : (0 : ℝ) < I.hi := by
      have hle : (I.lo : ℝ) ≤ I.hi := by exact_mod_cast I.le
      have hlo_pos : (0 : ℝ) < I.lo := by exact_mod_cast hpos
      linarith
    simp [invExtended, hpos, ExtendedInterval.mem_singleton, IntervalRat.mem_def,
      Rat.cast_inv, one_div]
    constructor
    · exact (inv_le_inv₀ hhi_pos hxpos).mpr hxI.2
    · exact (inv_le_inv₀ hxpos (by exact_mod_cast hpos)).mpr hxI.1
  · by_cases hneg : I.hi < 0
    · have hxneg : x < 0 := lt_of_le_of_lt hxI.2 (by exact_mod_cast hneg)
      have hhi_neg : (I.hi : ℝ) < 0 := by exact_mod_cast hneg
      have hle : (I.lo : ℝ) ≤ I.hi := by exact_mod_cast I.le
      have hlo_neg : (I.lo : ℝ) < 0 := lt_of_le_of_lt hle hhi_neg
      simp [invExtended, hpos, hneg, ExtendedInterval.mem_singleton, IntervalRat.mem_def,
        Rat.cast_inv, one_div]
      constructor
      · exact (inv_le_inv_of_neg (by exact_mod_cast hneg) hxneg).mpr hxI.2
      · exact (inv_le_inv_of_neg hxneg hlo_neg).mpr hxI.1
    · by_cases hstraddle : I.lo < 0 ∧ 0 < I.hi
      · by_cases hxneg : x < 0
        · have hupper_r : x⁻¹ ≤ (I.lo : ℝ)⁻¹ :=
            (inv_le_inv_of_neg hxneg (by exact_mod_cast hstraddle.1)).mpr hxI.1
          have hupper : x⁻¹ ≤ ((1 / I.lo : ℚ) : ℝ) := by
            simpa [Rat.cast_inv, Rat.cast_div, Rat.cast_one, one_div] using hupper_r
          have hlower : ((-large_bound : ℚ) : ℝ) ≤ x⁻¹ := by
            simpa using hbound.1
          have hmem : x⁻¹ ∈ mkSafeInterval (-large_bound) (1 / I.lo) :=
            mem_mkSafeInterval_of_le_le hlower hupper
          simp [invExtended, hpos, hneg, hstraddle, ExtendedInterval.mem_def]
          left
          simpa [IntervalRat.mem_def] using hmem
        · have hxpos : 0 < x := by
            have hxnonneg : 0 ≤ x := le_of_not_gt hxneg
            have hxne0 : (0 : ℝ) ≠ x := by simpa [ne_comm] using hxne
            exact lt_of_le_of_ne hxnonneg hxne0
          have hlower_r : (I.hi : ℝ)⁻¹ ≤ x⁻¹ :=
            (inv_le_inv₀ (by exact_mod_cast hstraddle.2) hxpos).mpr hxI.2
          have hlower : ((1 / I.hi : ℚ) : ℝ) ≤ x⁻¹ := by
            simpa [Rat.cast_inv, Rat.cast_div, Rat.cast_one, one_div] using hlower_r
          have hupper : x⁻¹ ≤ (large_bound : ℝ) := hbound.2
          have hmem : x⁻¹ ∈ mkSafeInterval (1 / I.hi) large_bound :=
            mem_mkSafeInterval_of_le_le hlower hupper
          simp [invExtended, hpos, hneg, hstraddle, ExtendedInterval.mem_def]
          right
          simpa [IntervalRat.mem_def] using hmem
      · by_cases hzero_lo : I.lo = 0 ∧ 0 < I.hi
        · have hxpos : 0 < x := by
            have hxnonneg : 0 ≤ x := by simpa [hzero_lo.1] using hxI.1
            have hxne0 : (0 : ℝ) ≠ x := by simpa [ne_comm] using hxne
            exact lt_of_le_of_ne hxnonneg hxne0
          have hlower_r : (I.hi : ℝ)⁻¹ ≤ x⁻¹ :=
            (inv_le_inv₀ (by exact_mod_cast hzero_lo.2) hxpos).mpr hxI.2
          have hlower : ((1 / I.hi : ℚ) : ℝ) ≤ x⁻¹ := by
            simpa [Rat.cast_inv, Rat.cast_div, Rat.cast_one, one_div] using hlower_r
          have hupper : x⁻¹ ≤ (large_bound : ℝ) := hbound.2
          have hmem : x⁻¹ ∈ mkSafeInterval (1 / I.hi) large_bound :=
            mem_mkSafeInterval_of_le_le hlower hupper
          simpa [invExtended, hpos, hneg, hstraddle, hzero_lo, ExtendedInterval.mem_singleton] using hmem
        · by_cases hzero_hi : I.lo < 0 ∧ I.hi = 0
          · have hxneg : x < 0 := by
              have hxnonpos : x ≤ 0 := by simpa [hzero_hi.2] using hxI.2
              exact lt_of_le_of_ne hxnonpos hxne
            have hupper_r : x⁻¹ ≤ (I.lo : ℝ)⁻¹ :=
              (inv_le_inv_of_neg hxneg (by exact_mod_cast hzero_hi.1)).mpr hxI.1
            have hupper : x⁻¹ ≤ ((1 / I.lo : ℚ) : ℝ) := by
              simpa [Rat.cast_inv, Rat.cast_div, Rat.cast_one, one_div] using hupper_r
            have hlower : ((-large_bound : ℚ) : ℝ) ≤ x⁻¹ := by
              simpa using hbound.1
            have hmem : x⁻¹ ∈ mkSafeInterval (-large_bound) (1 / I.lo) :=
              mem_mkSafeInterval_of_le_le hlower hupper
            simpa [invExtended, hpos, hneg, hstraddle, hzero_lo, hzero_hi,
              ExtendedInterval.mem_singleton] using hmem
          · exfalso
            -- Remaining case implies I.lo = 0 and I.hi = 0, contradicting x ≠ 0.
            have hlo_nonpos : I.lo ≤ 0 := le_of_not_gt hpos
            have hhi_nonneg : 0 ≤ I.hi := le_of_not_gt hneg
            by_cases hlo_eq : I.lo = 0
            · have hhi_nonpos : I.hi ≤ 0 := by
                have : ¬(0 < I.hi) := by
                  intro hhi_pos
                  exact hzero_lo ⟨hlo_eq, hhi_pos⟩
                exact le_of_not_gt this
              have hhi_eq : I.hi = 0 := le_antisymm hhi_nonpos hhi_nonneg
              have hxzero : x = 0 := by
                have hxlo : (0 : ℝ) ≤ x := by simpa [hlo_eq] using hxI.1
                have hxhi : x ≤ (0 : ℝ) := by simpa [hhi_eq] using hxI.2
                exact le_antisymm hxhi hxlo
              exact hxne hxzero
            · have hlo_neg : I.lo < 0 := lt_of_le_of_ne hlo_nonpos hlo_eq
              have hhi_nonpos : I.hi ≤ 0 := by
                have : ¬(0 < I.hi) := by
                  intro hhi_pos
                  exact hstraddle ⟨hlo_neg, hhi_pos⟩
                exact le_of_not_gt this
              have hhi_eq : I.hi = 0 := le_antisymm hhi_nonpos hhi_nonneg
              exact hzero_hi ⟨hlo_neg, hhi_eq⟩

/-! ## Lifting Operations to Extended Intervals -/

/-- Lift a unary operation to extended intervals -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Extended/Variant4a434e6c1461a27f69c1a804aba36e41c7883b86549901ad29a0bca7ee7af5cb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Extended/Variant4a434e6c1461a27f69c1a804aba36e41c7883b86549901ad29a0bca7ee7af5cb.lean#L265).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f96d0904b8789741ec7593dd0fed34aec5dc2b77` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
