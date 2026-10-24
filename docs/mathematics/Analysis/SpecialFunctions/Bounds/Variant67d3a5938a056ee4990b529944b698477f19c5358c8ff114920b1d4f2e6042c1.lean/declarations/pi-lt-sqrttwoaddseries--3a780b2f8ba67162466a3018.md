# pi_lt_sqrtTwoAddSeries

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a6a99b043c73ea5a1bfd993175b89baf7c38b45d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 34,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/67/67d3a5938a056ee4990b529944b698477f19c5358c8ff114920b1d4f2e6042c1.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:0d51037c-7780-0bae-c249-2ce0fd7b4a8a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b6fcc8ac-12c9-1e2d-3647-873c895ee866",
  "kind": "theorem",
  "lexical_name": "pi_lt_sqrtTwoAddSeries",
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
  "slug": "pi-lt-sqrttwoaddseries--3a780b2f8ba67162466a3018",
  "source": {
    "blob": "a6a99b043c73ea5a1bfd993175b89baf7c38b45d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 56,
    "line": 34,
    "path": "GRWTSK/Analysis/SpecialFunctions/Bounds/Variant67d3a5938a056ee4990b529944b698477f19c5358c8ff114920b1d4f2e6042c1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3a780b2f8ba67162466a3018734361fe0172ff471a5d85eeaf5f568f26afca26",
  "verification": {
    "reference": "docs/verification/Analysis/SpecialFunctions/Bounds/Variant67d3a5938a056ee4990b529944b698477f19c5358c8ff114920b1d4f2e6042c1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b6fcc8ac-12c9-1e2d-3647-873c895ee866`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 34–56.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem pi_lt_sqrtTwoAddSeries (n : ℕ) :
    π < 2 ^ (n + 1) * √(2 - sqrtTwoAddSeries 0 n) + 1 / 4 ^ n := by
  have : π < (√(2 - sqrtTwoAddSeries 0 n) / 2 + 1 / (2 ^ n) ^ 3 / 4) * (2 : ℝ) ^ (n + 2) := by
    rw [← div_lt_iff₀ (by norm_num), ← sin_pi_over_two_pow_succ, ← sub_lt_iff_lt_add']
    calc
      π / 2 ^ (n + 2) - sin (π / 2 ^ (n + 2)) < (π / 2 ^ (n + 2)) ^ 3 / 4 :=
        sub_lt_comm.1 <| sin_gt_sub_cube (by positivity) <| div_le_one_of_le₀ ?_ (by positivity)
      _ ≤ (4 / 2 ^ (n + 2)) ^ 3 / 4 := by gcongr; exact pi_le_four
      _ = 1 / (2 ^ n) ^ 3 / 4 := by simp [add_comm n, pow_add, div_mul_eq_div_div]; norm_num
    calc
      π ≤ 4 := pi_le_four
      _ = 2 ^ (0 + 2) := by norm_num
      _ ≤ 2 ^ (n + 2) := by gcongr <;> norm_num
  refine lt_of_lt_of_le this (le_of_eq ?_); rw [add_mul]; congr 1
  · ring
  simp only [show (4 : ℝ) = 2 ^ 2 by norm_num, ← pow_mul, div_div, ← pow_add]
  rw [one_div, one_div, inv_mul_eq_iff_eq_mul₀, eq_comm, mul_inv_eq_iff_eq_mul₀, ← pow_add]
  · rw [add_assoc, Nat.mul_succ, add_comm, add_comm n, add_assoc, mul_comm n]
  all_goals norm_num

/-- From an upper bound on `sqrtTwoAddSeries 0 n = 2 cos (π / 2 ^ (n+1))` of the form
`sqrtTwoAddSeries 0 n ≤ 2 - (a / 2 ^ (n + 1)) ^ 2)`, one can deduce the lower bound `a < π`
thanks to basic trigonometric inequalities as expressed in `pi_gt_sqrtTwoAddSeries`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/SpecialFunctions/Bounds/Variant67d3a5938a056ee4990b529944b698477f19c5358c8ff114920b1d4f2e6042c1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/SpecialFunctions/Bounds/Variant67d3a5938a056ee4990b529944b698477f19c5358c8ff114920b1d4f2e6042c1.lean#L34).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a6a99b043c73ea5a1bfd993175b89baf7c38b45d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
