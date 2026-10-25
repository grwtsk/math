# projectiveDimension_X₃_le_sup

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ca38b0cb-050a-e6d4-8231-1c2b9c37f70f",
  "kind": "lemma",
  "lexical_name": "projectiveDimension_X₃_le_sup",
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
  "slug": "projectivedimension-x-le-sup--1cf8df9079530a11612aae7a",
  "source": {
    "blob": "d76aaad0c7bc75f58d730269d91cf7a3883de6e8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 389,
    "line": 373,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Dimension/Variantc48e0206be49fae3ef8df58d46696fdafd5f26e55d8e77f9100e4764303a5ddd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1cf8df9079530a11612aae7a5b0667f2405127e16f42f93f7f4d36a258e13ac0",
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

Occurrence: `result:ca38b0cb-050a-e6d4-8231-1c2b9c37f70f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 373–389.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma projectiveDimension_X₃_le_sup :
    projectiveDimension S.X₃ ≤
      projectiveDimension S.X₂ ⊔ (projectiveDimension S.X₁ + 1) := by
  refine le_of_forall_ge (fun N ↦ ?_)
  induction N with
  | bot =>
    have := hS.epi_g
    simpa [projectiveDimension_eq_bot_iff] using fun h _ ↦ h.of_epi S.g
  | coe N =>
    induction N with
    | top => simp
    | coe n =>
      simpa [projectiveDimension_le_iff, ENat.WithBot.add_one_le_natCast_iff,
        projectiveDimension_lt_iff] using fun h2 h1 ↦ hS.hasProjectiveDimensionLT_X₃ n h1 h2

/-- In a short exact complex, the successor of the projective dimension of the left object
is bounded by `max (projectiveDimension S.X₂ + 1) (projectiveDimension S.X₃)`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Dimension/Variantc48e0206be49fae3ef8df58d46696fdafd5f26e55d8e77f9100e4764303a5ddd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Dimension/Variantc48e0206be49fae3ef8df58d46696fdafd5f26e55d8e77f9100e4764303a5ddd.lean#L373).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d76aaad0c7bc75f58d730269d91cf7a3883de6e8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
