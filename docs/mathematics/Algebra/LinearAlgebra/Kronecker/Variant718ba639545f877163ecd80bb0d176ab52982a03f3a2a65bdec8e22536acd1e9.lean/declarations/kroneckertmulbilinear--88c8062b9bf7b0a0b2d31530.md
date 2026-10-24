# kroneckerTMulBilinear

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c09c36981321cd4e54aae6e341b6cefc6aadc3b953584c267083dcf4d82e7f32",
  "kind": "def",
  "lexical_name": "kroneckerTMulBilinear",
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
  "slug": "kroneckertmulbilinear--88c8062b9bf7b0a0b2d31530",
  "source": {
    "blob": "b4bd0e04d17c2cff8d335bf7e20dc4d6a5cafad6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 472,
    "line": 463,
    "path": "GRWTSK/Algebra/LinearAlgebra/Kronecker/Variant718ba639545f877163ecd80bb0d176ab52982a03f3a2a65bdec8e22536acd1e9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:88c8062b9bf7b0a0b2d315305ba26eaa2a33a9f1430f6b81fa2ea664ed09e132",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Kronecker/Variant718ba639545f877163ecd80bb0d176ab52982a03f3a2a65bdec8e22536acd1e9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c09c36981321cd4e54aae6e341b6cefc6aadc3b953584c267083dcf4d82e7f32`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 463–472.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def kroneckerTMulBilinear :
    Matrix l m α →ₗ[R] Matrix n p β →ₗ[R] Matrix (l × n) (m × p) (α ⊗[R] β) :=
  kroneckerMapBilinear (TensorProduct.mk R α β)
#align matrix.kronecker_tmul_bilinear Matrix.kroneckerTMulBilinear

/-! What follows is a copy, in order, of every `Matrix.kroneckerMap` lemma above that has
hypotheses which can be filled by properties of `⊗ₜ`. -/


-- @[simp] -- Porting note: simp can prove this
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Kronecker/Variant718ba639545f877163ecd80bb0d176ab52982a03f3a2a65bdec8e22536acd1e9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Kronecker/Variant718ba639545f877163ecd80bb0d176ab52982a03f3a2a65bdec8e22536acd1e9.lean#L463).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b4bd0e04d17c2cff8d335bf7e20dc4d6a5cafad6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
