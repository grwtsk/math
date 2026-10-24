# region_weight_bounds

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:302c9273-75e0-64f0-bf4b-bfc4fb49bc0f",
  "kind": "lemma",
  "lexical_name": "region_weight_bounds",
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
  "slug": "region-weight-bounds--19b51eb92ce2d917a89258c9",
  "source": {
    "blob": "25b29233df2adc8c915dabbce81ca8ccf6f08d96",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 175,
    "line": 131,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripUniformFiniteC1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:19b51eb92ce2d917a89258c9946e7a9b7fa7cb4279199a73fed3a2af9f524de9",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/CriticalStripUniformFiniteC1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:302c9273-75e0-64f0-bf4b-bfc4fb49bc0f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 131–175.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma region_weight_bounds {C : Config} {s : ℂ} (hc : C.Guard) (hn : ‖s‖ ≤ (C.size : ℝ)) :
    ‖weightC C.cutoff s‖ ≤ (C.weightBound : ℝ) ∧
    ‖weightSlope C.cutoff s‖ ≤ (C.weightSlopeBound : ℝ) := by
  have hS : (0 : ℝ) ≤ (C.size : ℝ) := by exact_mod_cast hc.2.1
  have hN : (0 : ℝ) < C.cutoff := by exact_mod_cast (lt_of_lt_of_le Nat.zero_lt_one hc.1)
  have hs1 : ‖s-1‖ ≤ (C.size : ℝ)+1 := by
    exact (norm_sub_le s 1).trans (by simpa using add_le_add_right hn 1)
  have hf (j : ℕ) (hj : j < 7) : ‖factor j s‖ ≤ (C.size : ℝ)+5 := by
    have hjn : ‖(j : ℂ)-1‖ ≤ (5 : ℝ) := by interval_cases j <;> norm_num
    simpa only [factor,add_sub_assoc] using (norm_add_le s ((j : ℂ)-1)).trans (add_le_add hn hjn)
  have hp4 := product_norm_le 4 (s := s) (by linarith : (0 : ℝ) ≤ (C.size : ℝ)+5)
    (fun j hj => hf j (by omega))
  have hp6 := product_norm_le 6 (s := s) (by linarith : (0 : ℝ) ≤ (C.size : ℝ)+5)
    (fun j hj => hf j (by omega))
  have hd4 := productSlope_norm_le 4 (s := s) (by linarith : (0 : ℝ) ≤ (C.size : ℝ)+5)
    (fun j hj => hf j (by omega))
  have hd6 := productSlope_norm_le 6 (s := s) (by linarith : (0 : ℝ) ≤ (C.size : ℝ)+5)
    (fun j hj => hf j (by omega))
  norm_num only [Nat.reduceSub,Nat.cast_ofNat] at hd4 hd6
  have ht : ‖2*s-1‖ ≤ 2*(C.size : ℝ)+1 := by
    have h := norm_sub_le (2*s) 1
    rw [norm_mul] at h
    norm_num at h
    linarith
  constructor
  · calc
      _ ≤ (C.cutoff : ℝ)+‖s-1‖/2+‖s‖*‖s-1‖/(12*C.cutoff)+
          ‖product 4 s‖/(720*(C.cutoff : ℝ)^3)+‖product 6 s‖/(30240*(C.cutoff : ℝ)^5) := by
        rw [weightC,← product_four,← product_six]
        bound
      _ ≤ (C.weightBound : ℝ) := by
        simp only [weightBound,Rat.cast_add,Rat.cast_div,Rat.cast_mul,Rat.cast_pow,
          Rat.cast_natCast,Rat.cast_ofNat,Rat.cast_one]
        gcongr <;> first | assumption | positivity
  · calc
      _ ≤ 1/2+‖2*s-1‖/(12*C.cutoff)+
          ‖productSlope 4 s‖/(720*(C.cutoff : ℝ)^3)+‖productSlope 6 s‖/(30240*(C.cutoff : ℝ)^5) := by
        unfold weightSlope
        bound
      _ ≤ (C.weightSlopeBound : ℝ) := by
        simp only [weightSlopeBound,Rat.cast_add,Rat.cast_div,Rat.cast_mul,Rat.cast_pow,
          Rat.cast_natCast,Rat.cast_ofNat,Rat.cast_one]
        gcongr <;> first | assumption | positivity

/-- Separate uniform value and derivative estimates for the unchanged finite source. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/CriticalStripUniformFiniteC1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripUniformFiniteC1.lean#L131).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `25b29233df2adc8c915dabbce81ca8ccf6f08d96` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
