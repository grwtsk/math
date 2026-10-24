# Flow.Expression.childEdgesFrom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e97772eb0e11dd925af802420c9a03635d2a5d24e50b164eaf64c3aeac2769f0",
  "kind": "def",
  "lexical_name": "Flow.Expression.childEdgesFrom",
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
  "slug": "flow-expression-childedgesfrom--d935376163c160909408719a",
  "source": {
    "blob": "0fae474f941263dc16aeda2a2c7779df7a380dbb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 187,
    "line": 156,
    "path": "GRWTSK/Algebra/LinearAlgebra/Matrix/Variantb6c94ce2c5dfa07c1094ef72534558334c036059f660817b5e5a2f1577404bed.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d935376163c160909408719a202d42c3475cafb2a929af68cbb04cca10d505eb",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/MatrixTheory/Variantb6c94ce2c5dfa07c1094ef72534558334c036059f660817b5e5a2f1577404bed.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e97772eb0e11dd925af802420c9a03635d2a5d24e50b164eaf64c3aeac2769f0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 156–187.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Flow.Expression.childEdgesFrom
    (root : Nat) :
    Flow.Expression α → List (Nat × Nat)
  | .atom _ => []
  | .nat _ => []
  | .int _ => []
  | .symbol _ => []
  | .variadic _ args =>
      Flow.Expression.childEdgesFromList root (root + 1) args
  | .expBase base exponent _ =>
      let left := root + 1
      let right := root + 1 + Flow.Expression.nodeCount base
      [(root, left), (root, right)] ++
        Flow.Expression.childEdgesFrom left base ++
        Flow.Expression.childEdgesFrom right exponent
  | .binaryAction _ lhs rhs _ =>
      let left := root + 1
      let right := root + 1 + Flow.Expression.nodeCount lhs
      [(root, left), (root, right)] ++
        Flow.Expression.childEdgesFrom left lhs ++
        Flow.Expression.childEdgesFrom right rhs
  | .attend _ t =>
      let child := root + 1
      [(root, child)] ++
        Flow.Expression.childEdgesFrom child t

/--
Parent-child edges for a variadic list of children.

`parent` is the variadic operator node. `next` is the preorder index assigned to
the next child.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/MatrixTheory/Variantb6c94ce2c5dfa07c1094ef72534558334c036059f660817b5e5a2f1577404bed.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Matrix/Variantb6c94ce2c5dfa07c1094ef72534558334c036059f660817b5e5a2f1577404bed.lean#L156).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0fae474f941263dc16aeda2a2c7779df7a380dbb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
