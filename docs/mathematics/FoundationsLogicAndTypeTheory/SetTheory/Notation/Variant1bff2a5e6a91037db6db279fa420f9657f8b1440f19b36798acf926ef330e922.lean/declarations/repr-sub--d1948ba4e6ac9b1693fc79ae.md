# repr_sub

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "662748c0fa51663685efded4a2e2a9ee5ad80563",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 530,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/1b/1bff2a5e6a91037db6db279fa420f9657f8b1440f19b36798acf926ef330e922.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3cd5f34c-9039-0d21-283a-3f795d4e8f31",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:afd2dd14-fd8c-1269-d584-e39fd37e9d1a",
  "kind": "theorem",
  "lexical_name": "repr_sub",
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
  "slug": "repr-sub--d1948ba4e6ac9b1693fc79ae",
  "source": {
    "blob": "662748c0fa51663685efded4a2e2a9ee5ad80563",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 566,
    "line": 530,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Notation/Variant1bff2a5e6a91037db6db279fa420f9657f8b1440f19b36798acf926ef330e922.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d1948ba4e6ac9b1693fc79aef3460cd5923b4a823997e4de5245f72af6bfe339",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/SetTheory/Notation/Variant1bff2a5e6a91037db6db279fa420f9657f8b1440f19b36798acf926ef330e922.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:afd2dd14-fd8c-1269-d584-e39fd37e9d1a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 530–566.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem repr_sub : ∀ (o₁ o₂) [NF o₁] [NF o₂], repr (o₁ - o₂) = repr o₁ - repr o₂
  | 0, o, _, h₂ => by cases o <;> exact (Ordinal.zero_sub _).symm
  | oadd e n a, 0, _, _ => (Ordinal.sub_zero _).symm
  | oadd e₁ n₁ a₁, oadd e₂ n₂ a₂, h₁, h₂ => by
    haveI := h₁.snd; haveI := h₂.snd; have h' := repr_sub a₁ a₂
    conv_lhs at h' => dsimp [HSub.hSub, Sub.sub, sub]
    conv_lhs => dsimp only [HSub.hSub, Sub.sub]; dsimp only [sub]
    have ee := @cmp_compares _ _ h₁.fst h₂.fst
    cases h : cmp e₁ e₂ <;> simp only [h] at ee
    · rw [Ordinal.sub_eq_zero_iff_le.2]
      · rfl
      exact le_of_lt (oadd_lt_oadd_1 h₁ ee)
    · change e₁ = e₂ at ee
      subst e₂
      dsimp only
      cases mn : (n₁ : ℕ) - n₂ <;> dsimp only
      · by_cases en : n₁ = n₂
        · simpa [en]
        · simp only [en, ite_false]
          exact
            (Ordinal.sub_eq_zero_iff_le.2 <|
                le_of_lt <|
                  oadd_lt_oadd_2 h₁ <|
                    lt_of_le_of_ne (tsub_eq_zero_iff_le.1 mn) (mt PNat.eq en)).symm
      · simp [Nat.succPNat, -Nat.cast_succ]
        rw [(tsub_eq_iff_eq_add_of_le <| le_of_lt <| Nat.lt_of_sub_eq_succ mn).1 mn, add_comm,
          Nat.cast_add, mul_add, add_assoc, add_sub_add_cancel]
        refine'
          (Ordinal.sub_eq_of_add_eq <|
              add_absorp h₂.snd'.repr_lt <| le_trans _ (le_add_right _ _)).symm
        simpa using mul_le_mul_left' (nat_cast_le.2 <| Nat.succ_pos _) _
    · exact
        (Ordinal.sub_eq_of_add_eq <|
            add_absorp (h₂.below_of_lt ee).repr_lt <| omega_le_oadd _ _ _).symm
#align onote.repr_sub ONote.repr_sub

/-- Multiplication of ordinal notations (correct only for normal input) -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/SetTheory/Notation/Variant1bff2a5e6a91037db6db279fa420f9657f8b1440f19b36798acf926ef330e922.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Notation/Variant1bff2a5e6a91037db6db279fa420f9657f8b1440f19b36798acf926ef330e922.lean#L530).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `662748c0fa51663685efded4a2e2a9ee5ad80563` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
