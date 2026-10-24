# abs_sum_mul_le_of_monotone

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:62a17de7-4716-c401-8dc3-133b66d2d981",
  "kind": "theorem",
  "lexical_name": "abs_sum_mul_le_of_monotone",
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
  "slug": "abs-sum-mul-le-of-monotone--7e8ae105bd39dc7e19d0d743",
  "source": {
    "blob": "29fed6bbfed3694a1d9055ee5f406e372bbc4b92",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 154,
    "line": 120,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Abstract/Variantd022cba3c35d91b596c2e147dde9b62f2c2f927f89200d020dcc9b32f8b244cb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7e8ae105bd39dc7e19d0d74326d2eba7759be69ac302d72721c3abea59ca795f",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Abstract/Variantd022cba3c35d91b596c2e147dde9b62f2c2f927f89200d020dcc9b32f8b244cb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:62a17de7-4716-c401-8dc3-133b66d2d981`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 120–154.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem abs_sum_mul_le_of_monotone (d : ℕ) (w q : ℕ → ℝ) {W B : ℝ}
    (hw0 : ∀ k, 0 ≤ w k) (hwW : ∀ k, w k ≤ W) (hmono : Monotone w)
    (hq : ∀ K ≤ d, |∑ k ∈ range K, q k| ≤ B) :
    |∑ k ∈ range d, w k * q k| ≤ 2 * W * B := by
  have hB0 : 0 ≤ B := by simpa using hq 0 (Nat.zero_le _)
  have hW0 : 0 ≤ W := (hw0 0).trans (hwW 0)
  have habel := Finset.sum_range_by_parts w q d
  simp only [smul_eq_mul] at habel
  rw [habel]
  have h1 : |w (d - 1) * ∑ k ∈ range d, q k| ≤ W * B := by
    rw [abs_mul, abs_of_nonneg (hw0 _)]
    exact mul_le_mul (hwW _) (hq d le_rfl) (abs_nonneg _) hW0
  have h2 : |∑ i ∈ range (d - 1), (w (i + 1) - w i) * ∑ k ∈ range (i + 1), q k| ≤ W * B := by
    refine (abs_sum_le_sum_abs _ _).trans ?_
    have h3 : ∀ i ∈ range (d - 1),
        |(w (i + 1) - w i) * ∑ k ∈ range (i + 1), q k| ≤ (w (i + 1) - w i) * B := by
      intro i hi
      have hi' : i + 1 ≤ d := by
        have := Finset.mem_range.1 hi; omega
      rw [abs_mul, abs_of_nonneg (sub_nonneg.2 (hmono (Nat.le_succ i)))]
      exact mul_le_mul_of_nonneg_left (hq _ hi') (sub_nonneg.2 (hmono (Nat.le_succ i)))
    refine (sum_le_sum h3).trans ?_
    rw [← sum_mul, Finset.sum_range_sub]
    have : w (d - 1) - w 0 ≤ W := by linarith [hw0 0, hwW (d - 1)]
    exact mul_le_mul_of_nonneg_right this hB0
  calc |w (d - 1) * ∑ k ∈ range d, q k
        - ∑ i ∈ range (d - 1), (w (i + 1) - w i) * ∑ k ∈ range (i + 1), q k|
      ≤ |w (d - 1) * ∑ k ∈ range d, q k|
        + |∑ i ∈ range (d - 1), (w (i + 1) - w i) * ∑ k ∈ range (i + 1), q k| := abs_sub _ _
    _ ≤ W * B + W * B := add_le_add h1 h2
    _ = 2 * W * B := by ring

/-! ### D. The lattice sum  Σ_l min(1, ((k−l)h)⁻²)² ≪ 1/h -/

/-- telescoping: Σ_{m<R} 1/((m+1)h+1)² ≤ 1/h. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Abstract/Variantd022cba3c35d91b596c2e147dde9b62f2c2f927f89200d020dcc9b32f8b244cb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Abstract/Variantd022cba3c35d91b596c2e147dde9b62f2c2f927f89200d020dcc9b32f8b244cb.lean#L120).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `29fed6bbfed3694a1d9055ee5f406e372bbc4b92` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
