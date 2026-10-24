# ContinuousLinearMap.reApplyInnerSelf_smul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:bfae9951-5ab5-10f3-f8d4-e2ebd9150705",
  "kind": "theorem",
  "lexical_name": "ContinuousLinearMap.reApplyInnerSelf_smul",
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
  "slug": "continuouslinearmap-reapplyinnerself-smul--cfc82feccd3c93ddd89644cc",
  "source": {
    "blob": "2bec34b9aaf13c642c313dcbe87ff58374987b58",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 310,
    "line": 289,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/LinearMap/Variantbb34a5b2d547716b9a3960ad94904c6bc1145e4d7264a47701c0bdcb86134be8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cfc82feccd3c93ddd89644cc5316368e4ebf102a8457a323f96b7e9541d72b6c",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/LinearMap/Variantbb34a5b2d547716b9a3960ad94904c6bc1145e4d7264a47701c0bdcb86134be8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bfae9951-5ab5-10f3-f8d4-e2ebd9150705`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 289–310.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ContinuousLinearMap.reApplyInnerSelf_smul (T : E →L[𝕜] E) (x : E) {c : 𝕜} :
    T.reApplyInnerSelf (c • x) = ‖c‖ ^ 2 * T.reApplyInnerSelf x := by
  simp only [map_smul, ContinuousLinearMap.reApplyInnerSelf_apply, inner_smul_left,
    inner_smul_right, ← mul_assoc, mul_conj, ← ofReal_pow, ← smul_re,
    Algebra.smul_def (‖c‖ ^ 2) ⟪T x, x⟫, algebraMap_eq_ofReal]

end ReApplyInnerSelf_Seminormed

namespace InnerProductSpace
variable {𝕜 E F G : Type*} [RCLike 𝕜] [SeminormedAddCommGroup E] [NormedSpace 𝕜 E]
  [SeminormedAddCommGroup F] [InnerProductSpace 𝕜 F]
  [SeminormedAddCommGroup G] [InnerProductSpace 𝕜 G]

open ContinuousLinearMap

variable (𝕜) in
/-- A rank-one operator on an inner product space is given by `x ↦ y ↦ z ↦ ⟪y, z⟫ • x`.

This is also sometimes referred to as an outer product of vectors on a Hilbert space.
This corresponds to the matrix outer product `Matrix.vecMulVec`, see
`InnerProductSpace.toMatrix_rankOne` and `InnerProductSpace.symm_toEuclideanLin_rankOne` in
`Mathlib/Analysis/InnerProductSpace/PiL2.lean`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/LinearMap/Variantbb34a5b2d547716b9a3960ad94904c6bc1145e4d7264a47701c0bdcb86134be8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/LinearMap/Variantbb34a5b2d547716b9a3960ad94904c6bc1145e4d7264a47701c0bdcb86134be8.lean#L289).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2bec34b9aaf13c642c313dcbe87ff58374987b58` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
