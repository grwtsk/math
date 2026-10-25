# tr_ret_respects

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "45e2e1c1402ad68f5565d835dd0262a54dd39694",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 840,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/20/2033002f59415d9e110ddd53adbd49c465eb1aac926df869ff1a8cccfe7bc5c0.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ed8e93f9-8a0b-c21c-36f8-6673d2448d08",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b4c5df86-5178-e23b-081c-6561876a710d",
  "kind": "theorem",
  "lexical_name": "tr_ret_respects",
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
  "slug": "tr-ret-respects--57397bd1152e2d9db19610df",
  "source": {
    "blob": "45e2e1c1402ad68f5565d835dd0262a54dd39694",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 893,
    "line": 840,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/Computability/TMToPartrec/Variant2033002f59415d9e110ddd53adbd49c465eb1aac926df869ff1a8cccfe7bc5c0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:57397bd1152e2d9db19610dfe1b312e606e079a91b26fcf875fd3ff5cfd4c5f0",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/Computability/TMToPartrec/Variant2033002f59415d9e110ddd53adbd49c465eb1aac926df869ff1a8cccfe7bc5c0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b4c5df86-5178-e23b-081c-6561876a710d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 840–893.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tr_ret_respects (k v s) : ∃ b₂,
    TrCfg (stepRet k v) b₂ ∧
      Reaches₁ (TM2.step tr)
        ⟨some (Λ'.ret (trCont k)), s, K'.elim (trList v) [] [] (trContStack k)⟩ b₂ := by
  induction k generalizing v s with
  | halt => exact ⟨_, rfl, TransGen.single rfl⟩
  | cons₁ fs as k _ =>
    obtain ⟨s', h₁, h₂⟩ := trNormal_respects fs (Cont.cons₂ v k) as none
    refine ⟨s', h₁, TransGen.head rfl ?_⟩; simp
    refine (move₂_ok (by decide) ?_ (splitAtPred_false _)).trans ?_; · rfl
    simp only [TM2.step, Option.mem_def, Option.elim, id_eq, elim_update_main, elim_main, elim_aux,
      List.append_nil, elim_update_aux]
    refine (move₂_ok (L₁ := ?_) (o := ?_) (L₂ := ?_) (by decide) rfl ?_).trans ?_
    pick_goal 4
    · exact splitAtPred_eq _ _ _ (some Γ'.consₗ) _
        (fun x h => Bool.decide_false (trList_ne_consₗ _ _ h)) ⟨rfl, rfl⟩
    refine (move₂_ok (by decide) ?_ (splitAtPred_false _)).trans ?_; · rfl
    simp only [TM2.step, Option.mem_def, Option.elim, elim_update_stack, elim_main,
      List.append_nil, elim_update_main, id_eq, elim_update_aux, ne_eq, Function.update_of_ne,
      elim_aux, elim_stack]
    exact h₂
  | cons₂ ns k IH =>
    obtain ⟨c, h₁, h₂⟩ := IH (ns.headI :: v) none
    exact ⟨c, h₁, TransGen.head rfl <| head_stack_ok.trans h₂⟩
  | comp f k _ =>
    obtain ⟨s', h₁, h₂⟩ := trNormal_respects f k v s
    exact ⟨_, h₁, TransGen.head rfl h₂⟩
  | fix f k IH =>
    rw [stepRet]
    have :
      if v.headI = 0 then natEnd (trList v).head?.iget = true ∧ (trList v).tail = trList v.tail
      else
        natEnd (trList v).head?.iget = false ∧
          (trList v).tail = (trNat v.headI).tail ++ Γ'.cons :: trList v.tail := by
      obtain - | n := v
      · exact ⟨rfl, rfl⟩
      rcases n with - | n
      · simp
      rw [trList, List.headI, trNat, Nat.cast_succ, Num.add_one, Num.succ, List.tail]
      cases (n : Num).succ' <;> exact ⟨rfl, rfl⟩
    by_cases h : v.headI = 0 <;> simp only [h, ite_true, ite_false] at this ⊢
    · obtain ⟨c, h₁, h₂⟩ := IH v.tail (trList v).head?
      refine ⟨c, h₁, TransGen.head rfl ?_⟩
      rw [trCont, tr]; simp only [pop', TM2.stepAux, elim_main, this, elim_update_main]
      exact h₂
    · obtain ⟨s', h₁, h₂⟩ := trNormal_respects f (Cont.fix f k) v.tail (some Γ'.cons)
      refine ⟨_, h₁, TransGen.head rfl <| TransGen.trans ?_ h₂⟩
      rw [trCont, tr]; simp only [pop', TM2.stepAux, elim_main, this.1]
      convert clear_ok (splitAtPred_eq _ _ (trNat v.headI).tail (some Γ'.cons) _ _ _) using 2
      · simp
        convert rfl
      · exact fun x h => trNat_natEnd _ _ (List.tail_subset _ h)
      · exact ⟨rfl, this.2⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/Computability/TMToPartrec/Variant2033002f59415d9e110ddd53adbd49c465eb1aac926df869ff1a8cccfe7bc5c0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/Computability/TMToPartrec/Variant2033002f59415d9e110ddd53adbd49c465eb1aac926df869ff1a8cccfe7bc5c0.lean#L840).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `45e2e1c1402ad68f5565d835dd0262a54dd39694` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
