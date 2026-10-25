# exists_min_bad_of_exists_bad

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0475c0cb-51f6-6079-9af6-85cad3169f85",
  "kind": "theorem",
  "lexical_name": "exists_min_bad_of_exists_bad",
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
  "slug": "exists-min-bad-of-exists-bad--191eaa8c875c59377dd927ad",
  "source": {
    "blob": "4d94bed32a93845a57df4166f151444ff3745a8b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 768,
    "line": 746,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/WellFoundedSet/Variant28fd54095da7d18982b44b9833bbad772b7ec0299a2215cb29238f5e85dd4d19.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:191eaa8c875c59377dd927ad52fcd6cdc3743358c6f396579af6944f529bc8c1",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/WellFoundedSet/Variant28fd54095da7d18982b44b9833bbad772b7ec0299a2215cb29238f5e85dd4d19.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0475c0cb-51f6-6079-9af6-85cad3169f85`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 746–768.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_min_bad_of_exists_bad (r : α → α → Prop) (rk : α → ℕ) (s : Set α) :
    (∃ f, IsBadSeq r s f) → ∃ f, IsBadSeq r s f ∧ ∀ n, IsMinBadSeq r rk s n f := by
  rintro ⟨f0, hf0 : IsBadSeq r s f0⟩
  let fs : ∀ n : ℕ, { f : ℕ → α // IsBadSeq r s f ∧ IsMinBadSeq r rk s n f } := by
    refine' Nat.rec _ fun n fn => _
    · exact ⟨(minBadSeqOfBadSeq r rk s 0 f0 hf0).1, (minBadSeqOfBadSeq r rk s 0 f0 hf0).2.2⟩
    · exact ⟨(minBadSeqOfBadSeq r rk s (n + 1) fn.1 fn.2.1).1,
        (minBadSeqOfBadSeq r rk s (n + 1) fn.1 fn.2.1).2.2⟩
  have h : ∀ m n, m ≤ n → (fs m).1 m = (fs n).1 m := fun m n mn => by
    obtain ⟨k, rfl⟩ := exists_add_of_le mn; clear mn
    induction' k with k ih
    · rfl
    · rw [ih, (minBadSeqOfBadSeq r rk s (m + k + 1) (fs (m + k)).1 (fs (m + k)).2.1).2.1 m
        (Nat.lt_succ_iff.2 (Nat.add_le_add_left k.zero_le m))]
      rfl
  refine ⟨fun n => (fs n).1 n, ⟨fun n => (fs n).2.1.1 n, fun m n mn => ?_⟩, fun n g hg1 hg2 => ?_⟩
  · dsimp
    rw [h m n mn.le]
    exact (fs n).2.1.2 m n mn
  · refine (fs n).2.2 g (fun m mn => ?_) hg2
    rw [← h m n mn.le, ← hg1 m mn]
#align set.partially_well_ordered_on.exists_min_bad_of_exists_bad Set.PartiallyWellOrderedOn.exists_min_bad_of_exists_bad

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/WellFoundedSet/Variant28fd54095da7d18982b44b9833bbad772b7ec0299a2215cb29238f5e85dd4d19.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/WellFoundedSet/Variant28fd54095da7d18982b44b9833bbad772b7ec0299a2215cb29238f5e85dd4d19.lean#L746).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4d94bed32a93845a57df4166f151444ff3745a8b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
