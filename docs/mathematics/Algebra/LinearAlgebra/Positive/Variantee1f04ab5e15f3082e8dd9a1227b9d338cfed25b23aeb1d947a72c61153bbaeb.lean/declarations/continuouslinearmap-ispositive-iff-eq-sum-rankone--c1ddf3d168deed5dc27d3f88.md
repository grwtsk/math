# ContinuousLinearMap.isPositive_iff_eq_sum_rankOne

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5e5474b3-1306-1d55-5588-464f7d13584a",
  "kind": "theorem",
  "lexical_name": "ContinuousLinearMap.isPositive_iff_eq_sum_rankOne",
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
  "slug": "continuouslinearmap-ispositive-iff-eq-sum-rankone--c1ddf3d168deed5dc27d3f88",
  "source": {
    "blob": "f37e9c645a3ccad5dc236a779b41cb385e3d9a7e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 580,
    "line": 568,
    "path": "GRWTSK/Algebra/LinearAlgebra/Positive/Variantee1f04ab5e15f3082e8dd9a1227b9d338cfed25b23aeb1d947a72c61153bbaeb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c1ddf3d168deed5dc27d3f886352c1144101bbc2e340b2a80961186176c8fb56",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Positive/Variantee1f04ab5e15f3082e8dd9a1227b9d338cfed25b23aeb1d947a72c61153bbaeb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5e5474b3-1306-1d55-5588-464f7d13584a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 568–580.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ContinuousLinearMap.isPositive_iff_eq_sum_rankOne [FiniteDimensional 𝕜 E] {T : E →L[𝕜] E} :
    T.IsPositive ↔ ∃ (m : ℕ) (u : Fin m → E), T = ∑ i : Fin m, rankOne 𝕜 (u i) (u i) := by
  refine ⟨fun hT ↦ ?_, fun ⟨m, u, hT⟩ ↦ hT ▸ isPositive_sum _ fun _ _ ↦ isPositive_rankOne_self _⟩
  let a (i : Fin (Module.finrank 𝕜 E)) : E :=
    ((hT.isSymmetric.eigenvalues rfl i).sqrt : 𝕜) • hT.isSymmetric.eigenvectorBasis rfl i
  refine ⟨Module.finrank 𝕜 E, a, ext fun _ ↦ ?_⟩
  simp_rw [_root_.sum_apply, rankOne_apply, a, inner_smul_left, smul_smul, mul_assoc, conj_ofReal,
    mul_comm (⟪_, _⟫_𝕜), ← mul_assoc, ← ofReal_mul,
    ← Real.sqrt_mul (hT.toLinearMap.nonneg_eigenvalues rfl _),
    Real.sqrt_mul_self (hT.toLinearMap.nonneg_eigenvalues rfl _), mul_comm _ (⟪_, _⟫_𝕜),
    ← smul_eq_mul, smul_assoc, ← hT.isSymmetric.apply_eigenvectorBasis, ← map_smul, ← map_sum,
    ← OrthonormalBasis.repr_apply_apply, OrthonormalBasis.sum_repr, coe_coe]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Positive/Variantee1f04ab5e15f3082e8dd9a1227b9d338cfed25b23aeb1d947a72c61153bbaeb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Positive/Variantee1f04ab5e15f3082e8dd9a1227b9d338cfed25b23aeb1d947a72c61153bbaeb.lean#L568).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f37e9c645a3ccad5dc236a779b41cb385e3d9a7e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
