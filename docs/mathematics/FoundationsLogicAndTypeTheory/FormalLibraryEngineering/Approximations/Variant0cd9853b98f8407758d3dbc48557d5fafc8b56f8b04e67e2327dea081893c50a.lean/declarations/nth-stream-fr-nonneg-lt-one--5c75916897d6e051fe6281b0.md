# nth_stream_fr_nonneg_lt_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:05583098-fb61-f086-d6f6-0cdef1910eaa",
  "kind": "theorem",
  "lexical_name": "nth_stream_fr_nonneg_lt_one",
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
  "slug": "nth-stream-fr-nonneg-lt-one--5c75916897d6e051fe6281b0",
  "source": {
    "blob": "440da51d0d5f9fc1eea1c493d0d371d30819f05a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 90,
    "line": 77,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Approximations/Variant0cd9853b98f8407758d3dbc48557d5fafc8b56f8b04e67e2327dea081893c50a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5c75916897d6e051fe6281b0212f1b80f383c4baa5bf8eb7b36ebc4a2be4a376",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Approximations/Variant0cd9853b98f8407758d3dbc48557d5fafc8b56f8b04e67e2327dea081893c50a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:05583098-fb61-f086-d6f6-0cdef1910eaa`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 77–90.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem nth_stream_fr_nonneg_lt_one {ifp_n : IntFractPair K}
    (nth_stream_eq : IntFractPair.stream v n = some ifp_n) : 0 ≤ ifp_n.fr ∧ ifp_n.fr < 1 := by
  cases n
  case zero =>
    have : IntFractPair.of v = ifp_n := by injection nth_stream_eq
    rw [← this, IntFractPair.of]
    exact ⟨fract_nonneg _, fract_lt_one _⟩
  case succ =>
    rcases succ_nth_stream_eq_some_iff.1 nth_stream_eq with ⟨_, _, _, ifp_of_eq_ifp_n⟩
    rw [← ifp_of_eq_ifp_n, IntFractPair.of]
    exact ⟨fract_nonneg _, fract_lt_one _⟩
#align generalized_continued_fraction.int_fract_pair.nth_stream_fr_nonneg_lt_one GeneralizedContinuedFraction.IntFractPair.nth_stream_fr_nonneg_lt_one

/-- Shows that the fractional parts of the stream are nonnegative. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Approximations/Variant0cd9853b98f8407758d3dbc48557d5fafc8b56f8b04e67e2327dea081893c50a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Approximations/Variant0cd9853b98f8407758d3dbc48557d5fafc8b56f8b04e67e2327dea081893c50a.lean#L77).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `440da51d0d5f9fc1eea1c493d0d371d30819f05a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
