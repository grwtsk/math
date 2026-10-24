# congr_zpow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:40fe0191-8b6f-3f91-96b8-5534c403daa4",
  "kind": "theorem",
  "lexical_name": "congr_zpow",
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
  "slug": "congr-zpow--50dbfc4b83aa537e14bda6f7",
  "source": {
    "blob": "8c786d93b4b8cd0749f4b0d3a41c52c1464a6c6c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 928,
    "line": 911,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variante852c9c92f74be6024928f28538b2bf659ec48392075a434beebaab80cdfe944.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:50dbfc4b83aa537e14bda6f72e27db59150d249a8b4770927f41034f98c1cca0",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basic/Variante852c9c92f74be6024928f28538b2bf659ec48392075a434beebaab80cdfe944.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:40fe0191-8b6f-3f91-96b8-5534c403daa4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 911–928.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[simp] theorem congr_zpow (f : M ≃ₗ[R] M) (g : N ≃ₗ[R] N) (n : ℤ) :
    congr f g ^ n = congr (f ^ n) (g ^ n) := by
  cases n with
  | ofNat n => exact congr_pow _ _ _
  | negSucc n => simp_rw [zpow_negSucc, congr_pow]; exact congr_symm _ _

end TensorProduct

open scoped TensorProduct

variable [Module R P]

namespace LinearMap

variable {N}

/-- `LinearMap.lTensor M f : M ⊗ N →ₗ M ⊗ P` is the natural linear map
induced by `f : N →ₗ P`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basic/Variante852c9c92f74be6024928f28538b2bf659ec48392075a434beebaab80cdfe944.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basic/Variante852c9c92f74be6024928f28538b2bf659ec48392075a434beebaab80cdfe944.lean#L911).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8c786d93b4b8cd0749f4b0d3a41c52c1464a6c6c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
