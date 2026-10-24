# copyAction

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:16dcfda77228758a6a7d4b9bca656f5ce054949893dc1a3f0f206efaef6a3fc4",
  "kind": "def",
  "lexical_name": "copyAction",
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
  "slug": "copyaction--02da0e983076b62f4f46c6aa",
  "source": {
    "blob": "091ffb08979bf124739646d8dfb7810d2b3bffa4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 44,
    "line": 32,
    "path": "GRWTSK/Algebra/LinearAlgebra/MatrixSymmetry/Variant8d520f6664e77f867dd5e18dbcfae9524346ff2e480a6ff28c795c8f57302bed.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:02da0e983076b62f4f46c6aaff289d6a25265481864a985c8d7f30d54b5fae0e",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/MatrixSymmetry/Variant8d520f6664e77f867dd5e18dbcfae9524346ff2e480a6ff28c795c8f57302bed.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:16dcfda77228758a6a7d4b9bca656f5ce054949893dc1a3f0f206efaef6a3fc4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 32–44.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def copyAction : MatrixAction where
  Spin := Unit
  decEqSpin := inferInstance
  id := ()
  comp := fun _ _ => ()
  inv := fun _ => ()
  act := fun _ M => M
  id_act := by intro M; rfl
  comp_act := by intro g h M; rfl
  inv_act_left := by intro g M; rfl
  preserves_rows := by intro g M; rfl
  preserves_cols := by intro g M; rfl

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/MatrixSymmetry/Variant8d520f6664e77f867dd5e18dbcfae9524346ff2e480a6ff28c795c8f57302bed.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/MatrixSymmetry/Variant8d520f6664e77f867dd5e18dbcfae9524346ff2e480a6ff28c795c8f57302bed.lean#L32).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `091ffb08979bf124739646d8dfb7810d2b3bffa4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
