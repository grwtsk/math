# ballot_neg

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:969a9d88-c7e3-9835-0d68-d6df190dae5b",
  "kind": "theorem",
  "lexical_name": "ballot_neg",
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
  "slug": "ballot-neg--f12440eb49fd306c9dc88eb1",
  "source": {
    "blob": "cc46fef5c92f090b04a5a2df57bd3602aa46494b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 383,
    "line": 356,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BallotProblem/Variant24a9196f0bfdb52567298d45618d1bd6963e2299a3005489ed7f90b0341ada8b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f12440eb49fd306c9dc88eb18db8e59cc29794a40186acdb0d24b756abdbf559",
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

Occurrence: `result:969a9d88-c7e3-9835-0d68-d6df190dae5b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 356–383.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ballot_neg (p q : ℕ) (qp : q < p) :
    condCount (countedSequence (p + 1) (q + 1) ∩ {l | l.headI = 1}ᶜ) staysPositive =
      condCount (countedSequence (p + 1) q) staysPositive := by
  rw [countedSequence_int_neg_counted_succ_succ, condCount, condCount,
    cond_apply _ list_int_measurableSet, cond_apply _ list_int_measurableSet,
    count_injective_image List.cons_injective]
  all_goals try infer_instance
  congr 1
  have :
    (countedSequence (p + 1) q).image (List.cons (-1)) ∩ staysPositive =
      (countedSequence (p + 1) q ∩ staysPositive).image (List.cons (-1)) := by
    ext t
    simp only [mem_inter_iff, mem_image]
    constructor
    · simp only [and_imp, exists_imp]
      rintro l hl rfl t
      exact ⟨_, ⟨hl, fun l₁ hl₁ hl₂ => t l₁ hl₁ (hl₂.trans (List.suffix_cons _ _))⟩, rfl⟩
    · simp only [and_imp, exists_imp]
      rintro l hl₁ hl₂ rfl
      refine' ⟨⟨l, hl₁, rfl⟩, fun l₁ hl₃ hl₄ => _⟩
      rw [List.suffix_cons_iff] at hl₄
      rcases hl₄ with (rfl | hl₄)
      · simp [List.sum_cons, sum_of_mem_countedSequence hl₁, sub_eq_add_neg, ← add_assoc, qp]
      exact hl₂ _ hl₃ hl₄
  rw [this, count_injective_image]
  exact List.cons_injective
#align ballot.ballot_neg Ballot.ballot_neg

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BallotProblem/Variant24a9196f0bfdb52567298d45618d1bd6963e2299a3005489ed7f90b0341ada8b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BallotProblem/Variant24a9196f0bfdb52567298d45618d1bd6963e2299a3005489ed7f90b0341ada8b.lean#L356).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cc46fef5c92f090b04a5a2df57bd3602aa46494b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
