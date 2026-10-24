# isStrictOrder

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:66f184ed45e80ffb1927bf5882cbc416ea102255366504b23d16a82fc83ce942",
  "kind": "instance",
  "lexical_name": "isStrictOrder",
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
  "slug": "isstrictorder--a2abb2a381be330d9a3eefd7",
  "source": {
    "blob": "f7bd4dc6bb2d565d22e9653c614e131370121497",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 125,
    "line": 112,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DegLex/Variant8dddba9d473627661048ae8d19fd7ff9e305287808f5fbef8ef43cd2f5dfa4cc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a2abb2a381be330d9a3eefd707a9c8126beaa329ad6b355549b6d110cba5e1f6",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DegLex/Variant8dddba9d473627661048ae8d19fd7ff9e305287808f5fbef8ef43cd2f5dfa4cc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:66f184ed45e80ffb1927bf5882cbc416ea102255366504b23d16a82fc83ce942`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 112–125.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance isStrictOrder : IsStrictOrder (DegLex (α →₀ ℕ)) (· < ·) where
  irrefl := fun a ↦ by simp [lt_def]
  trans := by
    intro a b c hab hbc
    simp only [lt_iff] at hab hbc ⊢
    rcases hab with (hab | hab)
    · rcases hbc with (hbc | hbc)
      · left; exact lt_trans hab hbc
      · left; exact lt_of_lt_of_eq hab hbc.1
    · rcases hbc with (hbc | hbc)
      · left; exact lt_of_eq_of_lt hab.1 hbc
      · right; exact ⟨Eq.trans hab.1 hbc.1, lt_trans hab.2 hbc.2⟩

/-- The linear order on `Finsupp`s obtained by the homogeneous lexicographic ordering. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DegLex/Variant8dddba9d473627661048ae8d19fd7ff9e305287808f5fbef8ef43cd2f5dfa4cc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DegLex/Variant8dddba9d473627661048ae8d19fd7ff9e305287808f5fbef8ef43cd2f5dfa4cc.lean#L112).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f7bd4dc6bb2d565d22e9653c614e131370121497` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
