# bitMatrixAbstraction

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:fa4cc2317c6382aa82e4237bee8b48bb3a70baf2ff16393f8cfe1773cf307df0",
  "kind": "def",
  "lexical_name": "bitMatrixAbstraction",
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
  "slug": "bitmatrixabstraction--bbf22aeb6cec90f0b3e27785",
  "source": {
    "blob": "67897ec49ce66040f27550f0da621e15b529ae65",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 43,
    "line": 40,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/Adapters/Variant930055f720c026b9667b40aec036c9a9b17430b86be51704cf0f0fa441c2b7a6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:bbf22aeb6cec90f0b3e27785b548422a5eb5d0edcc077360cf1ac3a9850c7575",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/Adapters/Variant930055f720c026b9667b40aec036c9a9b17430b86be51704cf0f0fa441c2b7a6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:fa4cc2317c6382aa82e4237bee8b48bb3a70baf2ff16393f8cfe1773cf307df0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 40–43.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def bitMatrixAbstraction (m n : Nat) :
    Spec (BitMatrix.ArrayBacked m n) (BitMatrix m n) :=
  (BitMatrix.Adapters.mapRefinement.{0} m n).toComparisonSpec

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/Adapters/Variant930055f720c026b9667b40aec036c9a9b17430b86be51704cf0f0fa441c2b7a6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/Adapters/Variant930055f720c026b9667b40aec036c9a9b17430b86be51704cf0f0fa441c2b7a6.lean#L40).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `67897ec49ce66040f27550f0da621e15b529ae65` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
