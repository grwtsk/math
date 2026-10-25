# nf_repr_split'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0a5ea066-6d63-36a4-5977-6f1eb341fae2",
  "kind": "theorem",
  "lexical_name": "nf_repr_split'",
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
  "slug": "nf-repr-split--1c8c8689c3f7231a516d15b9",
  "source": {
    "blob": "bedcc3ed05793f1be7551827d345e40153184598",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 767,
    "line": 740,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Notation/Variant070cb7239eecd46d74400858b5889f4b0e5b6e6f41fdcaef733b2c4b26d3d69b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1c8c8689c3f7231a516d15b9f4e81a5a92986a0b8457279c23363966f3371dfd",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/SetTheory/Notation/Variant070cb7239eecd46d74400858b5889f4b0e5b6e6f41fdcaef733b2c4b26d3d69b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0a5ea066-6d63-36a4-5977-6f1eb341fae2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 740–767.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem nf_repr_split' : ∀ {o o' m} [NF o], split' o = (o', m) → NF o' ∧ repr o = ω * repr o' + m
  | 0, o', m, _, p => by injection p; substs o' m; simp [NF.zero]
  | oadd e n a, o', m, h, p => by
    by_cases e0 : e = 0 <;> simp [e0, split, split'] at p ⊢
    · rcases p with ⟨rfl, rfl⟩
      simp [h.zero_of_zero e0, NF.zero]
    · revert p
      cases' h' : split' a with a' m'
      haveI := h.fst
      haveI := h.snd
      cases' nf_repr_split' h' with IH₁ IH₂
      simp [IH₂, split']
      intros
      substs o' m
      have : (ω : Ordinal.{0}) ^ repr e = ω ^ (1 : Ordinal.{0}) * ω ^ (repr e - 1) := by
        have := mt repr_inj.1 e0
        rw [← opow_add, Ordinal.add_sub_cancel_of_le (one_le_iff_ne_zero.2 this)]
      refine' ⟨NF.oadd (by infer_instance) _ _, _⟩
      · simp at this ⊢
        refine'
          IH₁.below_of_lt'
            ((Ordinal.mul_lt_mul_iff_left omega_pos).1 <| lt_of_le_of_lt (le_add_right _ m') _)
        rw [← this, ← IH₂]
        exact h.snd'.repr_lt
      · rw [this]
        simp [mul_add, mul_assoc, add_assoc]
#align onote.NF_repr_split' ONote.nf_repr_split'

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/SetTheory/Notation/Variant070cb7239eecd46d74400858b5889f4b0e5b6e6f41fdcaef733b2c4b26d3d69b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Notation/Variant070cb7239eecd46d74400858b5889f4b0e5b6e6f41fdcaef733b2c4b26d3d69b.lean#L740).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bedcc3ed05793f1be7551827d345e40153184598` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
