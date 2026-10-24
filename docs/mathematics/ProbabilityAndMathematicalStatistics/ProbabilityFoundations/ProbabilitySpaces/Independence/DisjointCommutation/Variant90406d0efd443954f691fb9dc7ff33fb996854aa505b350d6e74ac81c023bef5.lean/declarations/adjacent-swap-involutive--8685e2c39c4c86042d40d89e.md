# adjacent_swap_involutive

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
      "line": 465,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/90/90406d0efd443954f691fb9dc7ff33fb996854aa505b350d6e74ac81c023bef5.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:86cbfb1a-edc9-1fdd-f222-cef795721188",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e4faaecd-621b-9343-efa3-f781a941a19a",
  "kind": "theorem",
  "lexical_name": "adjacent_swap_involutive",
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
  "slug": "adjacent-swap-involutive--8685e2c39c4c86042d40d89e",
  "source": {
    "blob": "788bb292b942216576cd9910f6dcc0a7c730f88a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 478,
    "line": 465,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/DisjointCommutation/Variant90406d0efd443954f691fb9dc7ff33fb996854aa505b350d6e74ac81c023bef5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8685e2c39c4c86042d40d89ecfe175d4ec08249a868581b45ffbc510fa09007d",
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

Occurrence: `result:e4faaecd-621b-9343-efa3-f781a941a19a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 465–478.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem adjacent_swap_involutive
    {left right : Equiv.Perm (Fin count)}
    (step : AdjacentSwapWitness left right) :
    G.trans (E.adjacentComparison left right ⟨step⟩)
      (E.adjacentComparison right left ⟨step.reverse⟩) =
      G.refl (E.execution left).result := by
  rw [← E.comparison_of_adjacent left right ⟨step⟩,
    ← E.comparison_of_adjacent right left ⟨step.reverse⟩,
    E.comparison_trans, E.comparison_refl]

/--
Far-supported adjacent swaps commute.  `FarSeparated` is the concrete
support-disjointness certificate; coherence identifies the two typed routes.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/DisjointCommutation/Variant90406d0efd443954f691fb9dc7ff33fb996854aa505b350d6e74ac81c023bef5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/DisjointCommutation/Variant90406d0efd443954f691fb9dc7ff33fb996854aa505b350d6e74ac81c023bef5.lean#L465).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `788bb292b942216576cd9910f6dcc0a7c730f88a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
