# reduce.not

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a00d3e82087a4f14eece8b32b9c6fbdb7cb8c545",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1151,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/60/603ca58b17744ea5f37776a5fb98911bbe14fcb57387ce259ae100a152db33ea.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3d9bb2e3-6360-7b2c-1c1e-5ae0ce30b11c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:5a268cd7-956c-694d-cef1-14a751ea10d6",
  "kind": "theorem",
  "lexical_name": "reduce.not",
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
  "slug": "reduce-not--5defa93ce485add1f1b94660",
  "source": {
    "blob": "a00d3e82087a4f14eece8b32b9c6fbdb7cb8c545",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1189,
    "line": 1151,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FreeGroup/Variant603ca58b17744ea5f37776a5fb98911bbe14fcb57387ce259ae100a152db33ea.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5defa93ce485add1f1b9466043ec06fe5627e672d963123fe18978e5c0b49986",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FreeGroup/Variant603ca58b17744ea5f37776a5fb98911bbe14fcb57387ce259ae100a152db33ea.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5a268cd7-956c-694d-cef1-14a751ea10d6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1151–1189.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem reduce.not {p : Prop} : ∀ {L₁ L₂ L₃ : List (α × Bool)} {x : α} {b},
  ((reduce L₁) = L₂ ++ ((x,b)::(x ,!b)::L₃)) → p
  | [], L2 ,L3, _, _ => fun h => by cases L2 <;> injections
  | (x, b)::L1, L2, L3, x', b' => by
      dsimp
      cases r : reduce L1 with
      | nil =>
        dsimp
        intro h
        exfalso
        have := congr_arg List.length h
        simp [List.length] at this
        rw [add_comm, add_assoc, add_assoc, add_comm, <-add_assoc] at this
        simp [Nat.one_eq_succ_zero, Nat.succ_add] at this
        -- Porting note: needed to add this step in #3414.
        -- This is caused by https://github.com/leanprover/lean4/pull/2146.
        -- Nevertheless the proof could be cleaned up.
        cases this
      | cons hd tail =>
        cases' hd with y c
        dsimp only
        split_ifs with h <;> intro H
        · rw [ H ] at r
          exact @reduce.not _ L1 ((y, c)::L2) L3 x' b' r
        · rcases L2 with ( _ | ⟨ a , L2 ⟩ )
          · injections
            subst_vars
            simp at h
          · refine' @reduce.not _ L1 L2 L3 x' b' _
            injection H with _ H
            rw [ r , H ]
            rfl
#align free_group.reduce.not FreeGroup.reduce.not
#align free_add_group.reduce.not FreeAddGroup.reduce.not

/-- The second theorem that characterises the function `reduce`: the maximal reduction of a word
only reduces to itself. -/
@[to_additive "The second theorem that characterises the function `reduce`: the maximal reduction of
  a word only reduces to itself."]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FreeGroup/Variant603ca58b17744ea5f37776a5fb98911bbe14fcb57387ce259ae100a152db33ea.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FreeGroup/Variant603ca58b17744ea5f37776a5fb98911bbe14fcb57387ce259ae100a152db33ea.lean#L1151).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a00d3e82087a4f14eece8b32b9c6fbdb7cb8c545` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
