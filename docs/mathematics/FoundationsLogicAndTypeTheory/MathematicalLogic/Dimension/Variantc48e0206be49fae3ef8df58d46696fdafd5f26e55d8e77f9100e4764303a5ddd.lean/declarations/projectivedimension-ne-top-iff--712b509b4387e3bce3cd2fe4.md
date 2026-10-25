# projectiveDimension_ne_top_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:78b04fb6-36e0-b77d-6702-2fe652d97534",
  "kind": "lemma",
  "lexical_name": "projectiveDimension_ne_top_iff",
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
  "slug": "projectivedimension-ne-top-iff--712b509b4387e3bce3cd2fe4",
  "source": {
    "blob": "d76aaad0c7bc75f58d730269d91cf7a3883de6e8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 335,
    "line": 316,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Dimension/Variantc48e0206be49fae3ef8df58d46696fdafd5f26e55d8e77f9100e4764303a5ddd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:712b509b4387e3bce3cd2fe45cd09fdca0bf4c13ac8bf58fa479aa4d5e8e52de",
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

Occurrence: `result:78b04fb6-36e0-b77d-6702-2fe652d97534`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 316–335.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma projectiveDimension_ne_top_iff (X : C) :
    projectiveDimension X ≠ ⊤ ↔ ∃ n, HasProjectiveDimensionLE X n := by
  generalize hd : projectiveDimension X = d
  induction d with
  | bot =>
    simp only [ne_eq, bot_ne_top, not_false_eq_true, true_iff]
    exact ⟨0, by simp [← projectiveDimension_le_iff, hd]⟩
  | coe d =>
    induction d with
    | top =>
      by_contra!
      simp only [WithBot.coe_top, ne_eq, not_true_eq_false, false_and, true_and, false_or] at this
      obtain ⟨n, hn⟩ := this
      rw [← projectiveDimension_le_iff, hd, WithBot.coe_top, top_le_iff] at hn
      exact ENat.natCast_ne_top _ ((WithBot.coe_eq_coe).1 hn)
    | coe d =>
      simp only [ne_eq, WithBot.coe_eq_top, ENat.natCast_ne_top, not_false_eq_true, true_iff]
      exact ⟨d, by simpa only [← projectiveDimension_le_iff] using! hd.le⟩

/-- A projective object has projective dimension at most zero. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Dimension/Variantc48e0206be49fae3ef8df58d46696fdafd5f26e55d8e77f9100e4764303a5ddd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Dimension/Variantc48e0206be49fae3ef8df58d46696fdafd5f26e55d8e77f9100e4764303a5ddd.lean#L316).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d76aaad0c7bc75f58d730269d91cf7a3883de6e8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
