# Flow.MobiusInversion

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:98fab42aa4aea48fe6002405a994ed6f2dfe2647de14ac09467b28746e7a0aaa",
  "kind": "structure",
  "lexical_name": "Flow.MobiusInversion",
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
  "slug": "flow-mobiusinversion--26e6a9af4daafa12ad94b0b9",
  "source": {
    "blob": "0fae474f941263dc16aeda2a2c7779df7a380dbb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 279,
    "line": 273,
    "path": "GRWTSK/Algebra/LinearAlgebra/Matrix/Variantb6c94ce2c5dfa07c1094ef72534558334c036059f660817b5e5a2f1577404bed.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:26e6a9af4daafa12ad94b0b9631041eb880f59624fb1300fde24cab549e48251",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/MatrixTheory/Variantb6c94ce2c5dfa07c1094ef72534558334c036059f660817b5e5a2f1577404bed.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:98fab42aa4aea48fe6002405a994ed6f2dfe2647de14ac09467b28746e7a0aaa`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 273–279.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure Flow.MobiusInversion (α : Type u) where
  nodes : Nat
  zeta : Flow.IntMatrix nodes nodes
  mobius : Flow.IntMatrix nodes nodes
  tree : Flow.Expression α

/-- Build the zeta/Möbius inversion package from a flow tree. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/MatrixTheory/Variantb6c94ce2c5dfa07c1094ef72534558334c036059f660817b5e5a2f1577404bed.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Matrix/Variantb6c94ce2c5dfa07c1094ef72534558334c036059f660817b5e5a2f1577404bed.lean#L273).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0fae474f941263dc16aeda2a2c7779df7a380dbb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
