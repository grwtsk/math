# goldbachTruncatedSeries_pos

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3ec681ef-22b9-78a7-a1ee-d07222dbdd5b",
  "kind": "theorem",
  "lexical_name": "goldbachTruncatedSeries_pos",
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
  "slug": "goldbachtruncatedseries-pos--bf297508c7091b28ee21eb87",
  "source": {
    "blob": "87056e78110786da510cb9f4b2d8ad1d10efeaf4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 134,
    "line": 123,
    "path": "GRWTSK/NumberTheory/Primes/GoldbachTruncatedSeries.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bf297508c7091b28ee21eb876d4921063b7d40ed0bd65b6d3b044212eadc8033",
  "verification": {
    "reference": "docs/verification/NumberTheory/Primes/GoldbachTruncatedSeries.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3ec681ef-22b9-78a7-a1ee-d07222dbdd5b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 123–134.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem goldbachTruncatedSeries_pos {Q N : ℕ}
    (hN : Even N) :
    0 < goldbachTruncatedSeries Q N := by
  unfold goldbachTruncatedSeries
  apply mul_pos
  · rw [goldbachPrimeLocalFactor_two, if_pos hN]
    norm_num
  · exact finiteGoldbachLocalProduct_pos
      (fun p hp => prime_of_mem_goldbachOddPrimeCutoff hp) hN

/-- Every finite truncation vanishes on an odd target because the factor at two
is retained. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Primes/GoldbachTruncatedSeries.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Primes/GoldbachTruncatedSeries.lean#L123).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `87056e78110786da510cb9f4b2d8ad1d10efeaf4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
