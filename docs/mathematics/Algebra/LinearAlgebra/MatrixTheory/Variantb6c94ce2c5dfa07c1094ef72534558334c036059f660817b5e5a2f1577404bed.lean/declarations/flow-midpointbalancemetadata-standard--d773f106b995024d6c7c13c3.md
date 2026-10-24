# Flow.MidpointBalanceMetadata.standard

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3bf17a8d9e67bf7f5ba987835b4b31003ea68b0689eb461c26273b1e79a2de92",
  "kind": "def",
  "lexical_name": "Flow.MidpointBalanceMetadata.standard",
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
  "slug": "flow-midpointbalancemetadata-standard--d773f106b995024d6c7c13c3",
  "source": {
    "blob": "0fae474f941263dc16aeda2a2c7779df7a380dbb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 110,
    "line": 95,
    "path": "GRWTSK/Algebra/LinearAlgebra/Matrix/Variantb6c94ce2c5dfa07c1094ef72534558334c036059f660817b5e5a2f1577404bed.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d773f106b995024d6c7c13c3980be77e75984382ed1830a21465b310e7024760",
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

Occurrence: `declaration:3bf17a8d9e67bf7f5ba987835b4b31003ea68b0689eb461c26273b1e79a2de92`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 95–110.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Flow.MidpointBalanceMetadata.standard :
    Flow.MidpointBalanceMetadata where
  leftBoundary := "Re(s) = 0"
  rightBoundary := "Re(s) = 1"
  midpoint := "Re(s) = 1/2"
  balanceDescription := "balanced midpoint between pole and shell"

/--
finite Möbius determinant bridge.

The triple is:

* `matrix`: the Möbius matrix obtained from the flow tree;
* `midpointBalance`: the symbolic midpoint-balance metadata metadata;
* `tree`: the original symbolic flow tree.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/MatrixTheory/Variantb6c94ce2c5dfa07c1094ef72534558334c036059f660817b5e5a2f1577404bed.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Matrix/Variantb6c94ce2c5dfa07c1094ef72534558334c036059f660817b5e5a2f1577404bed.lean#L95).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0fae474f941263dc16aeda2a2c7779df7a380dbb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
