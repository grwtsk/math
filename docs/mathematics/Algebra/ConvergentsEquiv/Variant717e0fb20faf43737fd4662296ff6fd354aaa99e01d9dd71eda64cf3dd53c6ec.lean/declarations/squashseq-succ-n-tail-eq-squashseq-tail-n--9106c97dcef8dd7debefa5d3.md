# squashSeq_succ_n_tail_eq_squashSeq_tail_n

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a2054244-915f-d90c-0214-2e32d56f707d",
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
  "slug": "squashseq-succ-n-tail-eq-squashseq-tail-n--9106c97dcef8dd7debefa5d3",
  "source": {
    "blob": "71bb0e6982734d471b0d8b2170fa29c4831a1de6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 155,
    "line": 136,
    "path": "GRWTSK/Algebra/ConvergentsEquiv/Variant717e0fb20faf43737fd4662296ff6fd354aaa99e01d9dd71eda64cf3dd53c6ec.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9106c97dcef8dd7debefa5d37547489542c0c08fea4d607d9e9da9b6a6147f07",
  "verification": {
    "reference": "docs/verification/Algebra/ConvergentsEquiv/Variant717e0fb20faf43737fd4662296ff6fd354aaa99e01d9dd71eda64cf3dd53c6ec.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a2054244-915f-d90c-0214-2e32d56f707d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 136–155.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem squashSeq_succ_n_tail_eq_squashSeq_tail_n :
    (squashSeq s (n + 1)).tail = squashSeq s.tail n := by
  cases s_succ_succ_nth_eq : s.get? (n + 2) with
  | none =>
    cases s_succ_nth_eq : s.get? (n + 1) <;>
      simp only [squashSeq, Stream'.Seq.get?_tail, s_succ_nth_eq, s_succ_succ_nth_eq]
  | some gp_succ_succ_n =>
    obtain ⟨gp_succ_n, s_succ_nth_eq⟩ : ∃ gp_succ_n, s.get? (n + 1) = some gp_succ_n :=
      s.ge_stable (n + 1).le_succ s_succ_succ_nth_eq
    -- apply extensionality with `m` and continue by cases `m = n`.
    ext1 m
    rcases Decidable.em (m = n) with m_eq_n | m_ne_n
    · simp [*, squashSeq]
    · cases s_succ_mth_eq : s.get? (m + 1)
      · simp only [*, squashSeq, Stream'.Seq.get?_tail, Stream'.Seq.get?_zipWith,
          Option.map₂_none_right]
      · simp [*, squashSeq]

/-- The auxiliary function `convs'Aux` returns the same value for a sequence and the
corresponding squashed sequence at the squashed position. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/ConvergentsEquiv/Variant717e0fb20faf43737fd4662296ff6fd354aaa99e01d9dd71eda64cf3dd53c6ec.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/ConvergentsEquiv/Variant717e0fb20faf43737fd4662296ff6fd354aaa99e01d9dd71eda64cf3dd53c6ec.lean#L136).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `71bb0e6982734d471b0d8b2170fa29c4831a1de6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
