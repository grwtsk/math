# Flow.Expression.nodeCount

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6700e5e5f88190df6d6d06768ae0eeca9b7d7cf76707e6b1db4c327a33abe644",
  "kind": "def",
  "lexical_name": "Flow.Expression.nodeCount",
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
  "slug": "flow-expression-nodecount--03d652c1554ef5f42e97a46e",
  "source": {
    "blob": "ed978317263c34ccc03e51d12a7f49335f560770",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 130,
    "line": 113,
    "path": "GRWTSK/Algebra/LinearAlgebra/Matrix/Variant0e8132f69aaf88674da35a49e11c73402e13d18ecf307933946c240d506ba7c1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:03d652c1554ef5f42e97a46e3339af78e98b2f134f524ad56b32018e24602474",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/MatrixTheory/Variant0e8132f69aaf88674da35a49e11c73402e13d18ecf307933946c240d506ba7c1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6700e5e5f88190df6d6d06768ae0eeca9b7d7cf76707e6b1db4c327a33abe644`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 113–130.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Flow.Expression.nodeCount :
    Flow.Expression α → Nat
  | .atom _ => 1
  | .nat _ => 1
  | .int _ => 1
  | .symbol _ => 1
  | .variadic _ args =>
      1 + Flow.Expression.nodeCountList args
  | .expBase base exponent _ =>
      1 + Flow.Expression.nodeCount base +
        Flow.Expression.nodeCount exponent
  | .binaryAction _ lhs rhs _ =>
      1 + Flow.Expression.nodeCount lhs +
        Flow.Expression.nodeCount rhs
  | .attend _ t =>
      1 + Flow.Expression.nodeCount t

/-- Number of preorder nodes in a list of flow trees. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/MatrixTheory/Variant0e8132f69aaf88674da35a49e11c73402e13d18ecf307933946c240d506ba7c1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Matrix/Variant0e8132f69aaf88674da35a49e11c73402e13d18ecf307933946c240d506ba7c1.lean#L113).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ed978317263c34ccc03e51d12a7f49335f560770` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
