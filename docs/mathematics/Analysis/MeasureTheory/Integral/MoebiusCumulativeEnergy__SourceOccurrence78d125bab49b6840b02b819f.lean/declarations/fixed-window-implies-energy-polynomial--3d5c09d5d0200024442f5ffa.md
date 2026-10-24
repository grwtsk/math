# fixed_window_implies_energy_polynomial

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7d63aa10a7624ab5bcadab6f0c905ba644865e18",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 98,
      "path": "GRWTSK/Analysis/MeasureTheory/Integral/MoebiusCumulativeEnergy.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e70a5ec7-b7c0-be94-7569-769398ce851d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    },
    {
      "blob": "7d63aa10a7624ab5bcadab6f0c905ba644865e18",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 98,
      "path": "GRWTSK/MeasureTheory/Integral/MoebiusCumulativeEnergy.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:444c4a52-5018-e50f-e6ed-1770eb1df4ce",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e880014d-8938-8ad9-ddde-b9a8891d770d",
  "kind": "theorem",
  "lexical_name": "fixed_window_implies_energy_polynomial",
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
  "slug": "fixed-window-implies-energy-polynomial--3d5c09d5d0200024442f5ffa",
  "source": {
    "blob": "7d63aa10a7624ab5bcadab6f0c905ba644865e18",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 131,
    "line": 98,
    "path": "GRWTSK/MeasureTheory/Integral/MoebiusCumulativeEnergy.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3d5c09d5d0200024442f5ffa61e9af7627c501a183cf000ea94ad7c0b52a9db7",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Integral/MoebiusCumulativeEnergy__SourceOccurrence78d125bab49b6840b02b819f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e880014d-8938-8ad9-ddde-b9a8891d770d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 98–131.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem fixed_window_implies_energy_polynomial {C q : ℝ} (hC : 0 ≤ C) (hq : 0 ≤ q)
    (window_bound : ∀ T : ℝ, 1 ≤ T → windowEnergy T ≤ C*(1+T)^q) :
    PolynomialBound energy := by
  have hn : ∀ n : ℕ, energy n ≤ C*(n:ℝ)*(1+(n:ℝ))^q := by
    intro n
    induction n with
    | zero => simp [energy_zero]
    | succ n ih =>
      rw [Nat.cast_add,Nat.cast_one,energy_successor]
      have hw := window_bound (n+1) (by have h := Nat.cast_nonneg (α := ℝ) n; linarith)
      have hp : (1+(n:ℝ))^q ≤ (1+((n:ℝ)+1))^q :=
        Real.rpow_le_rpow (by positivity) (by linarith) hq
      have hi := ih.trans (mul_le_mul_of_nonneg_left hp (by positivity : 0 ≤ C*(n:ℝ)))
      nlinarith
  refine ⟨C*2^(q+1),q+1,by positivity,by linarith,?_⟩
  intro T hT
  let n : ℕ := ⌈T⌉₊
  have hTn : T ≤ (n:ℝ) := Nat.le_ceil T
  have hnT : (n:ℝ) ≤ T+1 := (Nat.ceil_lt_add_one hT).le
  have hp : (1+(n:ℝ))^q ≤ (2*(1+T))^q :=
    Real.rpow_le_rpow (by positivity) (by linarith) hq
  have hnp : (n:ℝ) ≤ 2*(1+T) := by linarith
  calc
    energy T ≤ energy n := energy_monotone hTn
    _ ≤ C*(n:ℝ)*(1+(n:ℝ))^q := hn n
    _ ≤ C*(2*(1+T))*(2*(1+T))^q := by
      exact mul_le_mul (mul_le_mul_of_nonneg_left hnp hC) hp
        (by positivity) (by positivity)
    _ = C*2^(q+1)*(1+T)^(q+1) := by
      rw [Real.mul_rpow (by norm_num : (0:ℝ) ≤ 2) (by linarith : 0 ≤ 1+T)]
      simp only [Real.rpow_add (by norm_num : (0:ℝ) < 2),
        Real.rpow_add (by linarith : 0 < 1+T),Real.rpow_one]
      ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Integral/MoebiusCumulativeEnergy__SourceOccurrence78d125bab49b6840b02b819f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/MeasureTheory/Integral/MoebiusCumulativeEnergy.lean#L98).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7d63aa10a7624ab5bcadab6f0c905ba644865e18` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
