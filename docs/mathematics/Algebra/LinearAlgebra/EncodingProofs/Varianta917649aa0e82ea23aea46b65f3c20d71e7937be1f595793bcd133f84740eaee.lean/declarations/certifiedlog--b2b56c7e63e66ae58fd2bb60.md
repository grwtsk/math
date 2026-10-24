# certifiedLog

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:01e4fe44e387ac0669ea3bfb1e495100397aa9720b45539604874619be356701",
  "kind": "def",
  "lexical_name": "certifiedLog",
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
  "slug": "certifiedlog--b2b56c7e63e66ae58fd2bb60",
  "source": {
    "blob": "995df55754a7266334c5598a93b07e46a672325c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 95,
    "line": 80,
    "path": "GRWTSK/Algebra/LinearAlgebra/EncodingProofs/Varianta917649aa0e82ea23aea46b65f3c20d71e7937be1f595793bcd133f84740eaee.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b2b56c7e63e66ae58fd2bb605cc4a2a39e91e678c06fc963a03745d8e551d1bc",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/EncodingProofs/Varianta917649aa0e82ea23aea46b65f3c20d71e7937be1f595793bcd133f84740eaee.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:01e4fe44e387ac0669ea3bfb1e495100397aa9720b45539604874619be356701`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 80–95.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def certifiedLog : CertifiedEncoding ElementarySymbol.log :=
  let packed := treeToMatrix emlLogTree
  {
    arity := 1
    tree := emlLogTree
    n := packed.1
    matrix := packed.2
    size := emlLogTree.size
    depth := emlLogTree.depth
    arity_eq := rfl
    size_eq := rfl
    depth_eq := rfl
    wellFormed := treeToMatrix_wellFormed emlLogTree
    roundTrip := matrixToTree_treeToMatrix emlLogTree
  }

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/EncodingProofs/Varianta917649aa0e82ea23aea46b65f3c20d71e7937be1f595793bcd133f84740eaee.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/EncodingProofs/Varianta917649aa0e82ea23aea46b65f3c20d71e7937be1f595793bcd133f84740eaee.lean#L80).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `995df55754a7266334c5598a93b07e46a672325c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
