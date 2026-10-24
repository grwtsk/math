# iteratedDeriv_translate_of_contDiffOn

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:21746ecf-783e-cf89-0db2-4eb03d17ff4a",
  "kind": "lemma",
  "lexical_name": "iteratedDeriv_translate_of_contDiffOn",
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
  "slug": "iteratedderiv-translate-of-contdiffon--49156997ed5ebc72894d9f0f",
  "source": {
    "blob": "daa674e10401043ad9a6d9d86250f10900fcc053",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 307,
    "line": 273,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Taylor/Variant98cc33bc81d2bb4aad3c5982d9ddf7b472983a3adad3d8738a57bb67d60b8e26.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:49156997ed5ebc72894d9f0f3a77d2d20edbf44c277981321dea419f62e41dfb",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Taylor/Variant98cc33bc81d2bb4aad3c5982d9ddf7b472983a3adad3d8738a57bb67d60b8e26.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:21746ecf-783e-cf89-0db2-4eb03d17ff4a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 273–307.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma iteratedDeriv_translate_of_contDiffOn {f : ℝ → ℝ} {k : ℝ} {n : ℕ} {U : Set ℝ}
    (hU_open : IsOpen U) (t : ℝ) (ht : t + k ∈ U)
    (hf : ContDiffOn ℝ n f U) :
    iteratedDeriv n (fun y => f (y + k)) t = iteratedDeriv n f (t + k) := by
  induction n generalizing f with
  | zero => simp only [iteratedDeriv_zero]
  | succ n ih =>
    rw [iteratedDeriv_succ', iteratedDeriv_succ']
    -- Since t + k ∈ U and U is open, there's a neighborhood of t where y + k ∈ U for all y
    have h_nhds_mem : ∀ᶠ y in nhds t, y + k ∈ U := by
      have hcont : Continuous (fun y => y + k) := continuous_id.add continuous_const
      have hU_nhds : U ∈ nhds (t + k) := hU_open.mem_nhds ht
      exact hcont.continuousAt.preimage_mem_nhds hU_nhds
    -- Derivative equality in a neighborhood of t
    have h_deriv_eq_near : ∀ᶠ y in nhds t, deriv (fun z => f (z + k)) y = deriv f (y + k) := by
      filter_upwards [h_nhds_mem] with y hy_mem
      have hf' : ContDiffOn ℝ 1 f U := hf.of_le (by norm_cast; omega)
      have hdiff : DifferentiableAt ℝ f (y + k) :=
        (hf'.differentiableOn one_ne_zero).differentiableAt (hU_open.mem_nhds hy_mem)
      have hlin : DifferentiableAt ℝ (fun z => z + k) y :=
        differentiableAt_id.add (differentiableAt_const _)
      have h := deriv_comp y hdiff hlin
      simp only [deriv_add_const, deriv_id'', mul_one] at h
      exact h
    have h_iter_eq : iteratedDeriv n (deriv fun z => f (z + k)) t =
                     iteratedDeriv n (fun y => deriv f (y + k)) t :=
      Filter.EventuallyEq.iteratedDeriv_eq n h_deriv_eq_near
    rw [h_iter_eq]
    have hdf : ContDiffOn ℝ n (deriv f) U := hf.deriv_of_isOpen hU_open le_rfl
    exact ih hdf

/-- Key lemma for reflection: derivatives of g(t) = f(2c - t) when f is smooth on an open set.

This is a local version of `iteratedDeriv_reflect` that works with ContDiffOn on an open set
rather than global ContDiff. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Taylor/Variant98cc33bc81d2bb4aad3c5982d9ddf7b472983a3adad3d8738a57bb67d60b8e26.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Taylor/Variant98cc33bc81d2bb4aad3c5982d9ddf7b472983a3adad3d8738a57bb67d60b8e26.lean#L273).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `daa674e10401043ad9a6d9d86250f10900fcc053` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
