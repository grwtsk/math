# counted_succ_succ

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d219d98e-a6a8-3735-c485-32f332a71576",
  "kind": "theorem",
  "lexical_name": "counted_succ_succ",
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
  "slug": "counted-succ-succ--4eafcf5d35707fb0ce347a72",
  "source": {
    "blob": "cc46fef5c92f090b04a5a2df57bd3602aa46494b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 169,
    "line": 131,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BallotProblem/Variant24a9196f0bfdb52567298d45618d1bd6963e2299a3005489ed7f90b0341ada8b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4eafcf5d35707fb0ce347a72dd5711da8fafcc3f60e1f6f9761afdf84d25496a",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BallotProblem/Variant24a9196f0bfdb52567298d45618d1bd6963e2299a3005489ed7f90b0341ada8b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d219d98e-a6a8-3735-c485-32f332a71576`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 131–169.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem counted_succ_succ (p q : ℕ) :
    countedSequence (p + 1) (q + 1) =
      List.cons 1 '' countedSequence p (q + 1) ∪ List.cons (-1) '' countedSequence (p + 1) q := by
  ext l
  rw [countedSequence, countedSequence, countedSequence]
  constructor
  · intro hl
    have hlnil := counted_ne_nil_left (Nat.succ_ne_zero p) hl
    obtain ⟨hl₀, hl₁, hl₂⟩ := hl
    obtain hlast | hlast := hl₂ l.head! (List.head!_mem_self hlnil)
    · refine' Or.inl ⟨l.tail, ⟨_, _, _⟩, _⟩
      · rw [List.count_tail l 1 (List.length_pos_of_ne_nil hlnil), hl₀, get0_eq_head! hlnil, hlast,
          if_pos rfl, Nat.add_sub_cancel]
      · rw [List.count_tail l (-1) (List.length_pos_of_ne_nil hlnil), hl₁, get0_eq_head! hlnil,
          hlast, if_neg (by decide), Nat.sub_zero]
      · exact fun x hx => hl₂ x (List.mem_of_mem_tail hx)
      · rw [← hlast, List.cons_head!_tail hlnil]
    · refine' Or.inr ⟨l.tail, ⟨_, _, _⟩, _⟩
      · rw [List.count_tail l 1 (List.length_pos_of_ne_nil hlnil), hl₀, get0_eq_head! hlnil, hlast,
          if_neg (by decide), Nat.sub_zero]
      · rw [List.count_tail l (-1) (List.length_pos_of_ne_nil hlnil), hl₁, get0_eq_head! hlnil,
          hlast, if_pos rfl, Nat.add_sub_cancel]
      · exact fun x hx => hl₂ x (List.mem_of_mem_tail hx)
      · rw [← hlast, List.cons_head!_tail hlnil]
  · rintro (⟨t, ⟨ht₀, ht₁, ht₂⟩, rfl⟩ | ⟨t, ⟨ht₀, ht₁, ht₂⟩, rfl⟩)
    · refine' ⟨_, _, _⟩
      · rw [List.count_cons, if_pos rfl, ht₀]
      · rw [List.count_cons, if_neg, ht₁]
        norm_num
      · rintro x (_ | _)
        exacts [Or.inl rfl, ht₂ x (by tauto)]
    · refine' ⟨_, _, _⟩
      · rw [List.count_cons, if_neg, ht₀]
        norm_num
      · rw [List.count_cons, if_pos rfl, ht₁]
      · rintro x (_ | _)
        exacts [Or.inr rfl, ht₂ x (by tauto)]
#align ballot.counted_succ_succ Ballot.counted_succ_succ

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BallotProblem/Variant24a9196f0bfdb52567298d45618d1bd6963e2299a3005489ed7f90b0341ada8b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BallotProblem/Variant24a9196f0bfdb52567298d45618d1bd6963e2299a3005489ed7f90b0341ada8b.lean#L131).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cc46fef5c92f090b04a5a2df57bd3602aa46494b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
