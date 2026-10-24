# charmatrix

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2637709939f796a4d3f1ff59948cae9613efa17ff34a9392d2c9f811a5283e9e",
  "kind": "def",
  "lexical_name": "charmatrix",
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
  "slug": "charmatrix--fa0e89d6b5eee35c8f016206",
  "source": {
    "blob": "e71aeb47f18cbeed6f8e30ec5d14863bbdbe4daa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 58,
    "line": 55,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variantb8a5da53da93f230d93d199fde778a3ac249455b5191332a91637f6ffce73b01.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:fa0e89d6b5eee35c8f0162068b3cef70cc80bc6b50c1a38922b2b2e83d3f5f4d",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basic/Variantb8a5da53da93f230d93d199fde778a3ac249455b5191332a91637f6ffce73b01.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2637709939f796a4d3f1ff59948cae9613efa17ff34a9392d2c9f811a5283e9e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 55–58.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def charmatrix (M : Matrix n n R) : Matrix n n R[X] :=
  Matrix.scalar n (X : R[X]) - (C : R →+* R[X]).mapMatrix M
#align charmatrix charmatrix

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basic/Variantb8a5da53da93f230d93d199fde778a3ac249455b5191332a91637f6ffce73b01.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basic/Variantb8a5da53da93f230d93d199fde778a3ac249455b5191332a91637f6ffce73b01.lean#L55).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e71aeb47f18cbeed6f8e30ec5d14863bbdbe4daa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
