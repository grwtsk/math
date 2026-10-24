# far_adjacent_swaps_commute

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:66a0d68e-0971-d29b-cf1b-b063ba74b7f7",
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
  "slug": "far-adjacent-swaps-commute--21970d6df7a10da44f0534de",
  "source": {
    "blob": "0d45d62ae6b2df5d11d53027dcbb1857423189dc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 515,
    "line": 487,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/DisjointCommutation/Variant20fc3a00132322fe37a9b12048333096f21287a7ce8c08217c09320fe6d5a99f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:21970d6df7a10da44f0534de80a56c35bdf765e1f50b6a7a75d0044c124cb3cd",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/DisjointCommutation/Variant20fc3a00132322fe37a9b12048333096f21287a7ce8c08217c09320fe6d5a99f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:66a0d68e-0971-d29b-cf1b-b063ba74b7f7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 487–515.

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

[Verification target and public status](../../../../../../../../verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/DisjointCommutation/Variant20fc3a00132322fe37a9b12048333096f21287a7ce8c08217c09320fe6d5a99f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/DisjointCommutation/Variant20fc3a00132322fe37a9b12048333096f21287a7ce8c08217c09320fe6d5a99f.lean#L487).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0d45d62ae6b2df5d11d53027dcbb1857423189dc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
