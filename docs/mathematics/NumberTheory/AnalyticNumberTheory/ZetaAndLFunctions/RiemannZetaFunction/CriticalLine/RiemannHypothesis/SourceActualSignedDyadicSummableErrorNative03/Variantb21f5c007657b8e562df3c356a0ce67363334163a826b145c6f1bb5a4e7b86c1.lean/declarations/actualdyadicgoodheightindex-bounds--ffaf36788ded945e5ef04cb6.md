# actualDyadicGoodHeightIndex_bounds

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0d231703-8ff0-3d41-d53b-ef5b518c1f2f",
  "kind": "theorem",
  "lexical_name": "actualDyadicGoodHeightIndex_bounds",
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
  "slug": "actualdyadicgoodheightindex-bounds--ffaf36788ded945e5ef04cb6",
  "source": {
    "blob": "67940fdda16bf422c0e8d10e4c8fff5d9f84e9d9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 113,
    "line": 57,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualSignedDyadicSummableErrorNative03/Variantb21f5c007657b8e562df3c356a0ce67363334163a826b145c6f1bb5a4e7b86c1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ffaf36788ded945e5ef04cb6588774cd328d20e15992f7de2d5bfe991858ac76",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualSignedDyadicSummableErrorNative03/Variantb21f5c007657b8e562df3c356a0ce67363334163a826b145c6f1bb5a4e7b86c1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0d231703-8ff0-3d41-d53b-ef5b518c1f2f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 57–113.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualDyadicGoodHeightIndex_bounds (A c : ℝ) (hA : 1 ≤ A)
    (hc : 1 < c) (hc2 : c ≤ 3 / 2) (k : ℕ) :
    7 ≤ actualDyadicGoodHeightIndex A c k ∧
    (2 : ℝ) ^ k * actualBumpMovingHeight A c ≤ actualDyadicGoodHeightIndex A c k ∧
    Real.log ((actualDyadicGoodHeightIndex A c k : ℝ) + 3) ≤
      A * (Real.log 11 + Real.log 2 + 2 / 5) * (2 : ℝ) ^ k := by
  have hi := actualGoodHeightIndex_bounds A c
  have h7 : ∀ k, 7 ≤ actualDyadicGoodHeightIndex A c k := by
    intro k
    induction k with
    | zero => exact hi.1
    | succ k hk => simp only [actualDyadicGoodHeightIndex]; omega
  have hp1 : (1 : ℝ) ≤ (2 : ℝ) ^ k := one_le_pow₀ (show (1 : ℝ) ≤ 2 by norm_num)
  have hf := index_real_formula A c k
  have hbase : actualBumpMovingHeight A c ≤ (actualGoodHeightIndex A c : ℝ) :=
    (le_max_right _ _).trans hi.2.1
  have hrad : (2 : ℝ) ^ k * actualBumpMovingHeight A c ≤
      (actualDyadicGoodHeightIndex A c k : ℝ) := by
    have hh := mul_le_mul_of_nonneg_left hbase (by positivity : 0 ≤ (2 : ℝ) ^ k)
    nlinarith
  refine ⟨h7 k, hrad, ?_⟩
  let v : ℝ := (2 * c - 1) * A / 5
  have hκ : 0 < 2 * c - 1 := by linarith
  have hv : 0 ≤ v := by dsimp [v]; positivity
  have hvA : v ≤ (2 / 5) * A := by dsimp [v]; nlinarith
  have hT1 : 1 ≤ actualBumpMovingHeight A c := actualBumpMovingHeight_ge_one A c hA hc
  have hm : max 7 (actualBumpMovingHeight A c) ≤ 7 * actualBumpMovingHeight A c :=
    max_le (by linarith) (by linarith)
  have hb : (actualGoodHeightIndex A c : ℝ) + 3 ≤ 11 * actualBumpMovingHeight A c := by
    linarith [hi.2.2]
  have hj : (actualDyadicGoodHeightIndex A c k : ℝ) + 3 ≤
      (2 : ℝ) ^ k * (11 * actualBumpMovingHeight A c) := by
    have hh := mul_le_mul_of_nonneg_left hb (by positivity : 0 ≤ (2 : ℝ) ^ k)
    nlinarith
  have hl := Real.log_le_log (by positivity : 0 <
    (actualDyadicGoodHeightIndex A c k : ℝ) + 3) hj
  have he : Real.log ((2 : ℝ) ^ k * (11 * actualBumpMovingHeight A c)) =
      (k : ℝ) * Real.log 2 + Real.log 11 + v := by
    rw [Real.log_mul (by positivity) (by positivity), Real.log_pow,
      Real.log_mul (by norm_num) (by unfold actualBumpMovingHeight; positivity)]
    simp only [actualBumpMovingHeight, Real.log_exp]
    dsimp [v]
    ring
  rw [he] at hl
  have hlog2 : 0 ≤ Real.log 2 := Real.log_nonneg (by norm_num)
  have hlog11 : 0 ≤ Real.log 11 := Real.log_nonneg (by norm_num)
  have hk := nat_succ_le_two_pow k
  calc
    _ ≤ (k : ℝ) * Real.log 2 + Real.log 11 + v := hl
    _ ≤ A * (Real.log 11 + Real.log 2 + 2 / 5) * ((k : ℝ) + 1) := by
      have hh1 := mul_le_mul_of_nonneg_right hA hlog11
      have hh2 := mul_le_mul_of_nonneg_right hA hlog2
      have hh3 := mul_nonneg (Nat.cast_nonneg k)
        (show 0 ≤ A * (Real.log 11 + 2 / 5) by positivity)
      nlinarith
    _ ≤ _ := mul_le_mul_of_nonneg_left hk (by positivity)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualSignedDyadicSummableErrorNative03/Variantb21f5c007657b8e562df3c356a0ce67363334163a826b145c6f1bb5a4e7b86c1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualSignedDyadicSummableErrorNative03/Variantb21f5c007657b8e562df3c356a0ce67363334163a826b145c6f1bb5a4e7b86c1.lean#L57).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `67940fdda16bf422c0e8d10e4c8fff5d9f84e9d9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
