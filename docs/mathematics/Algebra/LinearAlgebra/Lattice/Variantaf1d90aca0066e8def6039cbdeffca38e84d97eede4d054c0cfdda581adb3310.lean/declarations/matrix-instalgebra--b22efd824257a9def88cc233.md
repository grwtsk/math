# Matrix.instAlgebra

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:cc5b5ca4ef78a05d148c340dfc616cb61d214a07ee1ecd0030592dfe781016c2",
  "kind": "instance",
  "lexical_name": "Matrix.instAlgebra",
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
  "slug": "matrix-instalgebra--b22efd824257a9def88cc233",
  "source": {
    "blob": "aaf117348e310d776dfea8991e6b604a103d1de5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 98,
    "line": 12,
    "path": "GRWTSK/Algebra/LinearAlgebra/Lattice/Variantaf1d90aca0066e8def6039cbdeffca38e84d97eede4d054c0cfdda581adb3310.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b22efd824257a9def88cc2339fbec4244d6fead44aac11610e73b173f544635f",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Lattice/Variantaf1d90aca0066e8def6039cbdeffca38e84d97eede4d054c0cfdda581adb3310.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:cc5b5ca4ef78a05d148c340dfc616cb61d214a07ee1ecd0030592dfe781016c2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 12–98.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance Matrix.instAlgebra
    [Nonempty (Fin rows)]
    [Nonempty (Fin cols)] :
    Algebra (Matrix rows cols) where
  join := Matrix.join
  meet := Matrix.meet
  compl := Matrix.compl
  bot := Matrix.zeros
  top := Matrix.ones

  bot_ne_top := by
    intro h
    let i : Fin rows :=
      Classical.choice (inferInstance : Nonempty (Fin rows))
    let j : Fin cols :=
      Classical.choice (inferInstance : Nonempty (Fin cols))
    have hij : Matrix.zeros i j = Matrix.ones i j := by
      exact congrFun (congrFun h i) j
    cases hij

  join_bot := by
    intro A
    funext i
    funext j
    simp [Matrix.join, Matrix.zeros]

  meet_top := by
    intro A
    funext i
    funext j
    simp [Matrix.meet, Matrix.ones]

  join_comm := by
    intro A B
    funext i
    funext j
    simp [Matrix.join]
    cases A i j <;> cases B i j <;> rfl

  meet_comm := by
    intro A B
    funext i
    funext j
    simp [Matrix.meet]
    cases A i j <;> cases B i j <;> rfl

  join_assoc := by
    intro A B C
    funext i
    funext j
    simp [Matrix.join]
    cases A i j <;> cases B i j <;> cases C i j <;> rfl

  meet_assoc := by
    intro A B C
    funext i
    funext j
    simp [Matrix.meet]
    cases A i j <;> cases B i j <;> cases C i j <;> rfl

  join_meet_distrib := by
    intro A B C
    funext i
    funext j
    simp [Matrix.join, Matrix.meet]
    cases A i j <;> cases B i j <;> cases C i j <;> rfl

  meet_join_distrib := by
    intro A B C
    funext i
    funext j
    simp [Matrix.join, Matrix.meet]
    cases A i j <;> cases B i j <;> cases C i j <;> rfl

  join_compl := by
    intro A
    funext i
    funext j
    simp [Matrix.join, Matrix.ones, Matrix.compl]

  meet_compl := by
    intro A
    funext i
    funext j
    simp [Matrix.meet, Matrix.zeros, Matrix.compl]

end Boolean
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Lattice/Variantaf1d90aca0066e8def6039cbdeffca38e84d97eede4d054c0cfdda581adb3310.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Lattice/Variantaf1d90aca0066e8def6039cbdeffca38e84d97eede4d054c0cfdda581adb3310.lean#L12).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `aaf117348e310d776dfea8991e6b604a103d1de5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
