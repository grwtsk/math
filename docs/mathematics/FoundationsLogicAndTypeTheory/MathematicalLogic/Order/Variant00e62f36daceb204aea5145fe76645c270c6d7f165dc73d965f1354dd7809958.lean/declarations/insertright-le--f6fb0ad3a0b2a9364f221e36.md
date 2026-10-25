# insertRight_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6897868e-71ac-662e-b7b1-b7bdcd8b6037",
  "kind": "lemma",
  "lexical_name": "insertRight_le",
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
  "slug": "insertright-le--f6fb0ad3a0b2a9364f221e36",
  "source": {
    "blob": "d42f9ef2c98893c853896bc87f608cbb790df2c7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 705,
    "line": 688,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Order/Variant00e62f36daceb204aea5145fe76645c270c6d7f165dc73d965f1354dd7809958.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f6fb0ad3a0b2a9364f221e36b5d02d88788ae95ba22a2652392f22572fda112e",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Order/Variant00e62f36daceb204aea5145fe76645c270c6d7f165dc73d965f1354dd7809958.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6897868e-71ac-662e-b7b1-b7bdcd8b6037`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 688–705.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma insertRight_le (x x' : PGame) : insertRight x x' ≤ x := by
  rw [le_def]
  constructor
  · intro j
    left
    rcases x with ⟨xl, xr, xL, xR⟩
    simp only [leftMoves_mk, moveLeft_mk, insertRight]
    use j
  · intro i
    right
    rcases x with ⟨xl, xr, xL, xR⟩
    simp only [insertRight, rightMoves_mk, moveRight_mk, Sum.exists, Sum.elim_inl]
    left
    use i

/-- Adding a gift horse left option does not change the value of `x`. A gift horse left option is
a game `x'` with `x' ⧏ x`. It is called "gift horse" because it seems like Left has gotten the
"gift" of a new option, but actually the value of the game did not change. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Order/Variant00e62f36daceb204aea5145fe76645c270c6d7f165dc73d965f1354dd7809958.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Order/Variant00e62f36daceb204aea5145fe76645c270c6d7f165dc73d965f1354dd7809958.lean#L688).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d42f9ef2c98893c853896bc87f608cbb790df2c7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
