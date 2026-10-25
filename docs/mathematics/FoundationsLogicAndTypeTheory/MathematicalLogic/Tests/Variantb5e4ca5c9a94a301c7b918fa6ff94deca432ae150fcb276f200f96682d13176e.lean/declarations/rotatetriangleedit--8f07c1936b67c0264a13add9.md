# rotateTriangleEdit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:70296bee6e1b9f8b97d2ba5c9987fc8a3e3492a9d6618b27f790270b8bd3425c",
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
  "slug": "rotatetriangleedit--8f07c1936b67c0264a13add9",
  "source": {
    "blob": "e7a43dd024b8bc4541c6bc26b614e1fda291f02e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 558,
    "line": 540,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Tests/Variantb5e4ca5c9a94a301c7b918fa6ff94deca432ae150fcb276f200f96682d13176e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8f07c1936b67c0264a13add9db1ad435347986c1588de63001834dbea752ee63",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Tests/Variantb5e4ca5c9a94a301c7b918fa6ff94deca432ae150fcb276f200f96682d13176e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:70296bee6e1b9f8b97d2ba5c9987fc8a3e3492a9d6618b27f790270b8bd3425c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 540–558.

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

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Tests/Variantb5e4ca5c9a94a301c7b918fa6ff94deca432ae150fcb276f200f96682d13176e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Tests/Variantb5e4ca5c9a94a301c7b918fa6ff94deca432ae150fcb276f200f96682d13176e.lean#L540).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e7a43dd024b8bc4541c6bc26b614e1fda291f02e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
