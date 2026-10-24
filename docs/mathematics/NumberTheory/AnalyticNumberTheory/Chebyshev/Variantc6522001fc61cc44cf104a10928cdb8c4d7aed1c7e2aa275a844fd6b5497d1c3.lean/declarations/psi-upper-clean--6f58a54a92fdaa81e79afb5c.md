# psi_upper_clean

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a0348e13-ad79-1945-4a9a-d5e80ff68b8c",
  "kind": "theorem",
  "lexical_name": "psi_upper_clean",
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
  "slug": "psi-upper-clean--6f58a54a92fdaa81e79afb5c",
  "source": {
    "blob": "045466a6d1938b36edf6ae23c75be1b0d2dda31f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 669,
    "line": 633,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/Chebyshev/Variantc6522001fc61cc44cf104a10928cdb8c4d7aed1c7e2aa275a844fd6b5497d1c3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6f58a54a92fdaa81e79afb5c1eb21e010d32b84709959dea269518f448935015",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/Chebyshev/Variantc6522001fc61cc44cf104a10928cdb8c4d7aed1c7e2aa275a844fd6b5497d1c3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a0348e13-ad79-1945-4a9a-d5e80ff68b8c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 633–669.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem psi_upper_clean (x : ℝ) (hx : x > 0) : ψ x ≤ 1.11 * x := by
  have hlog_large : ∀ y : ℝ, 11723 < y → 5 * log y - 5 ≤ (37 / 10000 : ℝ) * y := by
    intro y hy
    have hlog_11723 : log (11723 : ℝ) ≤ 937 / 100 := by interval_decide
    calc 5 * log y - 5
        ≤ 5 * (937 / 100 + (y / 11723 - 1)) - 5 := by linarith [hlog_y y hy]
      _ = 5 / 11723 * y + 3685 / 100 := by ring
      _ ≤ 37 / 10000 * y := by linarith
  have hNat : ∀ n : ℕ, ψ (n : ℝ) ≤ 1.11 * n := by
    intro n
    refine Nat.strong_induction_on n ?_
    intro n ih
    by_cases hn0 : n = 0
    · subst hn0; simp [psi_eq_zero_of_lt_two (by norm_num : (0 : ℝ) < 2)]
    · have hn : 0 < n := Nat.pos_of_ne_zero hn0
      by_cases! hsmall : (n : ℝ) ≤ 11723
      · exact psi_num_2 n (by exact_mod_cast hn) hsmall
      · let m : ℕ := ⌊(n : ℝ) / 6⌋₊
        have hm_lt_n : m < n := by
          exact_mod_cast show (m : ℝ) < n from
            lt_of_le_of_lt (Nat.floor_le (by positivity)) (by nlinarith)
        have hpsi_div : ψ ((n : ℝ) / 6) ≤ 1.11 * ((n : ℝ) / 6) := calc
          ψ ((n : ℝ) / 6) = ψ (m : ℝ) := by simp [m, psi_eq_psi_coe_floor]
          _ ≤ 1.11 * (m : ℝ) := ih m hm_lt_n
          _ ≤ 1.11 * ((n : ℝ) / 6) := by nlinarith [Nat.floor_le (by positivity : 0 ≤ (n : ℝ) / 6)]
        calc ψ (n : ℝ)
            ≤ ψ ((n : ℝ) / 6) + a * n + 5 * log (n : ℝ) - 5 := by
                linarith [psi_diff_upper (n : ℝ) (by linarith)]
          _ ≤ 1.11 * ((n : ℝ) / 6) + 0.92130 * n + (37 / 10000 : ℝ) * n := by
                nlinarith [hpsi_div, hlog_large (n : ℝ) hsmall, a_bound.2,
                  show (0 : ℝ) < n from by exact_mod_cast hn]
          _ = 1.11 * n := by ring
  rw [psi_eq_psi_coe_floor x]
  calc ψ (⌊x⌋₊ : ℝ) ≤ 1.11 * ⌊x⌋₊ := hNat ⌊x⌋₊
    _ ≤ 1.11 * x := by nlinarith [Nat.floor_le hx.le]

end Chebyshev
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/Chebyshev/Variantc6522001fc61cc44cf104a10928cdb8c4d7aed1c7e2aa275a844fd6b5497d1c3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/Chebyshev/Variantc6522001fc61cc44cf104a10928cdb8c4d7aed1c7e2aa275a844fd6b5497d1c3.lean#L633).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `045466a6d1938b36edf6ae23c75be1b0d2dda31f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
