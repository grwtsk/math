# skewAdjointMatricesSubmodule'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f5cc427c58382a61b47e9723a6e567a7484ef9d9d9690afcabe9a1600c281962",
  "kind": "def",
  "lexical_name": "skewAdjointMatricesSubmodule'",
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
  "slug": "skewadjointmatricessubmodule--a09ddbf2baadabcfa9857459",
  "source": {
    "blob": "fef72ee7fe08a7925e10a3b024df46967f9f71eb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 525,
    "line": 522,
    "path": "GRWTSK/Algebra/LinearAlgebra/BilinearForm/Variantd74f7f24b205ad454e34f72401343a2f5a656dbf1788b129a67f8bda02856f88.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a09ddbf2baadabcfa98574594965b6e04c2cf64bab33d938e7cdcb90fed63795",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/BilinearForm/Variantd74f7f24b205ad454e34f72401343a2f5a656dbf1788b129a67f8bda02856f88.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f5cc427c58382a61b47e9723a6e567a7484ef9d9d9690afcabe9a1600c281962`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 522–525.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def skewAdjointMatricesSubmodule' : Submodule R₃ (Matrix n n R₃) :=
  pairSelfAdjointMatricesSubmodule (-J) J
#align skew_adjoint_matrices_submodule' skewAdjointMatricesSubmodule'

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/BilinearForm/Variantd74f7f24b205ad454e34f72401343a2f5a656dbf1788b129a67f8bda02856f88.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/BilinearForm/Variantd74f7f24b205ad454e34f72401343a2f5a656dbf1788b129a67f8bda02856f88.lean#L522).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fef72ee7fe08a7925e10a3b024df46967f9f71eb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
