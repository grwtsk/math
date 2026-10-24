# all_squareCounts_pos_of_small_budget

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ab396ec6-f1ee-df2c-190a-5905c55b1840",
  "kind": "theorem",
  "lexical_name": "all_squareCounts_pos_of_small_budget",
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
  "slug": "all-squarecounts-pos-of-small-budget--1b9cb89a5106281d36df348a",
  "source": {
    "blob": "1c4d84032068fb77b1c6716957d387dfedeb2301",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 192,
    "line": 174,
    "path": "GRWTSK/NumberTheory/Chebyshev/SquarePrimeBudget.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1b9cb89a5106281d36df348a655a71664d8fef70379a7b1bf3628ed21b71191b",
  "verification": {
    "reference": "docs/verification/NumberTheory/Chebyshev/SquarePrimeBudget.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ab396ec6-f1ee-df2c-190a-5905c55b1840`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 174–192.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem all_squareCounts_pos_of_small_budget (S : Finset ℕ)
    (hS : ∀ n ∈ S, 1 ≤ n) (H U : ℝ) (hmargin : 0 < H - U)
    (hmain : ∀ n ∈ S, H ≤ 2 * (n : ℝ) + 1)
    (hbudget : ∀ n ∈ S, correctionBudget n ≤ U)
    (hsmall : (∑ n ∈ S, (squareIncrement n - (2 * (n : ℝ) + 1)) ^ 2) <
      (H - U) ^ 2) : ∀ n ∈ S, 0 < squareCount n := by
  intro n hn
  by_contra hnot
  have hz : squareCount n = 0 := Nat.eq_zero_of_not_pos hnot
  let B := S.filter (fun n ↦ squareCount n = 0)
  have hmem : n ∈ B := Finset.mem_filter.mpr ⟨hn, hz⟩
  have hcardNat : 1 ≤ B.card := Nat.succ_le_of_lt (Finset.card_pos.mpr ⟨n, hmem⟩)
  have hcard : (1 : ℝ) ≤ (B.card : ℝ) := by exact_mod_cast hcardNat
  have hcost : (H - U) ^ 2 ≤ (B.card : ℝ) * (H - U) ^ 2 := by
    simpa only [one_mul] using mul_le_mul_of_nonneg_right hcard (sq_nonneg (H - U))
  have hsum := prime_free_card_mul_sq_le S hS H U hmargin.le hmain hbudget
  exact (not_le_of_gt hsmall) (hcost.trans hsum)

/-- The reconciliation still charges a prime square at the right endpoint. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Chebyshev/SquarePrimeBudget.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Chebyshev/SquarePrimeBudget.lean#L174).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1c4d84032068fb77b1c6716957d387dfedeb2301` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
