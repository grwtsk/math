# sum_map_tmul_counit_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:90ba9fb9-e392-fef7-7d41-4152d742ecb8",
  "kind": "theorem",
  "lexical_name": "sum_map_tmul_counit_eq",
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
  "slug": "sum-map-tmul-counit-eq--a6022e3fa60b3482e54049d8",
  "source": {
    "blob": "f6f408a7e1b4e3c6605514aca81133f818c0c9cf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 164,
    "line": 157,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variantb84bfba7eafa493d427d3ef5c26d0fbe75f393724041d56ff8365328563595d3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a6022e3fa60b3482e54049d8bce56dd7706de5b96067ff1f0feebd5ed155a792",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basic/Variantb84bfba7eafa493d427d3ef5c26d0fbe75f393724041d56ff8365328563595d3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:90ba9fb9-e392-fef7-7d41-4152d742ecb8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 157–164.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sum_map_tmul_counit_eq {B : Type*} [AddCommMonoid B] [Module R B]
    {F : Type*} [FunLike F A B] [LinearMapClass F R A B] (f : F) (a : A) {repr : Repr R a ι} :
    ∑ i ∈ repr.index, f (repr.left i) ⊗ₜ counit (R := R) (repr.right i) = f a ⊗ₜ[R] 1 := by
  have := sum_tmul_counit_eq repr
  apply_fun LinearMap.rTensor R (f : A →ₗ[R] B) at this
  simp_all only [map_sum, LinearMap.rTensor_tmul, LinearMap.coe_ofClass]

-- Cannot be @[simp] because `a₁` cannot be inferred by `simp`.
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basic/Variantb84bfba7eafa493d427d3ef5c26d0fbe75f393724041d56ff8365328563595d3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basic/Variantb84bfba7eafa493d427d3ef5c26d0fbe75f393724041d56ff8365328563595d3.lean#L157).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f6f408a7e1b4e3c6605514aca81133f818c0c9cf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
