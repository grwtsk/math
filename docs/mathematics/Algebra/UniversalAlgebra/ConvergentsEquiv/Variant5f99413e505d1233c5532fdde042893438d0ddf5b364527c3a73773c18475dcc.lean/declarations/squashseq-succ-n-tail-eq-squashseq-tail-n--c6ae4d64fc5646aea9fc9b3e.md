# squashSeq_succ_n_tail_eq_squashSeq_tail_n

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f35d4506-96d6-1673-1cb3-1c50ea3fc655",
  "kind": "theorem",
  "lexical_name": "squashSeq_succ_n_tail_eq_squashSeq_tail_n",
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
  "slug": "squashseq-succ-n-tail-eq-squashseq-tail-n--c6ae4d64fc5646aea9fc9b3e",
  "source": {
    "blob": "d5ed4fb7e01203f3b2da61b269065c8972755a0b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 164,
    "line": 142,
    "path": "GRWTSK/Algebra/UniversalAlgebra/ConvergentsEquiv/Variant5f99413e505d1233c5532fdde042893438d0ddf5b364527c3a73773c18475dcc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c6ae4d64fc5646aea9fc9b3ea3a461a05390c2679bc8fb881e78a6f6409b22fd",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/ConvergentsEquiv/Variant5f99413e505d1233c5532fdde042893438d0ddf5b364527c3a73773c18475dcc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f35d4506-96d6-1673-1cb3-1c50ea3fc655`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 142–164.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem squashSeq_succ_n_tail_eq_squashSeq_tail_n :
    (squashSeq s (n + 1)).tail = squashSeq s.tail n := by
  cases' s_succ_succ_nth_eq : s.get? (n + 2) with gp_succ_succ_n
  case none =>
    cases s_succ_nth_eq : s.get? (n + 1) <;>
      simp only [squashSeq, Stream'.Seq.get?_tail, s_succ_nth_eq, s_succ_succ_nth_eq]
  case some =>
    obtain ⟨gp_succ_n, s_succ_nth_eq⟩ : ∃ gp_succ_n, s.get? (n + 1) = some gp_succ_n;
    exact s.ge_stable (n + 1).le_succ s_succ_succ_nth_eq
    -- apply extensionality with `m` and continue by cases `m = n`.
    ext1 m
    cases' Decidable.em (m = n) with m_eq_n m_ne_n
    · simp [*, squashSeq]
    · have : s.tail.get? m = s.get? (m + 1) := s.get?_tail m
      cases s_succ_mth_eq : s.get? (m + 1)
      all_goals have _ := this.trans s_succ_mth_eq
      · simp only [*, squashSeq, Stream'.Seq.get?_tail, Stream'.Seq.get?_zipWith,
          Option.map₂_none_right]
      · simp [*, squashSeq]
#align generalized_continued_fraction.squash_seq_succ_n_tail_eq_squash_seq_tail_n GeneralizedContinuedFraction.squashSeq_succ_n_tail_eq_squashSeq_tail_n

/-- The auxiliary function `convergents'Aux` returns the same value for a sequence and the
corresponding squashed sequence at the squashed position. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/ConvergentsEquiv/Variant5f99413e505d1233c5532fdde042893438d0ddf5b364527c3a73773c18475dcc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/ConvergentsEquiv/Variant5f99413e505d1233c5532fdde042893438d0ddf5b364527c3a73773c18475dcc.lean#L142).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d5ed4fb7e01203f3b2da61b269065c8972755a0b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
