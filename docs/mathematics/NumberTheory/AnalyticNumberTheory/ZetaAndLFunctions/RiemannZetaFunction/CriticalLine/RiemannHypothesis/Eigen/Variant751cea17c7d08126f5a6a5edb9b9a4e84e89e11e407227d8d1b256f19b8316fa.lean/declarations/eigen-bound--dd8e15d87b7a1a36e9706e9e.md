# eigen_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a9c00efa5b715543b0be5ac0425c952600f8196a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 46,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/75/751cea17c7d08126f5a6a5edb9b9a4e84e89e11e407227d8d1b256f19b8316fa.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:82a68df0-3d1c-9b3b-a59a-d9767afc54d1",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:64873362-6364-dbe8-5922-b5ea0dc4d143",
  "kind": "theorem",
  "lexical_name": "eigen_bound",
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
  "slug": "eigen-bound--dd8e15d87b7a1a36e9706e9e",
  "source": {
    "blob": "a9c00efa5b715543b0be5ac0425c952600f8196a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 141,
    "line": 46,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Eigen/Variant751cea17c7d08126f5a6a5edb9b9a4e84e89e11e407227d8d1b256f19b8316fa.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dd8e15d87b7a1a36e9706e9e57e14f36cb21be1e0377a8c77bf85ff2dc379b6d",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Eigen/Variant751cea17c7d08126f5a6a5edb9b9a4e84e89e11e407227d8d1b256f19b8316fa.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:64873362-6364-dbe8-5922-b5ea0dc4d143`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 46–141.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem eigen_bound (h : Adm freq δ) (u : ι → ℂ) (hu : ∑ n, ‖u n‖ ^ 2 = 1) (μ : ℝ)
    (heig : ∀ m, ∑ n ∈ Finset.univ.erase m,
        ((Real.sqrt (δ m) * Real.sqrt (δ n) / (freq m - freq n) : ℝ) : ℂ) * u n
          = (μ : ℂ) * Complex.I * u m) :
    |μ| ≤ 13 := by
  classical
  set c : ι → ℝ := fun r => Real.sqrt (δ r) with hc
  have hcpos : ∀ r, 0 < c r := fun r => Real.sqrt_pos.2 (h.pos r)
  have hid := eigen_identity' h.inj c hcpos u μ heig
  have hsumid : μ ^ 2
      = (∑ m, ∑ n ∈ Finset.univ.erase m, (c m * c n) ^ 2 * ‖u n‖ ^ 2 / (freq m - freq n) ^ 2)
        + 2 * ∑ m, ∑ n ∈ Finset.univ.erase m,
            c m ^ 3 * c n * (u m * (starRingEnd ℂ) (u n)).re / (freq m - freq n) ^ 2 := by
    calc μ ^ 2 = μ ^ 2 * ∑ m, ‖u m‖ ^ 2 := by rw [hu, mul_one]
      _ = ∑ m, μ ^ 2 * ‖u m‖ ^ 2 := Finset.mul_sum _ _ _
      _ = ∑ m, ((∑ n ∈ Finset.univ.erase m, (c m * c n) ^ 2 * ‖u n‖ ^ 2 / (freq m - freq n) ^ 2)
            + 2 * ∑ n ∈ Finset.univ.erase m,
                c m ^ 3 * c n * (u m * (starRingEnd ℂ) (u n)).re / (freq m - freq n) ^ 2) :=
          Finset.sum_congr rfl fun m _ => hid m
      _ = _ := by
          rw [Finset.sum_add_distrib, ← Finset.mul_sum]
  have hS : (∑ m, ∑ n ∈ Finset.univ.erase m,
      (c m * c n) ^ 2 * ‖u n‖ ^ 2 / (freq m - freq n) ^ 2) ≤ 9 := by
    have e1 : ∀ m n, (c m * c n) ^ 2 * ‖u n‖ ^ 2 / (freq m - freq n) ^ 2
        = (δ n * ‖u n‖ ^ 2) * (δ m / (freq n - freq m) ^ 2) := by
      intro m n
      rw [hc]
      simp only [mul_pow, Real.sq_sqrt (h.pos m).le, Real.sq_sqrt (h.pos n).le,
        show (freq m - freq n) ^ 2 = (freq n - freq m) ^ 2 by ring]
      ring
    calc ∑ m, ∑ n ∈ Finset.univ.erase m, (c m * c n) ^ 2 * ‖u n‖ ^ 2 / (freq m - freq n) ^ 2
        = ∑ m, ∑ n ∈ Finset.univ.erase m, (δ n * ‖u n‖ ^ 2) * (δ m / (freq n - freq m) ^ 2) :=
          Finset.sum_congr rfl fun m _ => Finset.sum_congr rfl fun n _ => e1 m n
      _ = ∑ n, ∑ m ∈ Finset.univ.erase n, (δ n * ‖u n‖ ^ 2) * (δ m / (freq n - freq m) ^ 2) :=
          sum_erase_comm _
      _ = ∑ n, (δ n * ‖u n‖ ^ 2) * ∑ m ∈ Finset.univ.erase n, δ m / (freq n - freq m) ^ 2 := by
          refine Finset.sum_congr rfl fun n _ => ?_
          rw [Finset.mul_sum]
      _ ≤ ∑ n, (δ n * ‖u n‖ ^ 2) * (9 / δ n) := by
          refine Finset.sum_le_sum fun n _ => ?_
          refine mul_le_mul_of_nonneg_left (h.spacing_sq n) ?_
          have := (h.pos n).le
          positivity
      _ = ∑ n, 9 * ‖u n‖ ^ 2 := by
          refine Finset.sum_congr rfl fun n _ => ?_
          have hδn := (h.pos n).ne'
          field_simp
      _ = 9 := by rw [← Finset.mul_sum, hu, mul_one]
  have hT : |∑ m, ∑ n ∈ Finset.univ.erase m,
      c m ^ 3 * c n * (u m * (starRingEnd ℂ) (u n)).re / (freq m - freq n) ^ 2| ≤ 73 := by
    have hper : ∀ m n : ι, |c m ^ 3 * c n * (u m * (starRingEnd ℂ) (u n)).re
          / (freq m - freq n) ^ 2|
        ≤ δ m * Real.sqrt (δ m) * Real.sqrt (δ n) * ‖u m‖ * ‖u n‖ / (freq m - freq n) ^ 2 := by
      intro m n
      have hre : |(u m * (starRingEnd ℂ) (u n)).re| ≤ ‖u m‖ * ‖u n‖ := by
        refine (Complex.abs_re_le_norm _).trans ?_
        rw [norm_mul, RCLike.norm_conj]
      have hcube : c m ^ 3 = δ m * Real.sqrt (δ m) := by
        rw [hc]
        calc Real.sqrt (δ m) ^ 3 = Real.sqrt (δ m) ^ 2 * Real.sqrt (δ m) := by ring
          _ = δ m * Real.sqrt (δ m) := by rw [Real.sq_sqrt (h.pos m).le]
      rw [abs_div, abs_of_nonneg (sq_nonneg (freq m - freq n)), abs_mul, hcube]
      have hnn : (0:ℝ) ≤ δ m * Real.sqrt (δ m) * Real.sqrt (δ n) := by
        have := (h.pos m).le
        have := (h.pos n).le
        positivity
      have h1 : |δ m * Real.sqrt (δ m) * (c n)| = δ m * Real.sqrt (δ m) * Real.sqrt (δ n) := by
        rw [hc, abs_of_nonneg hnn]
      rw [h1]
      calc δ m * Real.sqrt (δ m) * Real.sqrt (δ n) * |(u m * (starRingEnd ℂ) (u n)).re|
            / (freq m - freq n) ^ 2
          ≤ δ m * Real.sqrt (δ m) * Real.sqrt (δ n) * (‖u m‖ * ‖u n‖)
              / (freq m - freq n) ^ 2 := by gcongr
        _ = δ m * Real.sqrt (δ m) * Real.sqrt (δ n) * ‖u m‖ * ‖u n‖
              / (freq m - freq n) ^ 2 := by ring
    calc |∑ m, ∑ n ∈ Finset.univ.erase m,
          c m ^ 3 * c n * (u m * (starRingEnd ℂ) (u n)).re / (freq m - freq n) ^ 2|
        ≤ ∑ m, |∑ n ∈ Finset.univ.erase m,
            c m ^ 3 * c n * (u m * (starRingEnd ℂ) (u n)).re / (freq m - freq n) ^ 2| :=
          Finset.abs_sum_le_sum_abs _ _
      _ ≤ ∑ m, ∑ n ∈ Finset.univ.erase m,
            |c m ^ 3 * c n * (u m * (starRingEnd ℂ) (u n)).re / (freq m - freq n) ^ 2| :=
          Finset.sum_le_sum fun m _ => Finset.abs_sum_le_sum_abs _ _
      _ ≤ ∑ m, ∑ n ∈ Finset.univ.erase m,
            δ m * Real.sqrt (δ m) * Real.sqrt (δ n) * ‖u m‖ * ‖u n‖ / (freq m - freq n) ^ 2 :=
          Finset.sum_le_sum fun m _ => Finset.sum_le_sum fun n _ => hper m n
      _ = Uform freq δ (fun r => ‖u r‖) := rfl
      _ ≤ 73 * ∑ n, ‖u n‖ ^ 2 := Uform_le h _ fun r => norm_nonneg _
      _ = 73 := by rw [hu, mul_one]
  have hmain : μ ^ 2 ≤ 155 := by
    have h2 := abs_le.1 hT
    linarith [hS, h2.1, h2.2]
  nlinarith [abs_nonneg μ, sq_abs μ]

end MV
end Zeta23
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Eigen/Variant751cea17c7d08126f5a6a5edb9b9a4e84e89e11e407227d8d1b256f19b8316fa.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Eigen/Variant751cea17c7d08126f5a6a5edb9b9a4e84e89e11e407227d8d1b256f19b8316fa.lean#L46).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a9c00efa5b715543b0be5ac0425c952600f8196a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
