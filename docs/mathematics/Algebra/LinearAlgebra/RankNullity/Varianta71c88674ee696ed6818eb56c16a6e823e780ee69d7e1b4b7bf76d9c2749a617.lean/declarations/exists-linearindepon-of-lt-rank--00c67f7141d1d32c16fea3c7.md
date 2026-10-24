# exists_linearIndepOn_of_lt_rank

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:be35b80f-def1-1364-04f4-13402cecaaab",
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
  "slug": "exists-linearindepon-of-lt-rank--00c67f7141d1d32c16fea3c7",
  "source": {
    "blob": "1749d0b32d20d69938015b8b42e408f4834e66f7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 124,
    "line": 100,
    "path": "GRWTSK/Algebra/LinearAlgebra/RankNullity/Varianta71c88674ee696ed6818eb56c16a6e823e780ee69d7e1b4b7bf76d9c2749a617.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:00c67f7141d1d32c16fea3c77b70c71e65d2f819b6e669697ec82edf8113f54d",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/RankNullity/Varianta71c88674ee696ed6818eb56c16a6e823e780ee69d7e1b4b7bf76d9c2749a617.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:be35b80f-def1-1364-04f4-13402cecaaab`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 100–124.

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
    rw [Subtype.coe_mk, ← hsec x,mkQ_apply, Quotient.mk_eq_zero]
    exact Submodule.subset_span hxs
  refine ⟨s ∪ sec '' t, subset_union_left, ?_, ?_⟩
  · rw [Cardinal.mk_union_of_disjoint hst, Cardinal.mk_image_eq, ht,
      ← rank_quotient_add_rank (Submodule.span R s), add_comm, rank_span_set hs]
    exact HasLeftInverse.injective ⟨Submodule.Quotient.mk, hsec⟩
  · apply LinearIndepOn.union_id_of_quotient Submodule.subset_span hs
    rwa [linearIndepOn_iff_image (hsec'.symm ▸ injective_id).injOn.image_of_comp,
      ← image_comp, hsec', image_id]

@[deprecated (since := "2025-02-17")] alias
    exists_linearIndependent_of_lt_rank := exists_linearIndepOn_of_lt_rank

/-- Given a family of `n` linearly independent vectors in a space of dimension `> n`, one may extend
the family by another vector while retaining linear independence. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/RankNullity/Varianta71c88674ee696ed6818eb56c16a6e823e780ee69d7e1b4b7bf76d9c2749a617.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/RankNullity/Varianta71c88674ee696ed6818eb56c16a6e823e780ee69d7e1b4b7bf76d9c2749a617.lean#L100).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1749d0b32d20d69938015b8b42e408f4834e66f7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
