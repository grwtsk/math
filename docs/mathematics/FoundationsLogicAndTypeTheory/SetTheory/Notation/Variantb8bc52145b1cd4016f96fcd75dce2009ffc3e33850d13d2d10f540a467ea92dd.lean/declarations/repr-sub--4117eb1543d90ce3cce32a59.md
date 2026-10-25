# repr_sub

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "3d332225fdc11aed6ef487342848c15bedf4c12e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 471,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b8/b8bc52145b1cd4016f96fcd75dce2009ffc3e33850d13d2d10f540a467ea92dd.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8a97faaf-3805-f361-5c11-e6a2202a0a93",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0047f99a-c293-4358-872b-8f82165bfe79",
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
  "slug": "repr-sub--4117eb1543d90ce3cce32a59",
  "source": {
    "blob": "3d332225fdc11aed6ef487342848c15bedf4c12e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 506,
    "line": 471,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Notation/Variantb8bc52145b1cd4016f96fcd75dce2009ffc3e33850d13d2d10f540a467ea92dd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4117eb1543d90ce3cce32a59ee25aa2dcf063f3b891058251b7bca54e066f0dd",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/SetTheory/Notation/Variantb8bc52145b1cd4016f96fcd75dce2009ffc3e33850d13d2d10f540a467ea92dd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0047f99a-c293-4358-872b-8f82165bfe79`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 471–506.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem repr_sub : ∀ (o₁ o₂) [NF o₁] [NF o₂], repr (o₁ - o₂) = repr o₁ - repr o₂
  | 0, o, _, h₂ => by cases o <;> exact (Ordinal.zero_sub _).symm
  | oadd _ _ _, 0, _, _ => (Ordinal.sub_zero _).symm
  | oadd e₁ n₁ a₁, oadd e₂ n₂ a₂, h₁, h₂ => by
    have := h₁.snd; have := h₂.snd; have h' := repr_sub a₁ a₂
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
      · simp only [Nat.succPNat, Nat.succ_eq_add_one, repr, PNat.mk_coe, ← succ_eq_add_one]
        rw [(tsub_eq_iff_eq_add_of_le <| le_of_lt <| Nat.lt_of_sub_eq_succ mn).1 mn, add_comm,
          Nat.cast_add, mul_add, add_assoc, add_sub_add_cancel]
        refine
          (Ordinal.sub_eq_of_add_eq <|
              add_of_omega0_opow_le h₂.snd'.repr_lt <| le_trans ?_ le_self_add).symm
        exact Ordinal.le_mul_left _ (Nat.cast_lt.2 <| Nat.succ_pos _)
    · exact
        (Ordinal.sub_eq_of_add_eq <|
            add_of_omega0_opow_le (h₂.below_of_lt ee).repr_lt <| omega0_le_oadd _ _ _).symm

/-- Multiplication of ordinal notations (correct only for normal input) -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/SetTheory/Notation/Variantb8bc52145b1cd4016f96fcd75dce2009ffc3e33850d13d2d10f540a467ea92dd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Notation/Variantb8bc52145b1cd4016f96fcd75dce2009ffc3e33850d13d2d10f540a467ea92dd.lean#L471).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3d332225fdc11aed6ef487342848c15bedf4c12e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
