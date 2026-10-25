# repr_add

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1bb4e10b-c855-5ce0-1b4b-94b5c1c4b121",
  "kind": "theorem",
  "lexical_name": "repr_add",
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
  "slug": "repr-add--0a3cbb6534f128fbe067f57b",
  "source": {
    "blob": "bedcc3ed05793f1be7551827d345e40153184598",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 513,
    "line": 492,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Notation/Variant070cb7239eecd46d74400858b5889f4b0e5b6e6f41fdcaef733b2c4b26d3d69b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0a3cbb6534f128fbe067f57bcc5785308f2b6b2409e4f97716a7c8c3fe5c0b0c",
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

Occurrence: `result:1bb4e10b-c855-5ce0-1b4b-94b5c1c4b121`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 492–513.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem repr_add : ∀ (o₁ o₂) [NF o₁] [NF o₂], repr (o₁ + o₂) = repr o₁ + repr o₂
  | 0, o, _, _ => by simp
  | oadd e n a, o, h₁, h₂ => by
    haveI := h₁.snd; have h' := repr_add a o
    conv_lhs at h' => simp [HAdd.hAdd, Add.add]
    have nf := ONote.add_nf a o
    conv at nf => simp [HAdd.hAdd, Add.add]
    conv in _ + o => simp [HAdd.hAdd, Add.add]
    cases' h : add a o with e' n' a' <;>
      simp only [Add.add, add, addAux, h'.symm, h, add_assoc, repr] at nf h₁ ⊢
    have := h₁.fst; haveI := nf.fst; have ee := cmp_compares e e'
    cases he: cmp e e' <;> simp [he] at ee ⊢
    · rw [← add_assoc, @add_absorp _ (repr e') (ω ^ repr e' * (n' : ℕ))]
      · have := (h₁.below_of_lt ee).repr_lt
        unfold repr at this
        cases he': e' <;> simp [he'] at this ⊢ <;>
        exact lt_of_le_of_lt (le_add_right _ _) this
      · simpa using (Ordinal.mul_le_mul_iff_left <| opow_pos (repr e') omega_pos).2
          (nat_cast_le.2 n'.pos)
    · rw [ee, ← add_assoc, ← mul_add, ← Nat.cast_add]
#align onote.repr_add ONote.repr_add

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/SetTheory/Notation/Variant070cb7239eecd46d74400858b5889f4b0e5b6e6f41fdcaef733b2c4b26d3d69b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Notation/Variant070cb7239eecd46d74400858b5889f4b0e5b6e6f41fdcaef733b2c4b26d3d69b.lean#L492).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bedcc3ed05793f1be7551827d345e40153184598` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
