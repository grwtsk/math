# adjacent_swap_braid

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e00d4398-5250-34be-1656-9ded6fbc7584",
  "kind": "theorem",
  "lexical_name": "adjacent_swap_braid",
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
  "slug": "adjacent-swap-braid--ef678b9585bcf0f47eefd33c",
  "source": {
    "blob": "0d45d62ae6b2df5d11d53027dcbb1857423189dc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 543,
    "line": 516,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/DisjointCommutation/Variant20fc3a00132322fe37a9b12048333096f21287a7ce8c08217c09320fe6d5a99f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ef678b9585bcf0f47eefd33c3d28f06a119505873366c67afa7682de4c1a32b3",
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

Occurrence: `result:e00d4398-5250-34be-1656-9ded6fbc7584`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 516–543.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem adjacent_swap_braid
    {a d : Equiv.Perm (Fin count)}
    (hexagon : AdjacentBraidHexagon a d) :
    G.trans (E.adjacentComparison a hexagon.upperOne ⟨hexagon.upperLeft⟩)
        (G.trans (E.adjacentComparison hexagon.upperOne hexagon.upperTwo
            ⟨hexagon.upperMiddle⟩)
          (E.adjacentComparison hexagon.upperTwo d ⟨hexagon.upperRight⟩)) =
      G.trans (E.adjacentComparison a hexagon.lowerOne ⟨hexagon.lowerLeft⟩)
        (G.trans (E.adjacentComparison hexagon.lowerOne hexagon.lowerTwo
            ⟨hexagon.lowerMiddle⟩)
          (E.adjacentComparison hexagon.lowerTwo d ⟨hexagon.lowerRight⟩)) := by
  let upper : AdjacentSwapPath a d :=
    .cons ⟨hexagon.upperLeft⟩
      (.cons ⟨hexagon.upperMiddle⟩
        (.cons ⟨hexagon.upperRight⟩ (.nil d)))
  let lower : AdjacentSwapPath a d :=
    .cons ⟨hexagon.lowerLeft⟩
      (.cons ⟨hexagon.lowerMiddle⟩
        (.cons ⟨hexagon.lowerRight⟩ (.nil d)))
  have h := E.swap_path_independent upper lower
  simp only [upper, lower, AdjacentSwapPath.toHom] at h
  rw [G.trans_refl, G.trans_refl] at h
  exact h

/--
Forget coherent maps to the older simultaneous-result certificate, choosing
the identity ordering as the common reference result.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/DisjointCommutation/Variant20fc3a00132322fe37a9b12048333096f21287a7ce8c08217c09320fe6d5a99f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/DisjointCommutation/Variant20fc3a00132322fe37a9b12048333096f21287a7ce8c08217c09320fe6d5a99f.lean#L516).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0d45d62ae6b2df5d11d53027dcbb1857423189dc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
