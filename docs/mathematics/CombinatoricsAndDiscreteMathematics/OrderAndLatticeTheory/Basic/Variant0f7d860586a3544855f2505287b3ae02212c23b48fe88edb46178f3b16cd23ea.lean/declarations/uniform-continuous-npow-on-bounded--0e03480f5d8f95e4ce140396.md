# uniform_continuous_npow_on_bounded

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a9060f960dc7275b866abc0d4d8e346254217f0d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 659,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/0f/0f7d860586a3544855f2505287b3ae02212c23b48fe88edb46178f3b16cd23ea.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ac7b6df1-79de-237e-7fc4-a205d0069bc1",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:5c53ff88-0a11-9e59-2d7a-0bfe6fd2c8c8",
  "kind": "theorem",
  "lexical_name": "uniform_continuous_npow_on_bounded",
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
  "slug": "uniform-continuous-npow-on-bounded--0e03480f5d8f95e4ce140396",
  "source": {
    "blob": "a9060f960dc7275b866abc0d4d8e346254217f0d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 684,
    "line": 659,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant0f7d860586a3544855f2505287b3ae02212c23b48fe88edb46178f3b16cd23ea.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0e03480f5d8f95e4ce14039659f0912584a1fedcfe50c9748ca296ad33b2c9f3",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant0f7d860586a3544855f2505287b3ae02212c23b48fe88edb46178f3b16cd23ea.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5c53ff88-0a11-9e59-2d7a-0bfe6fd2c8c8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 659–684.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem uniform_continuous_npow_on_bounded (B : α) {ε : α} (hε : 0 < ε) (n : ℕ) :
    ∃ δ > 0, ∀ q r : α, |r| ≤ B → |q - r| ≤ δ → |q ^ n - r ^ n| < ε := by
  wlog B_pos : 0 < B generalizing B
  · have ⟨δ, δ_pos, cont⟩ := this 1 zero_lt_one
    exact ⟨δ, δ_pos, fun q r hr ↦ cont q r (hr.trans ((le_of_not_lt B_pos).trans zero_le_one))⟩
  have pos : 0 < 1 + ↑n * (B + 1) ^ (n - 1) := zero_lt_one.trans_le <| le_add_of_nonneg_right <|
    mul_nonneg n.cast_nonneg <| (pow_pos (B_pos.trans <| lt_add_of_pos_right _ zero_lt_one) _).le
  refine ⟨min 1 (ε / (1 + n * (B + 1) ^ (n - 1))), lt_min zero_lt_one (div_pos hε pos),
    fun q r hr hqr ↦ (abs_pow_sub_pow_le ..).trans_lt ?_⟩
  rw [le_inf_iff, le_div_iff₀ pos, mul_one_add, ← mul_assoc] at hqr
  obtain h | h := (abs_nonneg (q - r)).eq_or_lt
  · simpa only [← h, zero_mul] using hε
  refine (lt_of_le_of_lt ?_ <| lt_add_of_pos_left _ h).trans_le hqr.2
  refine mul_le_mul_of_nonneg_left (pow_le_pow_left₀ ((abs_nonneg _).trans le_sup_left) ?_ _)
    (mul_nonneg (abs_nonneg _) n.cast_nonneg)
  refine max_le ?_ (hr.trans <| le_add_of_nonneg_right zero_le_one)
  exact add_sub_cancel r q ▸ (abs_add_le ..).trans (add_le_add hr hqr.1)

end

namespace Mathlib.Meta.Positivity
open Lean Meta Qq Function

section LinearOrderedSemifield
variable {α : Type*} [Semifield α] [LinearOrder α] [IsStrictOrderedRing α] {a b : α}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant0f7d860586a3544855f2505287b3ae02212c23b48fe88edb46178f3b16cd23ea.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant0f7d860586a3544855f2505287b3ae02212c23b48fe88edb46178f3b16cd23ea.lean#L659).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a9060f960dc7275b866abc0d4d8e346254217f0d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
