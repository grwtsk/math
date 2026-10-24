# exists_linearIndependent_cons_of_lt_rank

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:00d31230-6d2a-07a1-f509-0d8249b23a4f",
  "kind": "theorem",
  "lexical_name": "exists_linearIndependent_cons_of_lt_rank",
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
  "slug": "exists-linearindependent-cons-of-lt-rank--d7e762efa559c0dc962acd11",
  "source": {
    "blob": "3fe0c83eda59b8d829f0f7f82423ea5e67a1a547",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 180,
    "line": 167,
    "path": "GRWTSK/Algebra/LinearAlgebra/RankNullity/Variant3c3d676dd6ad7925347d260baeb73c054075c163e933d4fbe01990106ff3523c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d7e762efa559c0dc962acd117aba916a8a2bd6d2792b1e07e88620718258365c",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/RankNullity/Variant3c3d676dd6ad7925347d260baeb73c054075c163e933d4fbe01990106ff3523c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:00d31230-6d2a-07a1-f509-0d8249b23a4f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 167–180.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_linearIndependent_cons_of_lt_rank [StrongRankCondition R] {n : ℕ} {v : Fin n → M}
    (hv : LinearIndependent R v) (h : n < Module.rank R M) :
    ∃ (x : M), LinearIndependent R (Fin.cons x v) := by
  obtain ⟨t, h₁, h₂, h₃⟩ := exists_linearIndepOn_of_lt_rank hv.linearIndepOn_id
  have : range v ≠ t := by
    refine fun e ↦ h.ne ?_
    rw [← e, ← lift_injective.eq_iff, mk_range_eq_of_injective hv.injective] at h₂
    simpa only [mk_fintype, Fintype.card_fin, lift_natCast, lift_id'] using h₂
  obtain ⟨x, hx, hx'⟩ := nonempty_of_ssubset (h₁.ssubset_of_ne this)
  exact ⟨x, (linearIndepOn_id_range_iff (Fin.cons_injective_iff.mpr ⟨hx', hv.injective⟩)).mp
    (h₃.mono (Fin.range_cons x v ▸ insert_subset hx h₁))⟩

/-- Given a family of `n` linearly independent vectors in a space of dimension `> n`, one may extend
the family by another vector while retaining linear independence. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/RankNullity/Variant3c3d676dd6ad7925347d260baeb73c054075c163e933d4fbe01990106ff3523c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/RankNullity/Variant3c3d676dd6ad7925347d260baeb73c054075c163e933d4fbe01990106ff3523c.lean#L167).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3fe0c83eda59b8d829f0f7f82423ea5e67a1a547` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
