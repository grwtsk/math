# exists_linearIndepOn_of_lt_rank

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8e8ca2f8-c846-24d1-58ef-f5ec25958295",
  "kind": "theorem",
  "lexical_name": "exists_linearIndepOn_of_lt_rank",
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
  "slug": "exists-linearindepon-of-lt-rank--ef5f32f0cfbf98c3f85b9082",
  "source": {
    "blob": "3fe0c83eda59b8d829f0f7f82423ea5e67a1a547",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 166,
    "line": 145,
    "path": "GRWTSK/Algebra/LinearAlgebra/RankNullity/Variant3c3d676dd6ad7925347d260baeb73c054075c163e933d4fbe01990106ff3523c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ef5f32f0cfbf98c3f85b9082c0bc362f1f89d15ab07ca168fd1c94a898a095b8",
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

Occurrence: `result:8e8ca2f8-c846-24d1-58ef-f5ec25958295`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 145–166.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_linearIndepOn_of_lt_rank [StrongRankCondition R]
    {s : Set M} (hs : LinearIndepOn R id s) :
    ∃ t, s ⊆ t ∧ #t = Module.rank R M ∧ LinearIndepOn R id t := by
  obtain ⟨t, ht, ht'⟩ := exists_set_linearIndependent R (M ⧸ Submodule.span R s)
  choose sec hsec using Submodule.mkQ_surjective (Submodule.span R s)
  have hsec' : (Submodule.mkQ _) ∘ sec = _root_.id := funext hsec
  have hst : Disjoint s (sec '' t) := by
    rw [Set.disjoint_iff]
    rintro _ ⟨hxs, ⟨x, hxt, rfl⟩⟩
    apply ht'.ne_zero ⟨x, hxt⟩
    rw [Subtype.coe_mk, ← hsec x, mkQ_apply, Quotient.mk_eq_zero]
    exact Submodule.subset_span hxs
  refine ⟨s ∪ sec '' t, subset_union_left, ?_, ?_⟩
  · rw [Cardinal.mk_union_of_disjoint hst, Cardinal.mk_image_eq, ht,
      ← rank_quotient_add_rank (Submodule.span R s), add_comm, rank_span_set hs]
    exact HasLeftInverse.injective ⟨Submodule.Quotient.mk, hsec⟩
  · apply LinearIndepOn.union_id_of_quotient Submodule.subset_span hs
    rwa [linearIndepOn_iff_image (hsec'.symm ▸ injective_id).injOn.image_of_comp,
      ← image_comp, hsec', image_id]

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

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/RankNullity/Variant3c3d676dd6ad7925347d260baeb73c054075c163e933d4fbe01990106ff3523c.lean#L145).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3fe0c83eda59b8d829f0f7f82423ea5e67a1a547` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
