# psi_upper_clean

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "0d7c6b24c7c25968362c99314207539d8be88499",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 625,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d0/d05c5eae13791b1f99903711232b64b4a1ef447e6af9e93176371ebda6c558a7.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:848d5ecc-148c-583f-d5c2-b668e1a1d006",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c70f9932-3bc6-148a-43e8-2f0eab110352",
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
  "slug": "psi-upper-clean--a74d59682bef49cb48e93887",
  "source": {
    "blob": "0d7c6b24c7c25968362c99314207539d8be88499",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 661,
    "line": 625,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/Chebyshev/Variantd05c5eae13791b1f99903711232b64b4a1ef447e6af9e93176371ebda6c558a7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a74d59682bef49cb48e93887c84907f6e94b5897ab49eb37b27b8072a9e3c52b",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/Chebyshev/Variantd05c5eae13791b1f99903711232b64b4a1ef447e6af9e93176371ebda6c558a7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_SOURCE_DEPENDENCY"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c70f9932-3bc6-148a-43e8-2f0eab110352`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 625–661.

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

**Module verification:** `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/Chebyshev/Variantd05c5eae13791b1f99903711232b64b4a1ef447e6af9e93176371ebda6c558a7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/Chebyshev/Variantd05c5eae13791b1f99903711232b64b4a1ef447e6af9e93176371ebda6c558a7.lean#L625).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0d7c6b24c7c25968362c99314207539d8be88499` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
