# unaryBinaryMatrixOfNat

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:761b3d707f0a95574db421468e167647e3b7bde9ca8d9e9a99439f060d1e29d2",
  "kind": "def",
  "lexical_name": "unaryBinaryMatrixOfNat",
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
  "slug": "unarybinarymatrixofnat--c9ddc2cd73c29d4b90ffd5e1",
  "source": {
    "blob": "1da403a8fd8f3521259def16038e187387599344",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 29,
    "line": 25,
    "path": "GRWTSK/Algebra/LinearAlgebra/BinaryMatrixEncoding/Varianta3e7ec4deedacc19e257600b99e78daa6ea0dab832d429da572921781df8347a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c9ddc2cd73c29d4b90ffd5e19d1723543415e6e980dc7be140d02694c4019ded",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/BinaryMatrixEncoding/Varianta3e7ec4deedacc19e257600b99e78daa6ea0dab832d429da572921781df8347a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:761b3d707f0a95574db421468e167647e3b7bde9ca8d9e9a99439f060d1e29d2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 25–29.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def unaryBinaryMatrixOfNat
    (n : NumberTheory.PositiveNat) :
    Carrier.BinaryMatrix :=
  Carrier.BinaryMatrix.constant 1 n.val 1

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/BinaryMatrixEncoding/Varianta3e7ec4deedacc19e257600b99e78daa6ea0dab832d429da572921781df8347a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/BinaryMatrixEncoding/Varianta3e7ec4deedacc19e257600b99e78daa6ea0dab832d429da572921781df8347a.lean#L25).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1da403a8fd8f3521259def16038e187387599344` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
