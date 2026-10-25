# tr_respects_aux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8107e333e24b47c8510d969a2fa9c22e4528d5ab",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 652,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/0e/0e02266402aef8516bf1050c3f8a228cafe6b2597de052cc05ec1cf1290f272e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:39a4b101-0e29-19fb-8da4-a49297691965",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:36e04d79-cf81-3904-053f-fe352ac5b3fb",
  "kind": "theorem",
  "lexical_name": "tr_respects_aux",
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
  "slug": "tr-respects-aux--1355eb2ddff9a9737e465c99",
  "source": {
    "blob": "8107e333e24b47c8510d969a2fa9c22e4528d5ab",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 674,
    "line": 652,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/Computability/TuringMachine/Variant0e02266402aef8516bf1050c3f8a228cafe6b2597de052cc05ec1cf1290f272e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1355eb2ddff9a9737e465c9950e3f30e338c31903d3ba4efd259acdd6b893ec6",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/Computability/TuringMachine/Variant0e02266402aef8516bf1050c3f8a228cafe6b2597de052cc05ec1cf1290f272e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:36e04d79-cf81-3904-053f-fe352ac5b3fb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 652–674.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tr_respects_aux {q v T k} {S : ∀ k, List (Γ k)}
    (hT : ∀ k, ListBlank.map (proj k) T = ListBlank.mk ((S k).map some).reverse)
    (o : StAct K Γ σ k)
    (IH : ∀ {v : σ} {S : ∀ k : K, List (Γ k)} {T : ListBlank (∀ k, Option (Γ k))},
      (∀ k, ListBlank.map (proj k) T = ListBlank.mk ((S k).map some).reverse) →
      ∃ b, TrCfg (TM2.stepAux q v S) b ∧
        Reaches (TM1.step (tr M)) (TM1.stepAux (trNormal q) v (Tape.mk' ∅ (addBottom T))) b) :
    ∃ b, TrCfg (TM2.stepAux (stRun o q) v S) b ∧ Reaches (TM1.step (tr M))
      (TM1.stepAux (trNormal (stRun o q)) v (Tape.mk' ∅ (addBottom T))) b := by
  simp only [trNormal_run, step_run]
  have hgo := tr_respects_aux₁ M o q v (hT k) _ le_rfl
  obtain ⟨T', hT', hrun⟩ := tr_respects_aux₂ (Λ := Λ) hT o
  have := hgo.tail' rfl
  rw [tr, TM1.stepAux, Tape.move_right_n_head, Tape.mk'_nth_nat, addBottom_nth_snd,
    stk_nth_val _ (hT k), List.getElem?_eq_none (le_of_eq List.length_reverse),
    Option.isNone, cond, hrun, TM1.stepAux] at this
  obtain ⟨c, gc, rc⟩ := IH hT'
  refine ⟨c, gc, (this.to₀.trans (tr_respects_aux₃ M _) c (TransGen.head' rfl ?_)).to_reflTransGen⟩
  rw [tr, TM1.stepAux, Tape.mk'_head, addBottom_head_fst]
  exact rc

attribute [local simp] Respects TM2.step TM2.stepAux trNormal

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/Computability/TuringMachine/Variant0e02266402aef8516bf1050c3f8a228cafe6b2597de052cc05ec1cf1290f272e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/Computability/TuringMachine/Variant0e02266402aef8516bf1050c3f8a228cafe6b2597de052cc05ec1cf1290f272e.lean#L652).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8107e333e24b47c8510d969a2fa9c22e4528d5ab` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
