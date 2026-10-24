# exists_linearIndependent_pair_of_one_lt_finrank

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b6e36360-6b15-e20a-ff85-9c813d98a7dc",
  "kind": "theorem",
  "lexical_name": "exists_linearIndependent_pair_of_one_lt_finrank",
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
  "slug": "exists-linearindependent-pair-of-one-lt-finrank--cfed7e7a1654fe1ea1ba215f",
  "source": {
    "blob": "1749d0b32d20d69938015b8b42e408f4834e66f7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 215,
    "line": 210,
    "path": "GRWTSK/Algebra/LinearAlgebra/RankNullity/Varianta71c88674ee696ed6818eb56c16a6e823e780ee69d7e1b4b7bf76d9c2749a617.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cfed7e7a1654fe1ea1ba215f0e8b3ed8fda6f9819dca76239495eabffd030573",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/RankNullity/Varianta71c88674ee696ed6818eb56c16a6e823e780ee69d7e1b4b7bf76d9c2749a617.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b6e36360-6b15-e20a-ff85-9c813d98a7dc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 210–215.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_linearIndependent_pair_of_one_lt_finrank [NoZeroSMulDivisors R M]
    (h : 1 < finrank R M) {x : M} (hx : x ≠ 0) :
    ∃ y, LinearIndependent R ![x, y] :=
  exists_linearIndependent_pair_of_one_lt_rank (one_lt_rank_of_one_lt_finrank h) hx

/-- Rank-nullity theorem using `finrank`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/RankNullity/Varianta71c88674ee696ed6818eb56c16a6e823e780ee69d7e1b4b7bf76d9c2749a617.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/RankNullity/Varianta71c88674ee696ed6818eb56c16a6e823e780ee69d7e1b4b7bf76d9c2749a617.lean#L210).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1749d0b32d20d69938015b8b42e408f4834e66f7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
