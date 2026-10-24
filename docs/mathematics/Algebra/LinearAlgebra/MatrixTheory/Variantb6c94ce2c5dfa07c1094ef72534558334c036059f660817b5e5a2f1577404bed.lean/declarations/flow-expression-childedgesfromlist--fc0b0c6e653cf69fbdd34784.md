# Flow.Expression.childEdgesFromList

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b813d316df36f23edc951f1f1591bda27f3f6fbbf627c6524f28bd6b58fbc158",
  "kind": "def",
  "lexical_name": "Flow.Expression.childEdgesFromList",
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
  "slug": "flow-expression-childedgesfromlist--fc0b0c6e653cf69fbdd34784",
  "source": {
    "blob": "0fae474f941263dc16aeda2a2c7779df7a380dbb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 202,
    "line": 188,
    "path": "GRWTSK/Algebra/LinearAlgebra/Matrix/Variantb6c94ce2c5dfa07c1094ef72534558334c036059f660817b5e5a2f1577404bed.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:fc0b0c6e653cf69fbdd34784b790bf08333c5b227e493d5e2664048ea8ba61aa",
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

Occurrence: `declaration:b813d316df36f23edc951f1f1591bda27f3f6fbbf627c6524f28bd6b58fbc158`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 188–202.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Flow.Expression.childEdgesFromList
    (parent next : Nat) :
    List (Flow.Expression α) → List (Nat × Nat)
  | [] => []
  | t :: ts =>
      [(parent, next)] ++
        Flow.Expression.childEdgesFrom next t ++
        Flow.Expression.childEdgesFromList
          parent
          (next + Flow.Expression.nodeCount t)
          ts

end

/-- Parent-child edges of a flow tree, rooted at preorder index `0`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/MatrixTheory/Variantb6c94ce2c5dfa07c1094ef72534558334c036059f660817b5e5a2f1577404bed.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Matrix/Variantb6c94ce2c5dfa07c1094ef72534558334c036059f660817b5e5a2f1577404bed.lean#L188).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0fae474f941263dc16aeda2a2c7779df7a380dbb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
