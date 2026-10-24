# productMap_range

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d76ad164-28d6-d078-45c3-59e490cc4f83",
  "kind": "theorem",
  "lexical_name": "productMap_range",
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
  "slug": "productmap-range--098e394ea170506224d0daed",
  "source": {
    "blob": "fca833014ac94836ce6d4e75788c5938524b3587",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 860,
    "line": 840,
    "path": "GRWTSK/Algebra/LinearAlgebra/TensorProduct/Variant27b19f8eda18ba84200048540a9afe423931b5019f317de472e6719ff4e6c475.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:098e394ea170506224d0daede9316ac65d89b78b0f1f3c3fc699a180f8824a87",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/TensorProduct/Variant27b19f8eda18ba84200048540a9afe423931b5019f317de472e6719ff4e6c475.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d76ad164-28d6-d078-45c3-59e490cc4f83`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 840–860.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem productMap_range : (productMap f g).range = f.range ⊔ g.range := by
  rw [productMap, AlgHom.range_comp, map_range, map_sup, ← AlgHom.range_comp, ← AlgHom.range_comp,
    ← AlgHom.comp_assoc, ← AlgHom.comp_assoc, lmul'_comp_includeLeft, lmul'_comp_includeRight,
    AlgHom.id_comp, AlgHom.id_comp]
#align algebra.tensor_product.product_map_range Algebra.TensorProduct.productMap_range

end

section

variable {R A A' B S : Type*}

variable [CommSemiring R] [CommSemiring A] [Semiring A'] [Semiring B] [CommSemiring S]

variable [Algebra R A] [Algebra R A'] [Algebra A A'] [IsScalarTower R A A'] [Algebra R B]

variable [Algebra R S] [Algebra A S] [IsScalarTower R A S]

/-- If `A`, `B` are `R`-algebras, `A'` is an `A`-algebra, then the product map of `f : A' →ₐ[A] S`
and `g : B →ₐ[R] S` is an `A`-algebra homomorphism. -/
@[simps!]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/TensorProduct/Variant27b19f8eda18ba84200048540a9afe423931b5019f317de472e6719ff4e6c475.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/TensorProduct/Variant27b19f8eda18ba84200048540a9afe423931b5019f317de472e6719ff4e6c475.lean#L840).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fca833014ac94836ce6d4e75788c5938524b3587` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
