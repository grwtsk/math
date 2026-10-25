# stepAux_read

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "30890dff70be24bc3f7b22ac2b7a36e25d3765ab",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1819,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/68/686729c29c3bad58378660d8db3b4bd245ee86e09f30cc0f8886f3f50049b7ab.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:db0ec3ea-45b1-5940-278a-d512bb260b22",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:58221972-96b3-ac03-09b5-337da851dc39",
  "kind": "theorem",
  "lexical_name": "stepAux_read",
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
  "slug": "stepaux-read--84ab3c6c28877881ba864d25",
  "source": {
    "blob": "30890dff70be24bc3f7b22ac2b7a36e25d3765ab",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1849,
    "line": 1819,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/Computability/TuringMachine/Variant686729c29c3bad58378660d8db3b4bd245ee86e09f30cc0f8886f3f50049b7ab.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:84ab3c6c28877881ba864d25dbcba93ed2b1a18a3d5154c75af279a8584ca2e3",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/Computability/TuringMachine/Variant686729c29c3bad58378660d8db3b4bd245ee86e09f30cc0f8886f3f50049b7ab.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:58221972-96b3-ac03-09b5-337da851dc39`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1819–1849.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem stepAux_read (f : Γ → Stmt'₁) (v : σ) (L R : ListBlank Γ) :
    stepAux (read dec f) v (trTape' enc0 L R) = stepAux (f R.head) v (trTape' enc0 L R) := by
  suffices ∀ f, stepAux (readAux n f) v (trTape' enc0 L R) =
      stepAux (f (enc R.head)) v (trTape' enc0 (L.cons R.head) R.tail) by
    rw [read, this, stepAux_move, encdec, trTape'_move_left enc0]
    simp only [ListBlank.head_cons, ListBlank.cons_head_tail, ListBlank.tail_cons]
  obtain ⟨a, R, rfl⟩ := R.exists_cons
  simp only [ListBlank.head_cons, ListBlank.tail_cons, trTape', ListBlank.cons_bind,
    ListBlank.append_assoc]
  suffices ∀ i f L' R' l₁ l₂ h,
      stepAux (readAux i f) v (Tape.mk' (ListBlank.append l₁ L') (ListBlank.append l₂ R')) =
      stepAux (f ⟨l₂, h⟩) v (Tape.mk' (ListBlank.append (l₂.reverseAux l₁) L') R') by
    intro f
    -- Porting note: Here was `change`.
    exact this n f (L.bind (fun x => (enc x).1.reverse) _)
      (R.bind (fun x => (enc x).1) _) [] _ (enc a).2
  clear f L a R
  intro i f L' R' l₁ l₂ _
  subst i
  induction' l₂ with a l₂ IH generalizing l₁
  · rfl
  trans
    stepAux (readAux l₂.length fun v ↦ f (a ::ᵥ v)) v
      (Tape.mk' ((L'.append l₁).cons a) (R'.append l₂))
  · dsimp [readAux, stepAux]
    simp
    cases a <;> rfl
  rw [← ListBlank.append, IH]
  rfl
#align turing.TM1to1.step_aux_read Turing.TM1to1.stepAux_read

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/Computability/TuringMachine/Variant686729c29c3bad58378660d8db3b4bd245ee86e09f30cc0f8886f3f50049b7ab.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/Computability/TuringMachine/Variant686729c29c3bad58378660d8db3b4bd245ee86e09f30cc0f8886f3f50049b7ab.lean#L1819).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `30890dff70be24bc3f7b22ac2b7a36e25d3765ab` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
