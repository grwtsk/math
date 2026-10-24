# zero_iff_rTensor_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:79c9b168-68b0-5607-86cd-9a9a5a246d07",
  "kind": "lemma",
  "lexical_name": "zero_iff_rTensor_zero",
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
  "slug": "zero-iff-rtensor-zero--d1da7965bff820f0afdcb578",
  "source": {
    "blob": "4695061faeb54502a8902c55c53c188f64a20c06",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 488,
    "line": 476,
    "path": "GRWTSK/Algebra/Basic/Variant8c9447bbe501ead47905800662b1d605883183af56fbef795f43e25f9741b757.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d1da7965bff820f0afdcb578b44337fc7916e3c5b78fea3a48b5efd2cd6c7311",
  "verification": {
    "reference": "docs/verification/Algebra/Basic/Variant8c9447bbe501ead47905800662b1d605883183af56fbef795f43e25f9741b757.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:79c9b168-68b0-5607-86cd-9a9a5a246d07`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 476–488.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma zero_iff_rTensor_zero [h: FaithfullyFlat R M]
    {N : Type*} [AddCommGroup N] [Module R N]
    {N' : Type*} [AddCommGroup N'] [Module R N']
    (f : N →ₗ[R] N') :
    f = 0 ↔ LinearMap.rTensor M f = 0 :=
  zero_iff_lTensor_zero R M f |>.trans
  ⟨fun h => by ext n m; exact (TensorProduct.comm R N' M).injective <|
    (by simpa using congr($h (m ⊗ₜ n))), fun h => by
    ext m n; exact (TensorProduct.comm R M N').injective <| (by simpa using congr($h (n ⊗ₜ m)))⟩

/-- If `A` is a faithfully flat `R`-algebra, and `m` is a term of an `R`-module `M`,
then `1 ⊗ₜ[R] m = 0` if and only if `m = 0`. -/
@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Basic/Variant8c9447bbe501ead47905800662b1d605883183af56fbef795f43e25f9741b757.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Basic/Variant8c9447bbe501ead47905800662b1d605883183af56fbef795f43e25f9741b757.lean#L476).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4695061faeb54502a8902c55c53c188f64a20c06` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
