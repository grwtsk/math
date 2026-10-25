# mem_atanhIntervalRefined

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:62e13b6d-4046-3e5d-a1e2-46012bae6b08",
  "kind": "theorem",
  "lexical_name": "mem_atanhIntervalRefined",
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
  "slug": "mem-atanhintervalrefined--9c9a9eb5b88ef3c909d63d05",
  "source": {
    "blob": "6c83dfd87eac9a54170b6c152970ec7ba800b89d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 188,
    "line": 145,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IntervalEvalRefined/Variant396565c168e876d8712e59522f02f79b2bae3ad798a1d9601a88a6dee609157f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9c9a9eb5b88ef3c909d63d05c3da72610d2d70a7e4d26be59b86c27bfabc5cbb",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IntervalEvalRefined/Variant396565c168e876d8712e59522f02f79b2bae3ad798a1d9601a88a6dee609157f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:62e13b6d-4046-3e5d-a1e2-46012bae6b08`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 145–188.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mem_atanhIntervalRefined {x : ℝ} {I : IntervalRat}
    (hx : x ∈ I) (hlo : -1 < I.lo) (hhi : I.hi < 1) :
    Real.atanh x ∈ atanhIntervalRefined I := by
  unfold atanhIntervalRefined
  simp only [hlo, hhi, and_self, ↓reduceDIte]
  unfold atanhIntervalRefined'
  by_cases hw : I.width ≤ 1 ∧ max (|I.lo|) (|I.hi|) ≤ 99/100
  · -- Use Taylor model approach
    simp only [hw]
    have ⟨_, hradius⟩ := hw
    -- Prove |x| < 1 from interval bounds
    have hx_lo : (I.lo : ℝ) ≤ x := hx.1
    have hx_hi : x ≤ I.hi := hx.2
    have hlo_real : (-1 : ℝ) < I.lo := by exact_mod_cast hlo
    have hhi_real : (I.hi : ℝ) < 1 := by exact_mod_cast hhi
    have hx_abs : |x| < 1 := by
      rw [abs_lt]
      constructor <;> linarith
    -- Use tmAtanh_correct
    have hdom : (TaylorModel.tmAtanh I 5).domain = I := rfl
    exact taylorModel_correct (TaylorModel.tmAtanh I 5) Real.atanh
      (fun z hz => TaylorModel.tmAtanh_correct I 5 hradius z (hdom ▸ hz) (by
        have hz' : z ∈ I := hdom ▸ hz
        rw [abs_lt]
        have hlo' : (-1 : ℝ) < I.lo := by exact_mod_cast hlo
        have hhi' : (I.hi : ℝ) < 1 := by exact_mod_cast hhi
        constructor <;> linarith [hz'.1, hz'.2])) x hx
  · -- Fallback to computed bound via monotonicity
    simp only [hw, ↓reduceIte]
    let Iball : IntervalRat.IntervalRatInUnitBall := ⟨I.lo, I.hi, I.le, hlo, hhi⟩
    have hx_ball : x ∈ Iball := by
      simp only [Membership.mem]
      exact hx
    exact IntervalRat.mem_atanhIntervalComputed hx_ball

/-! ### Refined interval evaluation

Interval evaluation that uses Taylor-model-based bounds for transcendental
functions when the interval is reasonably small.
-/

/-- Interval evaluation using refined bounds for transcendentals.
    Uses Taylor-model-based bounds for exp, sin, cos on small intervals.
    For partial functions (inv, log), returns default. Use evalInterval? instead. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IntervalEvalRefined/Variant396565c168e876d8712e59522f02f79b2bae3ad798a1d9601a88a6dee609157f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IntervalEvalRefined/Variant396565c168e876d8712e59522f02f79b2bae3ad798a1d9601a88a6dee609157f.lean#L145).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6c83dfd87eac9a54170b6c152970ec7ba800b89d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
