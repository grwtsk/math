# iteratedDeriv_translate_of_contDiffOn

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "feca7dade96cdc55e024c788dd77b2c78a3eec8d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 265,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/3f/3f4a39d39dc3a128184ba7770ab83b24ffe6d5123dcf40b9d64610972d0dc7d6.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d9914e51-47d3-60fb-e77b-0fc33d579e2f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:5f34cc73-57c5-fa60-d967-d2e5890d1725",
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
  "slug": "iteratedderiv-translate-of-contdiffon--f9654f70acd48f52cc05b981",
  "source": {
    "blob": "feca7dade96cdc55e024c788dd77b2c78a3eec8d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 299,
    "line": 265,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Taylor/Variant3f4a39d39dc3a128184ba7770ab83b24ffe6d5123dcf40b9d64610972d0dc7d6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f9654f70acd48f52cc05b981703cca635838e8a775b580b4ec09542283a4356c",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Taylor/Variant3f4a39d39dc3a128184ba7770ab83b24ffe6d5123dcf40b9d64610972d0dc7d6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5f34cc73-57c5-fa60-d967-d2e5890d1725`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 265–299.

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

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Taylor/Variant3f4a39d39dc3a128184ba7770ab83b24ffe6d5123dcf40b9d64610972d0dc7d6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Taylor/Variant3f4a39d39dc3a128184ba7770ab83b24ffe6d5123dcf40b9d64610972d0dc7d6.lean#L265).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `feca7dade96cdc55e024c788dd77b2c78a3eec8d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
