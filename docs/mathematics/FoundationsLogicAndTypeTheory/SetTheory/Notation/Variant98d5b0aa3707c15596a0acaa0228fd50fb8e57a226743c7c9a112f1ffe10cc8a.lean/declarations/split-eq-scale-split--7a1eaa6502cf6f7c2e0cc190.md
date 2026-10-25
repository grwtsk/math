# split_eq_scale_split'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d19d6554-66af-a2e5-8281-11690b9726bd",
  "kind": "theorem",
  "lexical_name": "split_eq_scale_split'",
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
  "slug": "split-eq-scale-split--7a1eaa6502cf6f7c2e0cc190",
  "source": {
    "blob": "78e96d284523ba03b17d77bc31a38269fdecef44",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 663,
    "line": 644,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Notation/Variant98d5b0aa3707c15596a0acaa0228fd50fb8e57a226743c7c9a112f1ffe10cc8a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7a1eaa6502cf6f7c2e0cc1901af90ffca92c11578921e16df4ff655670fad138",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/SetTheory/Notation/Variant98d5b0aa3707c15596a0acaa0228fd50fb8e57a226743c7c9a112f1ffe10cc8a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d19d6554-66af-a2e5-8281-11690b9726bd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 644–663.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem split_eq_scale_split' : ∀ {o o' m} [NF o], split' o = (o', m) → split o = (scale 1 o', m)
  | 0, o', m, _, p => by injection p; subst o' m; rfl
  | oadd e n a, o', m, h, p => by
    by_cases e0 : e = 0 <;> simp only [split', e0, ↓reduceIte, Prod.mk.injEq, split] at p ⊢
    · rcases p with ⟨rfl, rfl⟩
      exact ⟨rfl, rfl⟩
    · revert p
      rcases h' : split' a with ⟨a', m'⟩
      have := h.fst
      have := h.snd
      simp only [split_eq_scale_split' h', and_imp]
      have : 1 + (e - 1) = e := by
        refine repr_inj.1 ?_
        simp only [repr_add, repr_one, Nat.cast_one, repr_sub]
        have := mt repr_inj.1 e0
        exact Ordinal.add_sub_cancel_of_le <| one_le_iff_ne_zero.2 this
      intros
      subst o' m
      simp [scale, this]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/SetTheory/Notation/Variant98d5b0aa3707c15596a0acaa0228fd50fb8e57a226743c7c9a112f1ffe10cc8a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Notation/Variant98d5b0aa3707c15596a0acaa0228fd50fb8e57a226743c7c9a112f1ffe10cc8a.lean#L644).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `78e96d284523ba03b17d77bc31a38269fdecef44` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
