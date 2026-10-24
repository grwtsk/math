# of_correctness_of_nth_stream_eq_none

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "251761c82a40244405ea8475d350ed49c86e148b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 206,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b6/b684f2a259325500b0583b7010779231387165932a09f448435164538617d3f6.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:890388ff-b0cb-370d-4d6f-66ae3a4b5ae8",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:33f0ba14-ccdf-430d-1da9-90a69b4ad616",
  "kind": "theorem",
  "lexical_name": "of_correctness_of_nth_stream_eq_none",
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
  "slug": "of-correctness-of-nth-stream-eq-none--50213f79d636ebc0d77c3e34",
  "source": {
    "blob": "251761c82a40244405ea8475d350ed49c86e148b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 231,
    "line": 206,
    "path": "GRWTSK/Algebra/UniversalAlgebra/CorrectnessTerminating/Variantb684f2a259325500b0583b7010779231387165932a09f448435164538617d3f6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:50213f79d636ebc0d77c3e349a1c6a45269514d68b91e097847dd886199b8f2c",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/CorrectnessTerminating/Variantb684f2a259325500b0583b7010779231387165932a09f448435164538617d3f6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:33f0ba14-ccdf-430d-1da9-90a69b4ad616`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 206–231.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem of_correctness_of_nth_stream_eq_none (nth_stream_eq_none : IntFractPair.stream v n = none) :
    v = (of v).convs (n - 1) := by
  induction n with
  | zero => contradiction
  -- IntFractPair.stream v 0 ≠ none
  | succ n IH =>
    let g := of v
    change v = g.convs n
    obtain ⟨nth_stream_eq_none⟩ | ⟨ifp_n, nth_stream_eq, nth_stream_fr_eq_zero⟩ :
      IntFractPair.stream v n = none ∨ ∃ ifp, IntFractPair.stream v n = some ifp ∧ ifp.fr = 0 :=
      IntFractPair.succ_nth_stream_eq_none_iff.1 nth_stream_eq_none
    · cases n with
      | zero => contradiction
      | succ n' =>
        -- IntFractPair.stream v 0 ≠ none
        have : g.TerminatedAt n' :=
          of_terminatedAt_n_iff_succ_nth_intFractPair_stream_eq_none.2
            nth_stream_eq_none
        have : g.convs (n' + 1) = g.convs n' :=
          convs_stable_of_terminated n'.le_succ this
        rw [this]
        exact IH nth_stream_eq_none
    · simpa [nth_stream_fr_eq_zero, compExactValue] using
        compExactValue_correctness_of_stream_eq_some nth_stream_eq

/-- If `GenContFract.of v` terminated at step `n`, then the `n`th convergent is exactly `v`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/CorrectnessTerminating/Variantb684f2a259325500b0583b7010779231387165932a09f448435164538617d3f6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/CorrectnessTerminating/Variantb684f2a259325500b0583b7010779231387165932a09f448435164538617d3f6.lean#L206).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `251761c82a40244405ea8475d350ed49c86e148b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
