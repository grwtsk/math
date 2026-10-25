# trNormal_respects

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ed9568f1-d4d1-b14f-c146-f7507cf7e630",
  "kind": "theorem",
  "lexical_name": "trNormal_respects",
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
  "slug": "trnormal-respects--5e3f5a9a73f3edf6c2a8fe8a",
  "source": {
    "blob": "fb06a8d1d2fdf7f1b719bedcdedd992ecff2c380",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 847,
    "line": 813,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/Computability/TMToPartrec/Variantaa7c1d3d568b47b03f0be9c3f592931e445c893a416f773b8bb177d593f14515.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5e3f5a9a73f3edf6c2a8fe8aa2487c380996c192e0efe59ead8f64fdc1087a45",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/Computability/TMToPartrec/Variantaa7c1d3d568b47b03f0be9c3f592931e445c893a416f773b8bb177d593f14515.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ed9568f1-d4d1-b14f-c146-f7507cf7e630`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 813–847.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem trNormal_respects (c k v s) :
    ∃ b₂,
      TrCfg (stepNormal c k v) b₂ ∧
        Reaches₁ (TM2.step tr)
          ⟨some (trNormal c (trCont k)), s, K'.elim (trList v) [] [] (trContStack k)⟩ b₂ := by
  induction c generalizing k v s with
  | zero' => refine ⟨_, ⟨s, rfl⟩, TransGen.single ?_⟩; simp
  | succ => refine ⟨_, ⟨none, rfl⟩, head_main_ok.trans succ_ok⟩
  | tail =>
    let o : Option Γ' := List.casesOn v none fun _ _ => some Γ'.cons
    refine ⟨_, ⟨o, rfl⟩, ?_⟩; convert clear_ok _ using 2
    · simp; rfl
    swap
    refine splitAtPred_eq _ _ (trNat v.headI) _ _ (trNat_natEnd _) ?_
    cases v <;> simp [o]
  | cons f fs IHf _ =>
    obtain ⟨c, h₁, h₂⟩ := IHf (Cont.cons₁ fs v k) v none
    refine ⟨c, h₁, TransGen.head rfl <| (move_ok (by decide) (splitAtPred_false _)).trans ?_⟩
    simp only [TM2.step, Option.mem_def, elim_stack, elim_update_stack, elim_update_main, ne_eq,
      Function.update_of_ne, elim_main, elim_rev, elim_update_rev]
    refine (copy_ok _ none [] (trList v).reverse _ _).trans ?_
    convert h₂ using 2
    simp [List.reverseAux_eq, trContStack]
  | comp f _ _ IHg => exact IHg (Cont.comp f k) v s
  | case f g IHf IHg =>
    rw [stepNormal]
    simp only
    obtain ⟨s', h⟩ := pred_ok _ _ s v _ _
    revert h; rcases v.headI with - | n <;> intro h
    · obtain ⟨c, h₁, h₂⟩ := IHf k _ s'
      exact ⟨_, h₁, h.trans h₂⟩
    · obtain ⟨c, h₁, h₂⟩ := IHg k _ s'
      exact ⟨_, h₁, h.trans h₂⟩
  | fix f IH => apply IH

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/Computability/TMToPartrec/Variantaa7c1d3d568b47b03f0be9c3f592931e445c893a416f773b8bb177d593f14515.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/Computability/TMToPartrec/Variantaa7c1d3d568b47b03f0be9c3f592931e445c893a416f773b8bb177d593f14515.lean#L813).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fb06a8d1d2fdf7f1b719bedcdedd992ecff2c380` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
