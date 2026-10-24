# of_correctness_of_nth_stream_eq_none

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:08e7ada6-9a43-1747-127b-364dd56b67aa",
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
  "slug": "of-correctness-of-nth-stream-eq-none--d1f10a000cf4b1241ca3550f",
  "source": {
    "blob": "37370c3153767e31d82807c717a60bc2917c8d3c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 253,
    "line": 225,
    "path": "GRWTSK/Algebra/UniversalAlgebra/CorrectnessTerminating/Variant9525b073020b39defaaca4bbb1b7892fd60b680a48998951791c07599855b0f0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d1f10a000cf4b1241ca3550f94ebd989e45c226381fee5322f1a2dcfc26376b5",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/CorrectnessTerminating/Variant9525b073020b39defaaca4bbb1b7892fd60b680a48998951791c07599855b0f0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:08e7ada6-9a43-1747-127b-364dd56b67aa`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 225–253.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem of_correctness_of_nth_stream_eq_none (nth_stream_eq_none : IntFractPair.stream v n = none) :
    v = (of v).convergents (n - 1) := by
  induction n with
  | zero => contradiction
  -- IntFractPair.stream v 0 ≠ none
  | succ n IH =>
    let g := of v
    change v = g.convergents n
    have :
      IntFractPair.stream v n = none ∨ ∃ ifp, IntFractPair.stream v n = some ifp ∧ ifp.fr = 0 :=
      IntFractPair.succ_nth_stream_eq_none_iff.1 nth_stream_eq_none
    rcases this with (⟨nth_stream_eq_none⟩ | ⟨ifp_n, nth_stream_eq, nth_stream_fr_eq_zero⟩)
    · cases' n with n'
      · contradiction
      -- IntFractPair.stream v 0 ≠ none
      · have : g.TerminatedAt n' :=
          of_terminatedAt_n_iff_succ_nth_intFractPair_stream_eq_none.2
            nth_stream_eq_none
        have : g.convergents (n' + 1) = g.convergents n' :=
          convergents_stable_of_terminated n'.le_succ this
        rw [this]
        exact IH nth_stream_eq_none
    · simpa [nth_stream_fr_eq_zero, compExactValue] using
        compExactValue_correctness_of_stream_eq_some nth_stream_eq
#align generalized_continued_fraction.of_correctness_of_nth_stream_eq_none GeneralizedContinuedFraction.of_correctness_of_nth_stream_eq_none

/-- If `GeneralizedContinuedFraction.of v` terminated at step `n`, then the `n`th convergent is
exactly `v`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/CorrectnessTerminating/Variant9525b073020b39defaaca4bbb1b7892fd60b680a48998951791c07599855b0f0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/CorrectnessTerminating/Variant9525b073020b39defaaca4bbb1b7892fd60b680a48998951791c07599855b0f0.lean#L225).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `37370c3153767e31d82807c717a60bc2917c8d3c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
