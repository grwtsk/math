# equiv_nim_grundyValue

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "fecfccd08b5eab438892c1c87bcb9740fbdc0d58",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 271,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/74/74197ad68821fac3c54e83814d6c5f94d37160c410ad1e700a1f295b73093b70.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8cd81c3f-df55-8a45-ac02-cde279bb82c3",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a7cbf50b-6fe3-5b30-69ac-9e044beb07ab",
  "kind": "theorem",
  "lexical_name": "equiv_nim_grundyValue",
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
  "slug": "equiv-nim-grundyvalue--ac69ba6ad78adeeafbaf4d2c",
  "source": {
    "blob": "fecfccd08b5eab438892c1c87bcb9740fbdc0d58",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 309,
    "line": 271,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Nim/Variant74197ad68821fac3c54e83814d6c5f94d37160c410ad1e700a1f295b73093b70.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ac69ba6ad78adeeafbaf4d2c8c7ae7f5223249cf2e655152490621cb0830f200",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Nim/Variant74197ad68821fac3c54e83814d6c5f94d37160c410ad1e700a1f295b73093b70.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a7cbf50b-6fe3-5b30-69ac-9e044beb07ab`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 271–309.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem equiv_nim_grundyValue : ∀ (G : PGame.{u}) [G.Impartial], G ≈ nim (grundyValue G)
  | G => by
    rw [Impartial.equiv_iff_add_equiv_zero, ← Impartial.forall_leftMoves_fuzzy_iff_equiv_zero]
    intro i
    apply leftMoves_add_cases i
    · intro i₁
      rw [add_moveLeft_inl]
      apply
        (fuzzy_congr_left (add_congr_left (Equiv.symm (equiv_nim_grundyValue (G.moveLeft i₁))))).1
      rw [nim_add_fuzzy_zero_iff]
      intro heq
      rw [eq_comm, grundyValue_eq_mex_left G] at heq
      -- Porting note: added universe annotation, argument
      have h := Ordinal.ne_mex.{u, u} (fun i ↦ grundyValue (moveLeft G i))
      rw [heq] at h
      exact (h i₁).irrefl
    · intro i₂
      rw [add_moveLeft_inr, ← Impartial.exists_left_move_equiv_iff_fuzzy_zero]
      revert i₂
      rw [nim_def]
      intro i₂
      have h' :
        ∃ i : G.LeftMoves,
          grundyValue (G.moveLeft i) = Ordinal.typein (Quotient.out (grundyValue G)).r i₂ := by
        revert i₂
        rw [grundyValue_eq_mex_left]
        intro i₂
        have hnotin : _ ∉ _ := fun hin =>
          (le_not_le_of_lt (Ordinal.typein_lt_self i₂)).2 (csInf_le' hin)
        simpa using hnotin
      cases' h' with i hi
      use toLeftMovesAdd (Sum.inl i)
      rw [add_moveLeft_inl, moveLeft_mk]
      apply Equiv.trans (add_congr_left (equiv_nim_grundyValue (G.moveLeft i)))
      simpa only [hi] using Impartial.add_self (nim (grundyValue (G.moveLeft i)))
termination_by equiv_nim_grundyValue G _ => G
decreasing_by pgame_wf_tac
#align pgame.equiv_nim_grundy_value SetTheory.PGame.equiv_nim_grundyValue

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Nim/Variant74197ad68821fac3c54e83814d6c5f94d37160c410ad1e700a1f295b73093b70.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Nim/Variant74197ad68821fac3c54e83814d6c5f94d37160c410ad1e700a1f295b73093b70.lean#L271).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fecfccd08b5eab438892c1c87bcb9740fbdc0d58` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
