# head_stack_ok

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2482dc2e-7a88-8021-fced-b69191030687",
  "kind": "theorem",
  "lexical_name": "head_stack_ok",
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
  "slug": "head-stack-ok--39e944a7ab1d6d3dc9c40b7c",
  "source": {
    "blob": "fb06a8d1d2fdf7f1b719bedcdedd992ecff2c380",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 734,
    "line": 701,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/Computability/TMToPartrec/Variantaa7c1d3d568b47b03f0be9c3f592931e445c893a416f773b8bb177d593f14515.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:39e944a7ab1d6d3dc9c40b7c83303a023ab8ceb803370f69a928df0a552a041a",
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

Occurrence: `result:2482dc2e-7a88-8021-fced-b69191030687`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 701–734.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem head_stack_ok {q s L₁ L₂ L₃} :
    Reaches₁ (TM2.step tr)
      ⟨some (head stack q), s, K'.elim (trList L₁) [] [] (trList L₂ ++ Γ'.consₗ :: L₃)⟩
      ⟨some q, none, K'.elim (trList (L₂.headI :: L₁)) [] [] L₃⟩ := by
  rcases L₂ with - | ⟨a, L₂⟩
  · refine
      TransGen.trans
        (move_ok (by decide)
          (splitAtPred_eq _ _ [] (some Γ'.consₗ) L₃ (by rintro _ ⟨⟩) ⟨rfl, rfl⟩))
        (TransGen.head rfl (TransGen.head rfl ?_))
    rw [tr]
    simp only [TM2.step, Option.mem_def, TM2.stepAux, ite_true, id_eq, trList, List.nil_append,
      elim_update_stack, elim_rev, List.reverseAux_nil, elim_update_rev, Function.update_self,
      List.headI_nil, trNat_default]
    convert unrev_ok using 2
    simp
  · refine
      TransGen.trans
        (move_ok (by decide)
          (splitAtPred_eq _ _ (trNat a) (some Γ'.cons) (trList L₂ ++ Γ'.consₗ :: L₃)
            (trNat_natEnd _) ⟨rfl, by simp⟩))
        (TransGen.head rfl (TransGen.head rfl ?_))
    simp only [TM2.step, Option.mem_def, TM2.stepAux, ite_false, trList, List.append_assoc,
      List.cons_append, elim_update_stack, elim_rev, elim_update_rev, Function.update_self,
      List.headI_cons]
    refine
      TransGen.trans
        (clear_ok
          (splitAtPred_eq _ _ (trList L₂) (some Γ'.consₗ) L₃
            (fun x h => Bool.decide_false (trList_ne_consₗ _ _ h)) ⟨rfl, by simp⟩))
        ?_
    convert unrev_ok using 2
    simp [List.reverseAux_eq]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/Computability/TMToPartrec/Variantaa7c1d3d568b47b03f0be9c3f592931e445c893a416f773b8bb177d593f14515.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/Computability/TMToPartrec/Variantaa7c1d3d568b47b03f0be9c3f592931e445c893a416f773b8bb177d593f14515.lean#L701).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fb06a8d1d2fdf7f1b719bedcdedd992ecff2c380` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
