# hasProjectiveDimensionLT_X₃

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1e84d4fc-0729-4690-a959-8312aa628597",
  "kind": "lemma",
  "lexical_name": "hasProjectiveDimensionLT_X₃",
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
  "slug": "hasprojectivedimensionlt-x--e9eba16f08c41fbea049d6c2",
  "source": {
    "blob": "d76aaad0c7bc75f58d730269d91cf7a3883de6e8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 220,
    "line": 210,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Dimension/Variantc48e0206be49fae3ef8df58d46696fdafd5f26e55d8e77f9100e4764303a5ddd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e9eba16f08c41fbea049d6c257013f72cd18c5f0a000d0966d53919047fa30cd",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Dimension/Variantc48e0206be49fae3ef8df58d46696fdafd5f26e55d8e77f9100e4764303a5ddd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1e84d4fc-0729-4690-a959-8312aa628597`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 210–220.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma hasProjectiveDimensionLT_X₃ (h₁ : HasProjectiveDimensionLT S.X₁ n)
    (h₂ : HasProjectiveDimensionLT S.X₂ (n + 1)) :
    HasProjectiveDimensionLT S.X₃ (n + 1) := by
  let := HasExt.standard C
  rw [hasProjectiveDimensionLT_iff]
  rintro (_ | i) hi Y x₃
  · simp at hi
  · obtain ⟨x₁, rfl⟩ := Ext.contravariant_sequence_exact₃ hS _ x₃
      (Ext.eq_zero_of_hasProjectiveDimensionLT _ (n + 1) hi) (add_comm _ _)
    rw [x₁.eq_zero_of_hasProjectiveDimensionLT n (by lia), Ext.comp_zero]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Dimension/Variantc48e0206be49fae3ef8df58d46696fdafd5f26e55d8e77f9100e4764303a5ddd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Dimension/Variantc48e0206be49fae3ef8df58d46696fdafd5f26e55d8e77f9100e4764303a5ddd.lean#L210).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d76aaad0c7bc75f58d730269d91cf7a3883de6e8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
