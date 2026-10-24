# AlgHom.mulLeftRightMatrix_inv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d9da2ea64225781d30417d6731e1427c8d99300547cbf4305f0638242356478e",
  "kind": "abbrev",
  "lexical_name": "AlgHom.mulLeftRightMatrix_inv",
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
  "slug": "alghom-mulleftrightmatrix-inv--3cd0ae2c6f18d270bf22d6e4",
  "source": {
    "blob": "460435468fc68ecb838915ceaf3c8e014ad09555",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 37,
    "line": 31,
    "path": "GRWTSK/Algebra/LinearAlgebra/Matrix/Variant6db0d41fd7cd40bafafee2fe2ee6351c66b806d7e07874f6e8cf5bbbfe79d35d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3cd0ae2c6f18d270bf22d6e42d4702fe1a7db92e72339592053594f2f6b6e45f",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/MatrixTheory/Variant6db0d41fd7cd40bafafee2fe2ee6351c66b806d7e07874f6e8cf5bbbfe79d35d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `abbrev` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d9da2ea64225781d30417d6731e1427c8d99300547cbf4305f0638242356478e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 31–37.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
abbrev AlgHom.mulLeftRightMatrix_inv :
    Module.End R (Matrix n n R) →ₗ[R] Matrix n n R ⊗[R] (Matrix n n R)ᵐᵒᵖ where
  toFun f := ∑ ⟨⟨i, j⟩, k, l⟩ : (n × n) × n × n,
    f (single j k 1) i l • (single i j 1) ⊗ₜ[R] op (single k l 1)
  map_add' f1 f2 := by simp [add_smul, Finset.sum_add_distrib]
  map_smul' r f := by simp [MulAction.mul_smul, Finset.smul_sum]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/MatrixTheory/Variant6db0d41fd7cd40bafafee2fe2ee6351c66b806d7e07874f6e8cf5bbbfe79d35d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Matrix/Variant6db0d41fd7cd40bafafee2fe2ee6351c66b806d7e07874f6e8cf5bbbfe79d35d.lean#L31).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `460435468fc68ecb838915ceaf3c8e014ad09555` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
