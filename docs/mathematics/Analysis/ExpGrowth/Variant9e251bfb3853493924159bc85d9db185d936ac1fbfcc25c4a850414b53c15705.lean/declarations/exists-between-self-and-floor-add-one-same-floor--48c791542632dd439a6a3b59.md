# exists_between_self_and_floor_add_one_same_floor

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7b30c4138f04a8efbc557c0e3775d30b9ce7dab3",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 183,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/9e/9e251bfb3853493924159bc85d9db185d936ac1fbfcc25c4a850414b53c15705.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:0e547da0-ee6d-3e21-e8ce-ae87adaea1ae",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f40a6306-a815-f696-9322-a91744ef9f9e",
  "kind": "theorem",
  "lexical_name": "exists_between_self_and_floor_add_one_same_floor",
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
  "slug": "exists-between-self-and-floor-add-one-same-floor--48c791542632dd439a6a3b59",
  "source": {
    "blob": "7b30c4138f04a8efbc557c0e3775d30b9ce7dab3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 200,
    "line": 183,
    "path": "GRWTSK/Analysis/ExpGrowth/Variant9e251bfb3853493924159bc85d9db185d936ac1fbfcc25c4a850414b53c15705.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:48c791542632dd439a6a3b597f8ee27c977f99aebc53c9e67b9f67287bad228f",
  "verification": {
    "reference": "docs/verification/Analysis/ExpGrowth/Variant9e251bfb3853493924159bc85d9db185d936ac1fbfcc25c4a850414b53c15705.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f40a6306-a815-f696-9322-a91744ef9f9e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 183–200.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_between_self_and_floor_add_one_same_floor {ρ : ℝ} (hρ : 0 ≤ ρ) :
    ∃ τ : ℝ,
      ρ < τ ∧ τ < (Nat.floor ρ + 1 : ℝ) ∧ 0 ≤ τ ∧ Nat.floor τ = Nat.floor ρ := by
  set m : ℕ := Nat.floor ρ
  set τ : ℝ := (ρ + (m + 1 : ℝ)) / 2
  have hm : ρ < (m + 1 : ℝ) := by simpa [m] using Nat.lt_floor_add_one (a := ρ)
  have hτ : ρ < τ := by dsimp [τ]; linarith
  have hτ_lt : τ < (m + 1 : ℝ) := by dsimp [τ]; linarith
  have hτ_nonneg : 0 ≤ τ := le_trans hρ (le_of_lt hτ)
  have hfloorτ : Nat.floor τ = m := by
    have hm_le_τ : (m : ℝ) ≤ τ := le_trans (Nat.floor_le hρ) (le_of_lt hτ)
    have hτ_lt_m1 : τ < (m : ℝ) + 1 := by simpa [add_assoc, add_comm, add_left_comm] using hτ_lt
    exact (Nat.floor_eq_iff hτ_nonneg).2 ⟨hm_le_τ, hτ_lt_m1⟩
  exact ⟨τ, hτ, by simpa [m] using hτ_lt, hτ_nonneg, by simpa [m] using hfloorτ⟩

open Metric Complex

/-- On the sphere of radius `|R|`, a log `(1 + ‖f‖)` growth bound controls `log ‖f‖`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/ExpGrowth/Variant9e251bfb3853493924159bc85d9db185d936ac1fbfcc25c4a850414b53c15705.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ExpGrowth/Variant9e251bfb3853493924159bc85d9db185d936ac1fbfcc25c4a850414b53c15705.lean#L183).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7b30c4138f04a8efbc557c0e3775d30b9ce7dab3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
