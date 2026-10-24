# CertifiedEncoding

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1de5d67768191e6fabeaeb604b572d079d78d031130e4d9f2f3fb46df76f36cf",
  "kind": "structure",
  "lexical_name": "CertifiedEncoding",
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
  "slug": "certifiedencoding--f9d1fafcc4bda5a1b6275f0c",
  "source": {
    "blob": "326606182a7776b4b0164b77e99454f5848f9af3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 20,
    "line": 14,
    "path": "GRWTSK/Algebra/LinearAlgebra/EncodingProofs/Variant869f71b77a25fa558a2f0393698d07337ae6c5e4e2a016973adcf9a73a6e17c3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f9d1fafcc4bda5a1b6275f0c72cb2fbcf4d76cd64ca0179e46ea05b08379d398",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/EncodingProofs/Variant869f71b77a25fa558a2f0393698d07337ae6c5e4e2a016973adcf9a73a6e17c3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1de5d67768191e6fabeaeb604b572d079d78d031130e4d9f2f3fb46df76f36cf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 14–20.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure CertifiedEncoding (s : ElementarySymbol) extends EncodingData s where
  arity_eq : arity = elementaryArity s
  size_eq : size = tree.size
  depth_eq : depth = tree.depth
  wellFormed : EMLCircuitMatrix.WellFormed matrix
  roundTrip : matrixToTree? matrix = some tree

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/EncodingProofs/Variant869f71b77a25fa558a2f0393698d07337ae6c5e4e2a016973adcf9a73a6e17c3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/EncodingProofs/Variant869f71b77a25fa558a2f0393698d07337ae6c5e4e2a016973adcf9a73a6e17c3.lean#L14).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `326606182a7776b4b0164b77e99454f5848f9af3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
