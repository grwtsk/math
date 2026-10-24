# exists_succ_nth_stream_of_fr_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f8d850d6-333d-19d3-318f-79576bc4fca0",
  "kind": "theorem",
  "lexical_name": "exists_succ_nth_stream_of_fr_zero",
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
  "slug": "exists-succ-nth-stream-of-fr-zero--eb40b202618c42e5177a445b",
  "source": {
    "blob": "9ded5fcd01cb1f423a612cdb8b44d3eabbf15feb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 135,
    "line": 120,
    "path": "GRWTSK/Algebra/UniversalAlgebra/Translations/Variant95c676c422cfc1869798224ca4337529c4a8cd156d34409ae7e2b777b42f04c1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:eb40b202618c42e5177a445bd6f9dc447d7318b07e53bfb7cccf6b7a45764a5a",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/Translations/Variant95c676c422cfc1869798224ca4337529c4a8cd156d34409ae7e2b777b42f04c1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f8d850d6-333d-19d3-318f-79576bc4fca0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 120–135.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_succ_nth_stream_of_fr_zero {ifp_succ_n : IntFractPair K}
    (stream_succ_nth_eq : IntFractPair.stream v (n + 1) = some ifp_succ_n)
    (succ_nth_fr_eq_zero : ifp_succ_n.fr = 0) :
    ∃ ifp_n : IntFractPair K, IntFractPair.stream v n = some ifp_n ∧ ifp_n.fr⁻¹ = ⌊ifp_n.fr⁻¹⌋ := by
  -- get the witness from `succ_nth_stream_eq_some_iff` and prove that it has the additional
  -- properties
  rcases succ_nth_stream_eq_some_iff.mp stream_succ_nth_eq with
    ⟨ifp_n, seq_nth_eq, _, rfl⟩
  refine' ⟨ifp_n, seq_nth_eq, _⟩
  simpa only [IntFractPair.of, Int.fract, sub_eq_zero] using succ_nth_fr_eq_zero
#align generalized_continued_fraction.int_fract_pair.exists_succ_nth_stream_of_fr_zero GeneralizedContinuedFraction.IntFractPair.exists_succ_nth_stream_of_fr_zero

/-- A recurrence relation that expresses the `(n+1)`th term of the stream of `IntFractPair`s
of `v` for non-integer `v` in terms of the `n`th term of the stream associated to
the inverse of the fractional part of `v`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/Translations/Variant95c676c422cfc1869798224ca4337529c4a8cd156d34409ae7e2b777b42f04c1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/Translations/Variant95c676c422cfc1869798224ca4337529c4a8cd156d34409ae7e2b777b42f04c1.lean#L120).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9ded5fcd01cb1f423a612cdb8b44d3eabbf15feb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
