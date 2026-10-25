# right_inverse_aux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d07c52c7-4b87-bcbf-d708-3d79b28bbf97",
  "kind": "theorem",
  "lexical_name": "right_inverse_aux",
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
  "slug": "right-inverse-aux--02d523d9feefd53d92bdb7e3",
  "source": {
    "blob": "1bff5c6a5a4b3afa8cb8c4d6c9e5038e90fa01b8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 300,
    "line": 276,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Denumerable/Variantc8159693cf88e6b5fe9b4807a585c4642f1fc5845e7e1a7a14fd8a4887ddff0e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:02d523d9feefd53d92bdb7e3cb2773944a76974216a3f908cd17b9d6a6a62dae",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Denumerable/Variantc8159693cf88e6b5fe9b4807a585c4642f1fc5845e7e1a7a14fd8a4887ddff0e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d07c52c7-4b87-bcbf-d708-3d79b28bbf97`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 276–300.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem right_inverse_aux : ∀ n, toFunAux (ofNat s n) = n
  | 0 => by
    rw [toFunAux_eq, card_eq_zero, eq_empty_iff_forall_notMem]
    rintro n hn
    rw [mem_filter, ofNat, mem_range] at hn
    exact bot_le.not_lt (show (⟨n, hn.2⟩ : s) < ⊥ from hn.1)
  | n + 1 => by
    have ih : toFunAux (ofNat s n) = n := right_inverse_aux n
    have h₁ : (ofNat s n : ℕ) ∉ {x ∈ range (ofNat s n) | x ∈ s} := by simp
    have h₂ : {x ∈ range (succ (ofNat s n)) | x ∈ s} =
        insert ↑(ofNat s n) {x ∈ range (ofNat s n) | x ∈ s} := by
      simp only [Finset.ext_iff, mem_insert, mem_range, mem_filter]
      exact fun m =>
        ⟨fun h => by
          simp only [h.2, and_true]
          exact Or.symm (lt_or_eq_of_le ((@lt_succ_iff_le _ _ _ ⟨m, h.2⟩ _).1 h.1)),
         fun h =>
          h.elim (fun h => h.symm ▸ ⟨lt_succ_self _, (ofNat s n).prop⟩) fun h =>
            ⟨h.1.trans (lt_succ_self _), h.2⟩⟩
    simp only [toFunAux_eq, ofNat, range_succ] at ih ⊢
    conv =>
      rhs
      rw [← ih, ← card_insert_of_notMem h₁, ← h₂]

/-- Any infinite set of naturals is denumerable. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Denumerable/Variantc8159693cf88e6b5fe9b4807a585c4642f1fc5845e7e1a7a14fd8a4887ddff0e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Denumerable/Variantc8159693cf88e6b5fe9b4807a585c4642f1fc5845e7e1a7a14fd8a4887ddff0e.lean#L276).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1bff5c6a5a4b3afa8cb8c4d6c9e5038e90fa01b8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
