# ind_hyp_suf

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7b5e7576-e45e-ee5f-0261-1a45c90ee866",
  "kind": "theorem",
  "lexical_name": "ind_hyp_suf",
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
  "slug": "ind-hyp-suf--d04a79648c2a34cdbc707721",
  "source": {
    "blob": "c932cdb35f56fe593ecec2cc48ea4784c0885c88",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 332,
    "line": 305,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DecisionSuf/Variant6b58f9846651a260f560c04dd552a14f42493448dea45b99d5fb0635ef16682b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d04a79648c2a34cdbc707721bd0d6dd1921718d10f1d2e726cc797d4098c8628",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DecisionSuf/Variant6b58f9846651a260f560c04dd552a14f42493448dea45b99d5fb0635ef16682b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7b5e7576-e45e-ee5f-0261-1a45c90ee866`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 305–332.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ind_hyp_suf (k : ℕ) (ys : Miustr) (hu : count U ys = succ k) (hdec : Decstr ys) :
    ∃ as bs : Miustr,
      ys = M :: as ++ U :: bs ∧
      count U (↑(M :: as) ++ ↑[I, I, I] ++ bs : Miustr) = k ∧
      Decstr (↑(M :: as) ++ ↑[I, I, I] ++ bs) := by
  rcases hdec with ⟨⟨mhead, nmtail⟩, hic⟩
  have : ys ≠ nil := by rintro rfl; contradiction
  rcases exists_cons_of_ne_nil this with ⟨z, zs, rfl⟩
  rcases mhead
  simp only [count_cons, if_false] at hu
  rcases eq_append_cons_U_of_count_U_pos hu with ⟨as, bs, rfl⟩
  use as, bs
  refine ⟨rfl, ?_, ?_, ?_⟩
  · simp_rw [count_append, count_cons, beq_self_eq_true, if_true, add_succ, beq_iff_eq,
      reduceCtorEq, reduceIte, add_zero, succ_inj] at hu
    rwa [count_append, count_append]
  · apply And.intro rfl
    rw [cons_append, cons_append]
    dsimp [tail] at nmtail ⊢
    rw [mem_append] at nmtail
    simpa only [append_assoc, cons_append, nil_append, mem_append, mem_cons, reduceCtorEq,
      false_or] using nmtail
  · rw [count_append, count_append]; rw [← cons_append, count_append] at hic
    simp only [count_cons_self, count_nil, count_cons, if_false, reduceCtorEq] at hic ⊢
    rw [add_right_comm, add_mod_right]; exact hic

/-- `der_of_decstr` states that `Derivable en` follows from `Decstr en`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DecisionSuf/Variant6b58f9846651a260f560c04dd552a14f42493448dea45b99d5fb0635ef16682b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DecisionSuf/Variant6b58f9846651a260f560c04dd552a14f42493448dea45b99d5fb0635ef16682b.lean#L305).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c932cdb35f56fe593ecec2cc48ea4784c0885c88` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
