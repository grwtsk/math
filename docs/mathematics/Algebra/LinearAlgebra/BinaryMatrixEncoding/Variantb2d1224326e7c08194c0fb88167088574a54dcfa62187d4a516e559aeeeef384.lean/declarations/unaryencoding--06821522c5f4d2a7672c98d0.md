# unaryEncoding

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ed1052a6cb572be7a40ddea1cc8f2382ee0a31d00be03a6c3703865fbcd92212",
  "kind": "def",
  "lexical_name": "unaryEncoding",
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
  "slug": "unaryencoding--06821522c5f4d2a7672c98d0",
  "source": {
    "blob": "093032c2a7891f8e035c224d866d0d462409fa4b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 53,
    "line": 44,
    "path": "GRWTSK/Algebra/LinearAlgebra/BinaryMatrixEncoding/Variantb2d1224326e7c08194c0fb88167088574a54dcfa62187d4a516e559aeeeef384.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:06821522c5f4d2a7672c98d0e37abb9991041740edacb8521f27bc7250af0f64",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/BinaryMatrixEncoding/Variantb2d1224326e7c08194c0fb88167088574a54dcfa62187d4a516e559aeeeef384.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ed1052a6cb572be7a40ddea1cc8f2382ee0a31d00be03a6c3703865fbcd92212`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 44–53.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def unaryEncoding
    (n : NumberTheory.PositiveNat) :
    BinaryMatrixArithmeticEncoding where
  number := n
  representation := encodePositiveNat n
  matrix := unaryBinaryMatrixOfNat n
  decoded_matches := decode_encode_positiveNat n

end CellularArithmetic
end Folder
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/BinaryMatrixEncoding/Variantb2d1224326e7c08194c0fb88167088574a54dcfa62187d4a516e559aeeeef384.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/BinaryMatrixEncoding/Variantb2d1224326e7c08194c0fb88167088574a54dcfa62187d4a516e559aeeeef384.lean#L44).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `093032c2a7891f8e035c224d866d0d462409fa4b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
