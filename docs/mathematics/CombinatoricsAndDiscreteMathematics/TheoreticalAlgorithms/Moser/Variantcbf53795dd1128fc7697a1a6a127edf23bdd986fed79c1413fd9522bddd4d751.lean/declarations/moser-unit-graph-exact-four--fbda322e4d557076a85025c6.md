# moser_unit_graph_exact_four

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0f0c9147-d5bf-a933-5379-6a910ac7aecd",
  "kind": "theorem",
  "lexical_name": "moser_unit_graph_exact_four",
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
  "slug": "moser-unit-graph-exact-four--fbda322e4d557076a85025c6",
  "source": {
    "blob": "0a780fc95b0b6303d48c6ca8c223e696cfa2bcb5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 114,
    "line": 106,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Moser/Variantcbf53795dd1128fc7697a1a6a127edf23bdd986fed79c1413fd9522bddd4d751.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fbda322e4d557076a85025c64598a8c2818d33e95478b2500a61a90b7c4f55c0",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Moser/Variantcbf53795dd1128fc7697a1a6a127edf23bdd986fed79c1413fd9522bddd4d751.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0f0c9147-d5bf-a933-5379-6a910ac7aecd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 106–114.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem moser_unit_graph_exact_four :
    FinitePointColorable 4 ∧ ∀ n : ℕ, n < 4 → ¬ FinitePointColorable n := by
  constructor
  · exact ⟨moserFourColor, fun _ _ h ↦ moserFourColor_unit_proper h⟩
  · intro n hn hc
    obtain ⟨f, hf⟩ := finitePointColorable_mono (Nat.le_of_lt_succ hn) hc
    exact moser_not_three_colorable f (fun _ _ h ↦ hf _ _ (moser_edge_unit h))

/-- A finite-coloring of the entire Euclidean plane, with no regularity restriction. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Moser/Variantcbf53795dd1128fc7697a1a6a127edf23bdd986fed79c1413fd9522bddd4d751.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Moser/Variantcbf53795dd1128fc7697a1a6a127edf23bdd986fed79c1413fd9522bddd4d751.lean#L106).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0a780fc95b0b6303d48c6ca8c223e696cfa2bcb5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
