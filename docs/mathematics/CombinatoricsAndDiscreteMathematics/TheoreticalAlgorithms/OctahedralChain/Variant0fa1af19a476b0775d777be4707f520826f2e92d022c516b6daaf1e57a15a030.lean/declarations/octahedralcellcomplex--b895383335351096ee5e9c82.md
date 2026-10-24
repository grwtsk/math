# octahedralCellComplex

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:792750f975f65f7ffe3e394ae8bc00320c5edf1f884ed4ffec44d22a8ffa2878",
  "kind": "def",
  "lexical_name": "octahedralCellComplex",
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
  "slug": "octahedralcellcomplex--b895383335351096ee5e9c82",
  "source": {
    "blob": "ebd7534f8f90c479521f2b0bc134d62e9d7ffdcd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 183,
    "line": 173,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OctahedralChain/Variant0fa1af19a476b0775d777be4707f520826f2e92d022c516b6daaf1e57a15a030.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b895383335351096ee5e9c82152c4333e10e7012bc1bb43d31bc44e2bd53cf50",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OctahedralChain/Variant0fa1af19a476b0775d777be4707f520826f2e92d022c516b6daaf1e57a15a030.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:792750f975f65f7ffe3e394ae8bc00320c5edf1f884ed4ffec44d22a8ffa2878`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 173–183.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def octahedralCellComplex : FiniteCellComplex where
  Cell := OctahedralCell
  cellLabel := octahedralCellLabel
  boundaryCells := octahedralBoundaryCells
  dimensionBound := 2
  finiteSound := OctahedralFiniteSound
  finiteSoundProof := octahedralFiniteSoundProof

/-! ## Closed fundamental chain -/

/-- The oriented fundamental two-chain of the octahedron. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OctahedralChain/Variant0fa1af19a476b0775d777be4707f520826f2e92d022c516b6daaf1e57a15a030.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OctahedralChain/Variant0fa1af19a476b0775d777be4707f520826f2e92d022c516b6daaf1e57a15a030.lean#L173).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ebd7534f8f90c479521f2b0bc134d62e9d7ffdcd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
