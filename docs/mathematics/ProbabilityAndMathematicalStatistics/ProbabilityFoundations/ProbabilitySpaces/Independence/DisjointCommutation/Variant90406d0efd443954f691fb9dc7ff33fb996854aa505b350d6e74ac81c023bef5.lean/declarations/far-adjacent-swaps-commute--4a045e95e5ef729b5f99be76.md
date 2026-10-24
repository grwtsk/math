# far_adjacent_swaps_commute

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "788bb292b942216576cd9910f6dcc0a7c730f88a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 479,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/90/90406d0efd443954f691fb9dc7ff33fb996854aa505b350d6e74ac81c023bef5.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f7e45cfc-4bd6-5c4a-594d-2388c344fc0b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ca99b69a-1ac5-e435-975a-1deeeb58591d",
  "kind": "theorem",
  "lexical_name": "far_adjacent_swaps_commute",
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
  "slug": "far-adjacent-swaps-commute--4a045e95e5ef729b5f99be76",
  "source": {
    "blob": "788bb292b942216576cd9910f6dcc0a7c730f88a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 507,
    "line": 479,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/DisjointCommutation/Variant90406d0efd443954f691fb9dc7ff33fb996854aa505b350d6e74ac81c023bef5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4a045e95e5ef729b5f99be76c9bbf31f71355a27a9725b9d13b2d7d3b417be6b",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/DisjointCommutation/Variant90406d0efd443954f691fb9dc7ff33fb996854aa505b350d6e74ac81c023bef5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ca99b69a-1ac5-e435-975a-1deeeb58591d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 479–507.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem far_adjacent_swaps_commute
    {a d : Equiv.Perm (Fin count)}
    (square : FarAdjacentSwapSquare a d) :
    G.trans (E.adjacentComparison a square.afterFirst ⟨square.first⟩)
        (E.adjacentComparison square.afterFirst d ⟨square.secondAfterFirst⟩) =
      G.trans (E.adjacentComparison a square.afterSecond ⟨square.second⟩)
        (E.adjacentComparison square.afterSecond d ⟨square.firstAfterSecond⟩) := by
  rcases square.separated with _hfar | _hfar
  · let upper : AdjacentSwapPath a d :=
      .cons ⟨square.first⟩ (.cons ⟨square.secondAfterFirst⟩ (.nil d))
    let lower : AdjacentSwapPath a d :=
      .cons ⟨square.second⟩ (.cons ⟨square.firstAfterSecond⟩ (.nil d))
    have h := E.swap_path_independent upper lower
    simp only [upper, lower, AdjacentSwapPath.toHom] at h
    rw [G.trans_refl, G.trans_refl] at h
    exact h
  · let upper : AdjacentSwapPath a d :=
      .cons ⟨square.first⟩ (.cons ⟨square.secondAfterFirst⟩ (.nil d))
    let lower : AdjacentSwapPath a d :=
      .cons ⟨square.second⟩ (.cons ⟨square.firstAfterSecond⟩ (.nil d))
    have h := E.swap_path_independent upper lower
    simp only [upper, lower, AdjacentSwapPath.toHom] at h
    rw [G.trans_refl, G.trans_refl] at h
    exact h

/--
The two typed length-three routes in a Coxeter braid have the same map.  The
relation is propositional, matching `coherence_strictness`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/DisjointCommutation/Variant90406d0efd443954f691fb9dc7ff33fb996854aa505b350d6e74ac81c023bef5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/DisjointCommutation/Variant90406d0efd443954f691fb9dc7ff33fb996854aa505b350d6e74ac81c023bef5.lean#L479).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `788bb292b942216576cd9910f6dcc0a7c730f88a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
