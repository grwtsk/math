# exists_solution_of_complex_estimate

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:dee0e45e-55c3-107e-5b9a-45b7f53499f6",
  "kind": "theorem",
  "lexical_name": "exists_solution_of_complex_estimate",
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
  "slug": "exists-solution-of-complex-estimate--2da07892a1458ec7d8a37e93",
  "source": {
    "blob": "84787df4ba4b948831e9cbe92bc38ec0238c6c5f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 96,
    "line": 41,
    "path": "GRWTSK/Analysis/InnerProductSpace/ClosedComplexSolvability.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2da07892a1458ec7d8a37e9361dafdefd01ed3581df45a7caecb7089875248f3",
  "verification": {
    "reference": "docs/verification/Analysis/InnerProductSpace/ClosedComplexSolvability.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dee0e45e-55c3-107e-5b9a-45b7f53499f6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 41–96.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_solution_of_complex_estimate
    (T : E →ₗ.[𝕜] F) (S : F →ₗ.[𝕜] H)
    (hT : Dense (T.domain : Set E)) (hTc : T.IsClosed) (hSc : S.IsClosed)
    (hcomplex : ∀ x : T.domain, (T x, 0) ∈ S.graph)
    {ε : ℝ} (hε : 0 < ε)
    (hestimate : ∀ v : T†.domain, ∀ hv : (v : F) ∈ S.domain,
      ε * ‖(v : F)‖ ^ 2 ≤ ‖T† v‖ ^ 2 + ‖S ⟨(v : F), hv⟩‖ ^ 2)
    {f : F} (hf : (f, 0) ∈ S.graph) :
    ∃ u : T.domain, T u = f ∧ ‖(u : E)‖ ≤ ‖f‖ / Real.sqrt ε := by
  let K : Submodule 𝕜 F :=
    S.graph.comap ((LinearMap.id : F →ₗ[𝕜] F).prod (0 : F →ₗ[𝕜] H))
  have hKc : IsClosed (K : Set F) :=
    hSc.preimage (continuous_id.prodMk continuous_const)
  let : CompleteSpace K := hKc.completeSpace_coe
  have hKf : f ∈ K := hf
  have hsqrt : 0 < Real.sqrt ε := Real.sqrt_pos.mpr hε
  apply exists_solution_of_adjoint_bound T hT hTc f
    (div_nonneg (norm_nonneg _) hsqrt.le)
  intro v
  obtain ⟨p, hp, q, hq, hvpq⟩ := K.exists_add_mem_mem_orthogonal (v : F)
  have hqT (x : T.domain) : inner 𝕜 q (T x) = 0 :=
    (K.mem_orthogonal' q).mp hq (T x) (hcomplex x)
  have hqdom : q ∈ T†.domain := by
    apply LinearPMap.mem_adjoint_domain_of_exists
    exact ⟨0, fun x => by rw [inner_zero_left, hqT]⟩
  have hqadj : T† ⟨q, hqdom⟩ = 0 := by
    apply LinearPMap.adjoint_apply_eq hT
    intro x
    rw [inner_zero_left, hqT]
  have hpdom : p ∈ T†.domain := by
    have he : p = (v : F) - q := (eq_sub_iff_add_eq).mpr hvpq.symm
    rw [he]
    exact T†.domain.sub_mem v.property hqdom
  obtain ⟨⟨p, hpS⟩, rfl, hSp⟩ := S.mem_graph_iff.mp (show (p, 0) ∈ S.graph from hp)
  let vp : T†.domain := ⟨p, hpdom⟩
  have hvsum : v = vp + ⟨q, hqdom⟩ := Subtype.ext hvpq
  have hTp : T† vp = T† v := by
    rw [hvsum, LinearPMap.map_add, hqadj, add_zero]
  have hE : ε * ‖p‖ ^ 2 ≤ ‖T† v‖ ^ 2 := by
    simpa only [vp, hSp, norm_zero, zero_pow (by decide : (2 : ℕ) ≠ 0), add_zero,
      ← hTp] using hestimate vp hpS
  have hnp : ‖p‖ ≤ ‖T† v‖ / Real.sqrt ε := by
    apply (le_div_iff₀ hsqrt).mpr
    apply (sq_le_sq₀ (mul_nonneg (norm_nonneg _) hsqrt.le) (norm_nonneg _)).mp
    simpa only [mul_pow, Real.sq_sqrt hε.le, mul_comm] using hE
  have hpair : inner 𝕜 f (v : F) = inner 𝕜 f p := by
    rw [hvpq, inner_add_right, K.inner_right_of_mem_orthogonal hKf hq, add_zero]
  rw [hpair]
  calc
    ‖inner 𝕜 f p‖ ≤ ‖f‖ * ‖p‖ := norm_inner_le_norm f p
    _ ≤ ‖f‖ * (‖T† v‖ / Real.sqrt ε) := mul_le_mul_of_nonneg_left hnp (norm_nonneg _)
    _ = (‖f‖ / Real.sqrt ε) * ‖T† v‖ := by ring

end

end GRWTSK.Analysis.InnerProductSpace.ClosedComplexSolvability
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/InnerProductSpace/ClosedComplexSolvability.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/InnerProductSpace/ClosedComplexSolvability.lean#L41).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `84787df4ba4b948831e9cbe92bc38ec0238c6c5f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
