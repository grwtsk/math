# rotateTriangleEdit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:15542ed68989cad6ef95195fdf2ace46860a30bae0d9c9be53993a079bab4048",
  "kind": "def",
  "lexical_name": "rotateTriangleEdit",
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
  "slug": "rotatetriangleedit--06b74a6b210a957a93e6e377",
  "source": {
    "blob": "adffd5bfec6db409a70896172699b1c5e3744f2f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 558,
    "line": 540,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Tests/Varianta42caa3a4a529071682d6986cf1b058a2a3eb3df43ad4b61dd968f078af6183a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:06b74a6b210a957a93e6e37712a404645d44bc8bb9f2ae418bd804124e447b41",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Tests/Varianta42caa3a4a529071682d6986cf1b058a2a3eb3df43ad4b61dd968f078af6183a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:15542ed68989cad6ef95195fdf2ace46860a30bae0d9c9be53993a079bab4048`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 540–558.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def rotateTriangleEdit : Equiv.Perm TriangleEdit where
  toFun
    | .e01 => .e12
    | .e12 => .e20
    | .e20 => .e01
    | .e10 => .e21
    | .e21 => .e02
    | .e02 => .e10
  invFun
    | .e01 => .e20
    | .e12 => .e01
    | .e20 => .e12
    | .e10 => .e02
    | .e21 => .e10
    | .e02 => .e21
  left_inv edit := by cases edit <;> rfl
  right_inv edit := by cases edit <;> rfl

/-- The vertex rotation lifts compatibly to edits and the triangle relation. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Tests/Varianta42caa3a4a529071682d6986cf1b058a2a3eb3df43ad4b61dd968f078af6183a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Tests/Varianta42caa3a4a529071682d6986cf1b058a2a3eb3df43ad4b61dd968f078af6183a.lean#L540).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `adffd5bfec6db409a70896172699b1c5e3744f2f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
