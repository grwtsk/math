# AlgHom.coe_tensorEqualizer

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:747070ef-7dc0-6063-5ccf-e6e0fe42a725",
  "kind": "lemma",
  "lexical_name": "AlgHom.coe_tensorEqualizer",
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
  "slug": "alghom-coe-tensorequalizer--67632f0378958ed6c0c6be91",
  "source": {
    "blob": "0c98f2dc24f277c3d375f5b55fe886e09609e14b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 233,
    "line": 227,
    "path": "GRWTSK/Algebra/LinearAlgebra/Equalizer/Variant75d0cfa988b2c58bea9d8a2aa49197b2ffc747160438596de3afe140d9cb6107.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:67632f0378958ed6c0c6be915de37e13f98b46a2c2071465a7411abf3e2796f4",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Equalizer/Variant75d0cfa988b2c58bea9d8a2aa49197b2ffc747160438596de3afe140d9cb6107.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:747070ef-7dc0-6063-5ccf-e6e0fe42a725`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 227–233.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma AlgHom.coe_tensorEqualizer (x : T ⊗[R] AlgHom.equalizer f g) :
    (AlgHom.tensorEqualizer S T f g x : T ⊗[R] A) =
      Algebra.TensorProduct.map (AlgHom.id S T) (AlgHom.equalizer f g).val x :=
  AlgHom.coe_tensorEqualizerAux S T f g x

/-- If `T` is `R`-flat, the canonical map
`T ⊗[R] eq(f, g) →ₐ[S] eq (𝟙 ⊗ f, 𝟙 ⊗ g)` is an isomorphism. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Equalizer/Variant75d0cfa988b2c58bea9d8a2aa49197b2ffc747160438596de3afe140d9cb6107.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Equalizer/Variant75d0cfa988b2c58bea9d8a2aa49197b2ffc747160438596de3afe140d9cb6107.lean#L227).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0c98f2dc24f277c3d375f5b55fe886e09609e14b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
