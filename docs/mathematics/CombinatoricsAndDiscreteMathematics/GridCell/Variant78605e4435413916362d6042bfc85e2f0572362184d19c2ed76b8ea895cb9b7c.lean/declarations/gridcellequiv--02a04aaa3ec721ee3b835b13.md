# gridCellEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6633e2c83ff0955430c5ed697f6c38273beb0e998a6cf851094c8aafe7114b46",
  "kind": "def",
  "lexical_name": "gridCellEquiv",
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
  "slug": "gridcellequiv--02a04aaa3ec721ee3b835b13",
  "source": {
    "blob": "6819c7419d2263bf5c434536f61ba23c45c56da8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 29,
    "line": 23,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GridCell/Variant78605e4435413916362d6042bfc85e2f0572362184d19c2ed76b8ea895cb9b7c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:02a04aaa3ec721ee3b835b1381088a20e65a4fa23936778f1d1da2e5f0272a1b",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/GridCell/Variant78605e4435413916362d6042bfc85e2f0572362184d19c2ed76b8ea895cb9b7c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6633e2c83ff0955430c5ed697f6c38273beb0e998a6cf851094c8aafe7114b46`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 23–29.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def gridCellEquiv (rows columns : Nat) :
    Fin rows × Fin columns ≃ GridCell rows columns where
  toFun coordinates := ⟨coordinates.1, coordinates.2⟩
  invFun cell := (cell.row, cell.column)
  left_inv coordinates := by cases coordinates; rfl
  right_inv cell := by cases cell; rfl

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/GridCell/Variant78605e4435413916362d6042bfc85e2f0572362184d19c2ed76b8ea895cb9b7c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/GridCell/Variant78605e4435413916362d6042bfc85e2f0572362184d19c2ed76b8ea895cb9b7c.lean#L23).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6819c7419d2263bf5c434536f61ba23c45c56da8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
