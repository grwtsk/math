# Tree.cellVariableTree

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f84237a0324fcd1f113f9ec15181c3082b9cb844d5c67508978299264bab2a37",
  "kind": "def",
  "lexical_name": "Tree.cellVariableTree",
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
  "slug": "tree-cellvariabletree--2b4bbca56db432613be33d45",
  "source": {
    "blob": "18d88f02fc6b2c2a90b143d61b14410ff5188733",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 16,
    "line": 9,
    "path": "GRWTSK/Algebra/LinearAlgebra/MatrixEncoding/Varianta96a04f0f59e2a9dad6bdc4020571e0836a6bb420938284dd70c3629176a3478.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2b4bbca56db432613be33d459f12094a0b39a14f52556b8aff4d51d84edbd753",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/MatrixEncoding/Varianta96a04f0f59e2a9dad6bdc4020571e0836a6bb420938284dd70c3629176a3478.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f84237a0324fcd1f113f9ec15181c3082b9cb844d5c67508978299264bab2a37`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 9–16.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Tree.cellVariableTree
    {rows cols : Nat}
    (i : Fin rows)
    (j : Fin cols) :
    Tree (Fin rows × Fin cols) :=
  .var (i, j)

/-- Parse a matrix cell as a constant leaf. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/MatrixEncoding/Varianta96a04f0f59e2a9dad6bdc4020571e0836a6bb420938284dd70c3629176a3478.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/MatrixEncoding/Varianta96a04f0f59e2a9dad6bdc4020571e0836a6bb420938284dd70c3629176a3478.lean#L9).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `18d88f02fc6b2c2a90b143d61b14410ff5188733` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
