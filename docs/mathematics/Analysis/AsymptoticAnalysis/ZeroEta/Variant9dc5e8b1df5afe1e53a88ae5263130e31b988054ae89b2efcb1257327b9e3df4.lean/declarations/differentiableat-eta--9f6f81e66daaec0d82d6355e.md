# differentiableAt_eta

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:58c1214f-67e6-aa82-b1bc-c9a54d169e4f",
  "kind": "theorem",
  "lexical_name": "differentiableAt_eta",
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
  "slug": "differentiableat-eta--9f6f81e66daaec0d82d6355e",
  "source": {
    "blob": "28c18f45d502ff45cbc1c56f2869c8e2aa0fff86",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 110,
    "line": 92,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/ZeroEta/Variant9dc5e8b1df5afe1e53a88ae5263130e31b988054ae89b2efcb1257327b9e3df4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9f6f81e66daaec0d82d6355e45a98dda465a3cceb87f20fa3e537640c3192024",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/ZeroEta/Variant9dc5e8b1df5afe1e53a88ae5263130e31b988054ae89b2efcb1257327b9e3df4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:58c1214f-67e6-aa82-b1bc-c9a54d169e4f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 92–110.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem differentiableAt_eta {z : ℂ} (hz : 0 < z.re) : DifferentiableAt ℂ eta z := by
  let U : Set ℂ := {w | z.re / 2 < w.re ∧ ‖w‖ < ‖z‖ + 1}
  have hU : IsOpen U := (isOpen_lt continuous_const continuous_re).inter
    (isOpen_lt continuous_norm continuous_const)
  have hzU : z ∈ U := ⟨by linarith, by linarith⟩
  have hdiff : ∀ n : ℕ, DifferentiableOn ℂ (fun w ↦ pair w n) U := by
    intro n
    have h1 : (2 * n + 1 : ℂ) ≠ 0 := by exact_mod_cast (show (2 * n + 1 : ℕ) ≠ 0 by omega)
    have h2 : (2 * n + 2 : ℂ) ≠ 0 := by exact_mod_cast (show (2 * n + 2 : ℕ) ≠ 0 by omega)
    apply Differentiable.differentiableOn
    unfold pair
    exact (differentiable_neg.const_cpow (Or.inl h1)).sub
      (differentiable_neg.const_cpow (Or.inl h2))
  have h := Complex.differentiableOn_tsum_of_summable_norm
    (summable_majorant (by linarith : 0 < z.re / 2) (‖z‖ + 1)) hdiff hU
    (fun n w hw ↦ pair_bound_uniform (by linarith : 0 < z.re / 2) hw.1.le hw.2.le n)
  exact h.differentiableAt (hU.mem_nhds hzU)

/-- Even/odd splitting in the absolute convergence region identifies the actual zeta function. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/ZeroEta/Variant9dc5e8b1df5afe1e53a88ae5263130e31b988054ae89b2efcb1257327b9e3df4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/ZeroEta/Variant9dc5e8b1df5afe1e53a88ae5263130e31b988054ae89b2efcb1257327b9e3df4.lean#L92).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `28c18f45d502ff45cbc1c56f2869c8e2aa0fff86` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
