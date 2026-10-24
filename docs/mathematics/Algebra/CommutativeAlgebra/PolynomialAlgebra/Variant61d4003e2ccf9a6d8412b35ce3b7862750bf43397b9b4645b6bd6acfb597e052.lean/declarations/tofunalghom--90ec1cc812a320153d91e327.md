# toFunAlgHom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b9933b4bca4b5ea72d0129bb0beeedfc5e8df47cbeafc652552384e4a2107026",
  "kind": "def",
  "lexical_name": "toFunAlgHom",
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
  "slug": "tofunalghom--90ec1cc812a320153d91e327",
  "source": {
    "blob": "cd69b09056803b3d6e7cbdc8a3c093297c53e6a6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 100,
    "line": 97,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/PolynomialAlgebra/Variant61d4003e2ccf9a6d8412b35ce3b7862750bf43397b9b4645b6bd6acfb597e052.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:90ec1cc812a320153d91e32767d1ed3ed62ce8edc6a874d8d8e80c5c00abca48",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/PolynomialAlgebra/Variant61d4003e2ccf9a6d8412b35ce3b7862750bf43397b9b4645b6bd6acfb597e052.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b9933b4bca4b5ea72d0129bb0beeedfc5e8df47cbeafc652552384e4a2107026`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 97–100.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def toFunAlgHom : A ⊗[R] R[X] →ₐ[R] A[X] :=
  algHomOfLinearMapTensorProduct (toFunLinear R A) (toFunLinear_mul_tmul_mul R A)
    (toFunLinear_one_tmul_one R A)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/PolynomialAlgebra/Variant61d4003e2ccf9a6d8412b35ce3b7862750bf43397b9b4645b6bd6acfb597e052.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/PolynomialAlgebra/Variant61d4003e2ccf9a6d8412b35ce3b7862750bf43397b9b4645b6bd6acfb597e052.lean#L97).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cd69b09056803b3d6e7cbdc8a3c093297c53e6a6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
