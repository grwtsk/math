# head_main_ok

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8d04b236-e530-f4a1-f3de-6d74ea64f3ca",
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
  "slug": "head-main-ok--90e503cffb7a64691b20fb12",
  "source": {
    "blob": "183ab7fd7953d1da639e2f38b8533f488f779d18",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1500,
    "line": 1485,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/Computability/TMToPartrec/Variant43be5a6b78427847039c756d3585f1ebea0c5e3b7317cd25fda9b7fd73f7dc47.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:90e503cffb7a64691b20fb122a8710c9baf7d3b5ea76476ca28a7b0a718f55a5",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/Computability/TMToPartrec/Variant43be5a6b78427847039c756d3585f1ebea0c5e3b7317cd25fda9b7fd73f7dc47.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8d04b236-e530-f4a1-f3de-6d74ea64f3ca`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1485–1500.

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

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/Computability/TMToPartrec/Variant43be5a6b78427847039c756d3585f1ebea0c5e3b7317cd25fda9b7fd73f7dc47.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/Computability/TMToPartrec/Variant43be5a6b78427847039c756d3585f1ebea0c5e3b7317cd25fda9b7fd73f7dc47.lean#L1485).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `183ab7fd7953d1da639e2f38b8533f488f779d18` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
