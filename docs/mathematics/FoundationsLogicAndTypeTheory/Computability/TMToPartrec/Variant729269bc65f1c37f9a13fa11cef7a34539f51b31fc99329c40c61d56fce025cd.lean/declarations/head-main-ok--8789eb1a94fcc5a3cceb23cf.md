# head_main_ok

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5a6689a642cb737eed9cc443ce79432f68557e6a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1477,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/72/729269bc65f1c37f9a13fa11cef7a34539f51b31fc99329c40c61d56fce025cd.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:331bf180-f13c-848f-6375-bd4906622f89",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a2e57d31-e87f-6048-007d-e3aa501c1fb8",
  "kind": "theorem",
  "lexical_name": "head_main_ok",
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
  "slug": "head-main-ok--8789eb1a94fcc5a3cceb23cf",
  "source": {
    "blob": "5a6689a642cb737eed9cc443ce79432f68557e6a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1492,
    "line": 1477,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/Computability/TMToPartrec/Variant729269bc65f1c37f9a13fa11cef7a34539f51b31fc99329c40c61d56fce025cd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8789eb1a94fcc5a3cceb23cfbe41f1be6754075a6c00e32e2d879761be7a3058",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/Computability/TMToPartrec/Variant729269bc65f1c37f9a13fa11cef7a34539f51b31fc99329c40c61d56fce025cd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a2e57d31-e87f-6048-007d-e3aa501c1fb8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1477–1492.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem head_main_ok {q s L} {c d : List Γ'} :
    Reaches₁ (TM2.step tr) ⟨some (head main q), s, K'.elim (trList L) [] c d⟩
      ⟨some q, none, K'.elim (trList [L.headI]) [] c d⟩ := by
  let o : Option Γ' := List.casesOn L none fun _ _ => some Γ'.cons
  refine'
    (move_ok (by decide)
          (splitAtPred_eq _ _ (trNat L.headI) o (trList L.tail) (trNat_natEnd _) _)).trans
      (TransGen.head rfl (TransGen.head rfl _))
  · cases L <;> simp
  simp
  rw [if_neg (show o ≠ some Γ'.consₗ by cases L <;> simp)]
  refine' (clear_ok (splitAtPred_eq _ _ _ none [] _ ⟨rfl, rfl⟩)).trans _
  · exact fun x h => Bool.decide_false (trList_ne_consₗ _ _ h)
  convert unrev_ok using 2; simp [List.reverseAux_eq]
#align turing.partrec_to_TM2.head_main_ok Turing.PartrecToTM2.head_main_ok

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/Computability/TMToPartrec/Variant729269bc65f1c37f9a13fa11cef7a34539f51b31fc99329c40c61d56fce025cd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/Computability/TMToPartrec/Variant729269bc65f1c37f9a13fa11cef7a34539f51b31fc99329c40c61d56fce025cd.lean#L1477).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5a6689a642cb737eed9cc443ce79432f68557e6a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
