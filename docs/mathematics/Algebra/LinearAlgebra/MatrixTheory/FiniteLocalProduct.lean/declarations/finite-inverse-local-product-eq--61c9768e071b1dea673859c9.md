# finite_inverse_local_product_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:29255ab9-bc9d-1b26-10e5-75f6a78d8e3f",
  "kind": "theorem",
  "lexical_name": "finite_inverse_local_product_eq",
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
  "slug": "finite-inverse-local-product-eq--61c9768e071b1dea673859c9",
  "source": {
    "blob": "30972bdbca1a7b1f0b20205a5b9db56867cc8770",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 21,
    "line": 10,
    "path": "GRWTSK/LinearAlgebra/Matrix/FiniteLocalProduct.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:61c9768e071b1dea673859c9c3a1e6538aaf9e9958d530859ea7411863311ad4",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/MatrixTheory/FiniteLocalProduct.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:29255ab9-bc9d-1b26-10e5-75f6a78d8e3f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 10–21.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem finite_inverse_local_product_eq {K n v : Type*} [Field K]
    [Fintype n] [DecidableEq n] (places : Finset v)
    (A B U V : v → Matrix n n K) (t : v → K)
    (uv : ∀ p ∈ places, U p * V p = 1)
    (vu : ∀ p ∈ places, V p * U p = 1)
    (intertwines : ∀ p ∈ places, A p * U p = U p * B p) :
    (∏ p ∈ places, (Matrix.det (1 - t p • A p))⁻¹) =
      ∏ p ∈ places, (Matrix.det (1 - t p • B p))⁻¹ := by
  apply Finset.prod_congr rfl
  intro p hp
  rw [det_pencil_eq (A p) (B p) (U p) (V p) (uv p hp) (vu p hp) (intertwines p hp)]
end GRWTSK.LinearAlgebra.Matrix
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/MatrixTheory/FiniteLocalProduct.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/LinearAlgebra/Matrix/FiniteLocalProduct.lean#L10).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `30972bdbca1a7b1f0b20205a5b9db56867cc8770` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
