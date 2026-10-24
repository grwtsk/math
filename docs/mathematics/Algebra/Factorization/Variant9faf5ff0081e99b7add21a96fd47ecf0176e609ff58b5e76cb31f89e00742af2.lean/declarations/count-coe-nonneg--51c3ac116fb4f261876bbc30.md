# count_coe_nonneg

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0a0e8608-3544-74c5-7275-61c419bf53a0",
  "kind": "theorem",
  "lexical_name": "count_coe_nonneg",
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
  "slug": "count-coe-nonneg--51c3ac116fb4f261876bbc30",
  "source": {
    "blob": "a3a9ee5a542777bca0bb506eaab017f304d0e6a4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 528,
    "line": 524,
    "path": "GRWTSK/Algebra/Factorization/Variant9faf5ff0081e99b7add21a96fd47ecf0176e609ff58b5e76cb31f89e00742af2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:51c3ac116fb4f261876bbc306d0388351bff2c89cfd8e4cdcf1e9452de826682",
  "verification": {
    "reference": "docs/verification/Algebra/Factorization/Variant9faf5ff0081e99b7add21a96fd47ecf0176e609ff58b5e76cb31f89e00742af2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0a0e8608-3544-74c5-7275-61c419bf53a0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 524–528.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem count_coe_nonneg (J : Ideal R) : 0 ≤ count K v J := by
  by_cases hJ : J = 0
  · simp only [hJ, Submodule.zero_eq_bot, coeIdeal_bot, count_zero, le_refl]
  · classical simp only [count_coe K v hJ, Nat.cast_nonneg]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Factorization/Variant9faf5ff0081e99b7add21a96fd47ecf0176e609ff58b5e76cb31f89e00742af2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Factorization/Variant9faf5ff0081e99b7add21a96fd47ecf0176e609ff58b5e76cb31f89e00742af2.lean#L524).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a3a9ee5a542777bca0bb506eaab017f304d0e6a4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
