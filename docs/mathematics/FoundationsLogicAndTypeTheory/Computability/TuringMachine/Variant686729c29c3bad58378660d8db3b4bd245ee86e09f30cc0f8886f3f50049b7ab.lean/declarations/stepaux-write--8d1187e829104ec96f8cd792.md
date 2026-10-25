# stepAux_write

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
      "line": 1798,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/68/686729c29c3bad58378660d8db3b4bd245ee86e09f30cc0f8886f3f50049b7ab.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c7825d6b-35e6-5d11-921f-2d2fdec71373",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6769a0b4-bea4-3efb-06f2-1cddb5d876c9",
  "kind": "theorem",
  "lexical_name": "stepAux_write",
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
  "slug": "stepaux-write--8d1187e829104ec96f8cd792",
  "source": {
    "blob": "30890dff70be24bc3f7b22ac2b7a36e25d3765ab",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1818,
    "line": 1798,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/Computability/TuringMachine/Variant686729c29c3bad58378660d8db3b4bd245ee86e09f30cc0f8886f3f50049b7ab.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8d1187e829104ec96f8cd79245f7dcdf0517121fb41386c4d67a4384f5a7228d",
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

Occurrence: `result:6769a0b4-bea4-3efb-06f2-1cddb5d876c9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1798–1818.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem stepAux_write (q : Stmt'₁) (v : σ) (a b : Γ) (L R : ListBlank Γ) :
    stepAux (write (enc a).toList q) v (trTape' enc0 L (ListBlank.cons b R)) =
      stepAux q v (trTape' enc0 (ListBlank.cons a L) R) := by
  simp only [trTape', ListBlank.cons_bind]
  suffices ∀ {L' R'} (l₁ l₂ l₂' : List Bool) (_ : l₂'.length = l₂.length),
      stepAux (write l₂ q) v (Tape.mk' (ListBlank.append l₁ L') (ListBlank.append l₂' R')) =
      stepAux q v (Tape.mk' (L'.append (List.reverseAux l₂ l₁)) R') by
    refine' this [] _ _ ((enc b).2.trans (enc a).2.symm)
  clear a b L R
  intro L' R' l₁ l₂ l₂' e
  induction' l₂ with a l₂ IH generalizing l₁ l₂'
  · cases List.length_eq_zero.1 e
    rfl
  cases' l₂' with b l₂' <;> simp only [List.length_nil, List.length_cons, Nat.succ_inj'] at e
  rw [List.reverseAux, ← IH (a :: l₁) l₂' e]
  simp only [stepAux, ListBlank.append, Tape.write_mk', Tape.move_right_mk', ListBlank.head_cons,
    ListBlank.tail_cons]
#align turing.TM1to1.step_aux_write Turing.TM1to1.stepAux_write

variable (encdec : ∀ a, dec (enc a) = a)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/Computability/TuringMachine/Variant686729c29c3bad58378660d8db3b4bd245ee86e09f30cc0f8886f3f50049b7ab.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/Computability/TuringMachine/Variant686729c29c3bad58378660d8db3b4bd245ee86e09f30cc0f8886f3f50049b7ab.lean#L1798).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `30890dff70be24bc3f7b22ac2b7a36e25d3765ab` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
