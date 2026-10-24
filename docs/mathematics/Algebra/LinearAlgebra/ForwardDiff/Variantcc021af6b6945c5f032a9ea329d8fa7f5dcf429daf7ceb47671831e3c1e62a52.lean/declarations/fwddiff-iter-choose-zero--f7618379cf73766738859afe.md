# fwdDiff_iter_choose_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0f19d86c-f40c-7fd4-a857-2a7d55d27469",
  "kind": "lemma",
  "lexical_name": "fwdDiff_iter_choose_zero",
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
  "slug": "fwddiff-iter-choose-zero--f7618379cf73766738859afe",
  "source": {
    "blob": "283479e9193141c8446a03c476ed36bc78aa1071",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 196,
    "line": 184,
    "path": "GRWTSK/Algebra/LinearAlgebra/ForwardDiff/Variantcc021af6b6945c5f032a9ea329d8fa7f5dcf429daf7ceb47671831e3c1e62a52.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f7618379cf73766738859afe25a1c2516b478b5017981d2390e23a71be546fa8",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/ForwardDiff/Variantcc021af6b6945c5f032a9ea329d8fa7f5dcf429daf7ceb47671831e3c1e62a52.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0f19d86c-f40c-7fd4-a857-2a7d55d27469`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 184–196.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma fwdDiff_iter_choose_zero (m n : ℕ) :
    Δ_[1]^[n] (fun x ↦ x.choose m : ℕ → ℤ) 0 = if n = m then 1 else 0 := by
  rcases lt_trichotomy m n with hmn | rfl | hnm
  · rcases Nat.exists_eq_add_of_lt hmn with ⟨k, rfl⟩
    simp_rw [hmn.ne', if_false, (by ring : m + k + 1 = k + 1 + m), iterate_add_apply,
      add_zero m ▸ fwdDiff_iter_choose 0 m, choose_zero_right, iterate_one, cast_one, fwdDiff_const,
      fwdDiff_iter_eq_sum_shift, smul_zero, sum_const_zero]
  · simp only [if_true, add_zero m ▸ fwdDiff_iter_choose 0 m, choose_zero_right, cast_one]
  · rcases Nat.exists_eq_add_of_lt hnm with ⟨k, rfl⟩
    simp_rw [hnm.ne, if_false, add_assoc n k 1, fwdDiff_iter_choose, choose_zero_succ, cast_zero]

end choose

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/ForwardDiff/Variantcc021af6b6945c5f032a9ea329d8fa7f5dcf429daf7ceb47671831e3c1e62a52.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/ForwardDiff/Variantcc021af6b6945c5f032a9ea329d8fa7f5dcf429daf7ceb47671831e3c1e62a52.lean#L184).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `283479e9193141c8446a03c476ed36bc78aa1071` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
