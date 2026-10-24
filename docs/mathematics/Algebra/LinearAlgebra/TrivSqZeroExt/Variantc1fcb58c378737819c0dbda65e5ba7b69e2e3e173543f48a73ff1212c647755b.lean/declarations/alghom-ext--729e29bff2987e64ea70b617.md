# algHom_ext'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cd8c4ce4-ea85-880b-3aa8-3e4988a4e40c",
  "kind": "theorem",
  "lexical_name": "algHom_ext'",
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
  "slug": "alghom-ext--729e29bff2987e64ea70b617",
  "source": {
    "blob": "2a18dbb2c9b0bd9a6d0279621ec9af76bafc4506",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 946,
    "line": 923,
    "path": "GRWTSK/Algebra/LinearAlgebra/TrivSqZeroExt/Variantc1fcb58c378737819c0dbda65e5ba7b69e2e3e173543f48a73ff1212c647755b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:729e29bff2987e64ea70b617837b53c9f4e0156f5ac0e131bc05ea50f8c3a46f",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/TrivSqZeroExt/Variantc1fcb58c378737819c0dbda65e5ba7b69e2e3e173543f48a73ff1212c647755b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cd8c4ce4-ea85-880b-3aa8-3e4988a4e40c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 923–946.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem algHom_ext' {A} [Semiring A] [Algebra S A] ⦃f g : tsze R M →ₐ[S] A⦄
    (hinl : f.comp (inlAlgHom S R M) = g.comp (inlAlgHom S R M))
    (hinr : f.toLinearMap.comp (inrHom R M |>.restrictScalars S) =
      g.toLinearMap.comp (inrHom R M |>.restrictScalars S)) : f = g :=
  AlgHom.toLinearMap_injective <|
    linearMap_ext (AlgHom.congr_fun hinl) (LinearMap.congr_fun hinr)

variable {A : Type*} [Semiring A] [Algebra S A] [Algebra R' A]

/--
Assemble an algebra morphism `TrivSqZeroExt R M →ₐ[S] A` from separate morphisms on `R` and `M`.

Namely, we require that for an algebra morphism `f : R →ₐ[S] A` and a linear map `g : M →ₗ[S] A`,
we have:

* `g x * g y = 0`: the elements of `M` continue to square to zero.
* `g (r •> x) = f r * g x` and `g (x <• r) = g x * f r`: scalar multiplication on the left and
  right is sent to left- and right- multiplication by the image under `f`.

See `TrivSqZeroExt.liftEquiv` for this as an equiv; namely that any such algebra morphism can be
factored in this way.

When `R` is commutative, this can be invoked with `f = Algebra.ofId R A`, which satisfies `hfg` and
`hgf`. This version is captured as an equiv by `TrivSqZeroExt.liftEquivOfComm`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/TrivSqZeroExt/Variantc1fcb58c378737819c0dbda65e5ba7b69e2e3e173543f48a73ff1212c647755b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/TrivSqZeroExt/Variantc1fcb58c378737819c0dbda65e5ba7b69e2e3e173543f48a73ff1212c647755b.lean#L923).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2a18dbb2c9b0bd9a6d0279621ec9af76bafc4506` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
