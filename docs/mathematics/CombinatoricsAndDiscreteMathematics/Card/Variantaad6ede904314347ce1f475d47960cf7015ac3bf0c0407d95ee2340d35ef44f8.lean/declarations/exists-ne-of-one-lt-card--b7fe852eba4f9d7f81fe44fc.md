# exists_ne_of_one_lt_card

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:71f7b57d-36fb-488a-3e01-22252dfb8f46",
  "kind": "theorem",
  "lexical_name": "exists_ne_of_one_lt_card",
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
  "slug": "exists-ne-of-one-lt-card--b7fe852eba4f9d7f81fe44fc",
  "source": {
    "blob": "ed53afe32a81d57228bcb2de64cf59329f758b5e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 676,
    "line": 668,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Card/Variantaad6ede904314347ce1f475d47960cf7015ac3bf0c0407d95ee2340d35ef44f8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b7fe852eba4f9d7f81fe44fc1960e0df3217dd6346027f0e980ef38454bc667c",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Card/Variantaad6ede904314347ce1f475d47960cf7015ac3bf0c0407d95ee2340d35ef44f8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:71f7b57d-36fb-488a-3e01-22252dfb8f46`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 668–676.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_ne_of_one_lt_card (hs : 1 < #s) (a : α) : ∃ b, b ∈ s ∧ b ≠ a := by
  obtain ⟨x, hx, y, hy, hxy⟩ := Finset.one_lt_card.mp hs
  by_cases ha : y = a
  · exact ⟨x, hx, ne_of_ne_of_eq hxy ha⟩
  · exact ⟨y, hy, ha⟩

/-- If a Finset in a Pi type is nontrivial (has at least two elements), then
  its projection to some factor is nontrivial, and the fibers of the projection
  are proper subsets. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Card/Variantaad6ede904314347ce1f475d47960cf7015ac3bf0c0407d95ee2340d35ef44f8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Card/Variantaad6ede904314347ce1f475d47960cf7015ac3bf0c0407d95ee2340d35ef44f8.lean#L668).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ed53afe32a81d57228bcb2de64cf59329f758b5e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
