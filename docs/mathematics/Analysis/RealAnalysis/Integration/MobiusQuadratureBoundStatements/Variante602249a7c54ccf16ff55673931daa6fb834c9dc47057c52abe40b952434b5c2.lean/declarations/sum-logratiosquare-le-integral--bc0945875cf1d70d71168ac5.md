# sum_logRatioSquare_le_integral

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "10731cfece213c0d8cb948acc1ac690c7f23adbe",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 216,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e6/e602249a7c54ccf16ff55673931daa6fb834c9dc47057c52abe40b952434b5c2.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a6c95ef7-5570-2a2f-6f1e-a0be6f4593eb",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8ed80394-a05a-fe27-fcf1-9f556a6ba064",
  "kind": "theorem",
  "lexical_name": "sum_logRatioSquare_le_integral",
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
  "slug": "sum-logratiosquare-le-integral--bc0945875cf1d70d71168ac5",
  "source": {
    "blob": "10731cfece213c0d8cb948acc1ac690c7f23adbe",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 253,
    "line": 216,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/MobiusQuadratureBoundStatements/Variante602249a7c54ccf16ff55673931daa6fb834c9dc47057c52abe40b952434b5c2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bc0945875cf1d70d71168ac5b8456871a74b22e2b0260cd2437d9a696f7b3296",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/MobiusQuadratureBoundStatements/Variante602249a7c54ccf16ff55673931daa6fb834c9dc47057c52abe40b952434b5c2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8ed80394-a05a-fe27-fcf1-9f556a6ba064`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 216–253.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sum_logRatioSquare_le_integral (x : ℝ) (hx : 1 ≤ x) :
    (∑ d ∈ Finset.Icc 1 ⌊x⌋₊, logRatioSquare x (d : ℝ)) ≤
      ∫ t in 0..x, logRatioSquare x t := by
  have hx0 : 0 < x := by linarith
  let N := ⌊x⌋₊
  have hN : (N : ℝ) ≤ x := Nat.floor_le hx0.le
  have hi (k : ℕ) (hk : k < N) :
      IntervalIntegrable (logRatioSquare x) volume (k : ℝ) ((k + 1 : ℕ) : ℝ) := by
    apply (intervalIntegrable_iff_integrableOn_Ioc_of_le (by norm_num)).mpr
    apply (logRatioSquare_integrableOn x hx0).mono_set
    intro t ht
    refine ⟨lt_of_le_of_lt (Nat.cast_nonneg k) ht.1, ?_⟩
    exact ht.2.trans ((by exact_mod_cast Nat.succ_le_of_lt hk : ((k + 1 : ℕ) : ℝ) ≤ N).trans hN)
  have hblock (k : ℕ) (hk : k < N) :
      logRatioSquare x ((k + 1 : ℕ) : ℝ) ≤
        ∫ t in (k : ℝ)..((k + 1 : ℕ) : ℝ), logRatioSquare x t := by
    have hb : ((k + 1 : ℕ) : ℝ) ≤ x :=
      (by exact_mod_cast Nat.succ_le_of_lt hk : ((k + 1 : ℕ) : ℝ) ≤ N).trans hN
    have h := intervalIntegral.integral_mono_on_of_le_Ioo
      (f := fun _t : ℝ => logRatioSquare x ((k + 1 : ℕ) : ℝ))
      (by norm_num : (k : ℝ) ≤ ((k + 1 : ℕ) : ℝ)) intervalIntegrable_const (hi k hk)
      (fun t ht => logRatioSquare_antitone x hx0
        ⟨lt_of_le_of_lt (Nat.cast_nonneg k) ht.1, ht.2.le.trans hb⟩
        ⟨by positivity, hb⟩ ht.2.le)
    simpa only [intervalIntegral.integral_const, Nat.cast_add, Nat.cast_one,
      add_sub_cancel_left, smul_eq_mul, one_mul] using h
  calc
    _ = ∑ k ∈ Finset.range N, logRatioSquare x ((k + 1 : ℕ) : ℝ) := by
      rw [← Finset.Ico_add_one_right_eq_Icc, Finset.sum_Ico_eq_sum_range]
      simp only [Nat.add_sub_cancel, Nat.add_comm 1, N]
    _ ≤ ∑ k ∈ Finset.range N, ∫ t in (k : ℝ)..((k + 1 : ℕ) : ℝ), logRatioSquare x t :=
      Finset.sum_le_sum (fun k hk => hblock k (Finset.mem_range.mp hk))
    _ = ∫ t in 0..(N : ℝ), logRatioSquare x t := by
      simpa only [Nat.cast_zero] using intervalIntegral.sum_integral_adjacent_intervals hi
    _ ≤ _ := intervalIntegral.integral_mono_interval le_rfl (Nat.cast_nonneg N) hN
      (Filter.Eventually.of_forall (logRatioSquare_nonneg x)) (logRatioSquare_intervalIntegrable x hx0)

/-- The exact floor-truncated logarithmic majorant has a linear budget. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/MobiusQuadratureBoundStatements/Variante602249a7c54ccf16ff55673931daa6fb834c9dc47057c52abe40b952434b5c2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/MobiusQuadratureBoundStatements/Variante602249a7c54ccf16ff55673931daa6fb834c9dc47057c52abe40b952434b5c2.lean#L216).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `10731cfece213c0d8cb948acc1ac690c7f23adbe` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
