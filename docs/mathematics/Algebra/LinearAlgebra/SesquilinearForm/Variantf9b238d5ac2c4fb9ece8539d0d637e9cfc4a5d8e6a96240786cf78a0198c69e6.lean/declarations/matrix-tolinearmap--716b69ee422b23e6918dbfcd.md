# Matrix.toLinearMap₂'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:70862e6fba5dcc6fcacb29b3374fa0dce7551f6f3649cd2282df0aa32091018c",
  "kind": "def",
  "lexical_name": "Matrix.toLinearMap₂'",
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
  "slug": "matrix-tolinearmap--716b69ee422b23e6918dbfcd",
  "source": {
    "blob": "b90c06cd39f14a71893be45074492f8f9967e604",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 188,
    "line": 185,
    "path": "GRWTSK/Algebra/LinearAlgebra/SesquilinearForm/Variantf9b238d5ac2c4fb9ece8539d0d637e9cfc4a5d8e6a96240786cf78a0198c69e6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:716b69ee422b23e6918dbfcd6a43e146a0c24bca601d1302b93331859e0d8943",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/SesquilinearForm/Variantf9b238d5ac2c4fb9ece8539d0d637e9cfc4a5d8e6a96240786cf78a0198c69e6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:70862e6fba5dcc6fcacb29b3374fa0dce7551f6f3649cd2282df0aa32091018c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 185–188.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Matrix.toLinearMap₂' : Matrix n m R ≃ₗ[R] (n → R) →ₗ[R] (m → R) →ₗ[R] R :=
  LinearMap.toMatrix₂'.symm
#align matrix.to_linear_map₂' Matrix.toLinearMap₂'

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/SesquilinearForm/Variantf9b238d5ac2c4fb9ece8539d0d637e9cfc4a5d8e6a96240786cf78a0198c69e6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/SesquilinearForm/Variantf9b238d5ac2c4fb9ece8539d0d637e9cfc4a5d8e6a96240786cf78a0198c69e6.lean#L185).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b90c06cd39f14a71893be45074492f8f9967e604` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
