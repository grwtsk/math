# main_fintype

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5b1d81a1-9d44-b024-aaf2-baba41b21c5a",
  "kind": "theorem",
  "lexical_name": "main_fintype",
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
  "slug": "main-fintype--1ba98eeb30aba181764bdae6",
  "source": {
    "blob": "5108643d7a774d4a083c7c942a25c0977bbc4d9a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 100,
    "line": 95,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Imo1987Q1/Varianta1f7b78a41300bbd493558209b20633a0aee7c4bd088319f0a27dd86ef31fcc5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1ba98eeb30aba181764bdae6547add1f1b7cb2db2d1c7333bec1905dd759ca61",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Imo1987Q1/Varianta1f7b78a41300bbd493558209b20633a0aee7c4bd088319f0a27dd86ef31fcc5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5b1d81a1-9d44-b024-aaf2-baba41b21c5a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 95–100.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem main_fintype : ∑ k ∈ range (card α + 1), k * p α k = card α * (card α - 1)! := by
  have A : ∀ (k) (σ : fiber α k), card (fixedPoints (↑σ : Perm α)) = k := fun k σ => σ.2
  simpa [A, ← Fin.sum_univ_eq_sum_range, -card_ofFinset, Finset.card_univ, card_fixed_points,
    mul_comm] using card_congr (fixedPointsEquiv' α)

/-- Main statement for permutations of `Fin n`, a version that works for `n = 0`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Imo1987Q1/Varianta1f7b78a41300bbd493558209b20633a0aee7c4bd088319f0a27dd86ef31fcc5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Imo1987Q1/Varianta1f7b78a41300bbd493558209b20633a0aee7c4bd088319f0a27dd86ef31fcc5.lean#L95).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5108643d7a774d4a083c7c942a25c0977bbc4d9a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
