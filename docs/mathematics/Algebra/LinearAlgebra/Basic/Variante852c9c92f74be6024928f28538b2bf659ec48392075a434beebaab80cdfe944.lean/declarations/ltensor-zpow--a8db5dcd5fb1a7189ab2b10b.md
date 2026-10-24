# lTensor_zpow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3280cac6-3867-505a-b8bf-1a9f4415ce7c",
  "kind": "theorem",
  "lexical_name": "lTensor_zpow",
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
  "slug": "ltensor-zpow--a8db5dcd5fb1a7189ab2b10b",
  "source": {
    "blob": "8c786d93b4b8cd0749f4b0d3a41c52c1464a6c6c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1268,
    "line": 1247,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variante852c9c92f74be6024928f28538b2bf659ec48392075a434beebaab80cdfe944.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a8db5dcd5fb1a7189ab2b10b5f1aab60871153d8c23d74df1c63c6457cd0ad80",
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

Occurrence: `result:3280cac6-3867-505a-b8bf-1a9f4415ce7c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1247–1268.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[simp] theorem lTensor_zpow (f : N ≃ₗ[R] N) (n : ℤ) : f.lTensor M ^ n = (f ^ n).lTensor M := by
  simpa only [one_zpow] using TensorProduct.congr_zpow (1 : M ≃ₗ[R] M) f n

end LinearEquiv

end Semiring

section Ring

variable {R : Type*} [CommSemiring R]
variable {M : Type*} {N : Type*} {P : Type*} {Q : Type*} {S : Type*}
variable [AddCommGroup M] [AddCommGroup N] [AddCommGroup P] [AddCommGroup Q] [AddCommGroup S]
variable [Module R M] [Module R N] [Module R P] [Module R Q] [Module R S]

namespace TensorProduct

open TensorProduct

open LinearMap

variable (R) in
/-- Auxiliary function to defining negation multiplication on tensor product. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basic/Variante852c9c92f74be6024928f28538b2bf659ec48392075a434beebaab80cdfe944.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basic/Variante852c9c92f74be6024928f28538b2bf659ec48392075a434beebaab80cdfe944.lean#L1247).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8c786d93b4b8cd0749f4b0d3a41c52c1464a6c6c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
