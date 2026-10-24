# ramificationIdx'_ne_zero_of_liesOver

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c7a7627c-ab88-33fa-a137-2ba90117b8fd",
  "kind": "theorem",
  "lexical_name": "ramificationIdx'_ne_zero_of_liesOver",
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
  "slug": "ramificationidx-ne-zero-of-liesover--6228c1d8f897c998e274165a",
  "source": {
    "blob": "a8ed954a3c9d52ebe4f8218ece3b9da3441d2af9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 317,
    "line": 308,
    "path": "GRWTSK/Algebra/Ramification/Variant3f15dbb7aaf9bfafaf1ee31b8e78349f613749609092d1ff26cd3190b2dbd5a3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6228c1d8f897c998e274165a5914c3514070f0abb5359f2dcd2d15b15ff0a2bf",
  "verification": {
    "reference": "docs/verification/Algebra/Ramification/Variant3f15dbb7aaf9bfafaf1ee31b8e78349f613749609092d1ff26cd3190b2dbd5a3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c7a7627c-ab88-33fa-a137-2ba90117b8fd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 308–317.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ramificationIdx'_ne_zero_of_liesOver [IsDomain R] [IsTorsionFree R S]
    (P : Ideal S) [hP : P.IsPrime] {p : Ideal R} (hp : p ≠ ⊥) [hPp : P.LiesOver p] :
    ramificationIdx' p P ≠ 0 :=
  IsDedekindDomain.ramificationIdx'_ne_zero (map_ne_bot_of_ne_bot hp) hP <|
    map_le_iff_le_comap.mpr <| le_of_eq <| (liesOver_iff _ _).mp hPp

@[deprecated (since := "2026-07-01")] alias ramificationIdx_ne_zero_of_liesOver :=
  ramificationIdx'_ne_zero_of_liesOver

open IsLocalRing in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Ramification/Variant3f15dbb7aaf9bfafaf1ee31b8e78349f613749609092d1ff26cd3190b2dbd5a3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Ramification/Variant3f15dbb7aaf9bfafaf1ee31b8e78349f613749609092d1ff26cd3190b2dbd5a3.lean#L308).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a8ed954a3c9d52ebe4f8218ece3b9da3441d2af9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
