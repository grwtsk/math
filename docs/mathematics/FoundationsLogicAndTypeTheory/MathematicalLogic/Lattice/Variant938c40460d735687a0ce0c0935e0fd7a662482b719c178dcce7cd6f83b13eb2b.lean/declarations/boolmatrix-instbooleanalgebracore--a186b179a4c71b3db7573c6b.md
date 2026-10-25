# BoolMatrix.instBooleanAlgebraCore

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:563b137867d0275f6b38940a6608a1bc672143e400cc9d3fbfe0f2af4e92debf",
  "kind": "instance",
  "lexical_name": "BoolMatrix.instBooleanAlgebraCore",
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
  "slug": "boolmatrix-instbooleanalgebracore--a186b179a4c71b3db7573c6b",
  "source": {
    "blob": "480aad69801ce73836c33eb2bccceb938aed0ed4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 105,
    "line": 19,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Lattice/Variant938c40460d735687a0ce0c0935e0fd7a662482b719c178dcce7cd6f83b13eb2b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a186b179a4c71b3db7573c6b266a8cf3f76d88bdbdf4510d59a5eb8b3615608b",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Lattice/Variant938c40460d735687a0ce0c0935e0fd7a662482b719c178dcce7cd6f83b13eb2b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:563b137867d0275f6b38940a6608a1bc672143e400cc9d3fbfe0f2af4e92debf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 19–105.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance BoolMatrix.instBooleanAlgebraCore
    [Nonempty (Fin rows)]
    [Nonempty (Fin cols)] :
    BooleanAlgebraCore (BoolMatrix rows cols) where
  join := BoolMatrix.join
  meet := BoolMatrix.meet
  compl := BoolMatrix.compl
  bot := BoolMatrix.zeros
  top := BoolMatrix.ones

  bot_ne_top := by
    intro h
    let i : Fin rows :=
      Classical.choice (inferInstance : Nonempty (Fin rows))
    let j : Fin cols :=
      Classical.choice (inferInstance : Nonempty (Fin cols))
    have hij : BoolMatrix.zeros i j = BoolMatrix.ones i j := by
      exact congrFun (congrFun h i) j
    cases hij

  join_bot := by
    intro A
    funext i
    funext j
    simp [BoolMatrix.join, BoolMatrix.zeros]

  meet_top := by
    intro A
    funext i
    funext j
    simp [BoolMatrix.meet, BoolMatrix.ones]

  join_comm := by
    intro A B
    funext i
    funext j
    simp [BoolMatrix.join]
    cases A i j <;> cases B i j <;> rfl

  meet_comm := by
    intro A B
    funext i
    funext j
    simp [BoolMatrix.meet]
    cases A i j <;> cases B i j <;> rfl

  join_assoc := by
    intro A B C
    funext i
    funext j
    simp [BoolMatrix.join]
    cases A i j <;> cases B i j <;> cases C i j <;> rfl

  meet_assoc := by
    intro A B C
    funext i
    funext j
    simp [BoolMatrix.meet]
    cases A i j <;> cases B i j <;> cases C i j <;> rfl

  join_meet_distrib := by
    intro A B C
    funext i
    funext j
    simp [BoolMatrix.join, BoolMatrix.meet]
    cases A i j <;> cases B i j <;> cases C i j <;> rfl

  meet_join_distrib := by
    intro A B C
    funext i
    funext j
    simp [BoolMatrix.join, BoolMatrix.meet]
    cases A i j <;> cases B i j <;> cases C i j <;> rfl

  join_compl := by
    intro A
    funext i
    funext j
    simp [BoolMatrix.join, BoolMatrix.ones, BoolMatrix.compl]

  meet_compl := by
    intro A
    funext i
    funext j
    simp [BoolMatrix.meet, BoolMatrix.zeros, BoolMatrix.compl]

end Surface.Boolean
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Lattice/Variant938c40460d735687a0ce0c0935e0fd7a662482b719c178dcce7cd6f83b13eb2b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Lattice/Variant938c40460d735687a0ce0c0935e0fd7a662482b719c178dcce7cd6f83b13eb2b.lean#L19).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `480aad69801ce73836c33eb2bccceb938aed0ed4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
