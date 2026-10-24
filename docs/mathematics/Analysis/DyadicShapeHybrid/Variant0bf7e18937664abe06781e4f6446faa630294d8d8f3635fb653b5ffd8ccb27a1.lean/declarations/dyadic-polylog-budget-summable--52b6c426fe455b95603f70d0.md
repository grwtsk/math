# dyadic_polylog_budget_summable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0b971243-334d-85d2-f1df-da247c0679a3",
  "kind": "theorem",
  "lexical_name": "dyadic_polylog_budget_summable",
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
  "slug": "dyadic-polylog-budget-summable--52b6c426fe455b95603f70d0",
  "source": {
    "blob": "1bd1df9d26573705a29e5ea818ceb63bbaaf6d54",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 72,
    "line": 47,
    "path": "GRWTSK/Analysis/DyadicShapeHybrid/Variant0bf7e18937664abe06781e4f6446faa630294d8d8f3635fb653b5ffd8ccb27a1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:52b6c426fe455b95603f70d0898e6470d26889f3f5f57afb3fa9ae59a4f6485e",
  "verification": {
    "reference": "docs/verification/Analysis/DyadicShapeHybrid/Variant0bf7e18937664abe06781e4f6446faa630294d8d8f3635fb653b5ffd8ccb27a1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0b971243-334d-85d2-f1df-da247c0679a3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 47–72.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem dyadic_polylog_budget_summable {theta lambda sigma : ℝ}
    (hgap : theta + lambda - sigma < 3 / 2) (k : ℕ) (C : ℝ) :
    Summable (fun n : ℕ => C * ((n + 1 : ℕ) : ℝ) ^ k *
      ((2 : ℝ) ^ n) ^ hybridExponent theta lambda sigma) := by
  let r : ℝ := (2 : ℝ) ^ hybridExponent theta lambda sigma
  have hr0 : 0 < r := Real.rpow_pos_of_pos (by norm_num) _
  have hr1 : r < 1 := Real.rpow_lt_one_of_one_lt_of_neg (by norm_num)
    (by unfold hybridExponent; linarith)
  have hseries := summable_pow_mul_geometric_of_norm_lt_one k
    (by simpa only [Real.norm_eq_abs, abs_of_pos hr0] using hr1 : ‖r‖ < 1)
  have hshift := (hseries.comp_injective Nat.succ_injective).mul_right r⁻¹
  change Summable (fun n : ℕ => (↑(n + 1) ^ k * r ^ (n + 1)) * r⁻¹) at hshift
  have heq : (fun n : ℕ => (↑(n + 1) ^ k * r ^ (n + 1)) * r⁻¹) =
      fun n : ℕ => ↑(n + 1) ^ k * r ^ n := by
    funext n
    rw [pow_succ]
    simp only [mul_assoc, mul_inv_cancel₀ hr0.ne', mul_one]
  rw [heq] at hshift
  have h := hshift.mul_left C
  apply h.congr
  intro n
  dsimp [r]
  rw [← Real.rpow_natCast_mul (by norm_num : (0 : ℝ) ≤ 2) n,
    mul_comm (n : ℝ), Real.rpow_mul_natCast (by norm_num : (0 : ℝ) ≤ 2)]
  ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/DyadicShapeHybrid/Variant0bf7e18937664abe06781e4f6446faa630294d8d8f3635fb653b5ffd8ccb27a1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/DyadicShapeHybrid/Variant0bf7e18937664abe06781e4f6446faa630294d8d8f3635fb653b5ffd8ccb27a1.lean#L47).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1bd1df9d26573705a29e5ea818ceb63bbaaf6d54` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
