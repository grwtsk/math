# iteratedDerivWithin_Icc_left_eq_iteratedDeriv_of_isOpen

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
      "line": 165,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/3f/3f4a39d39dc3a128184ba7770ab83b24ffe6d5123dcf40b9d64610972d0dc7d6.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6aa57d22-ee20-f073-93ce-be7f9eb9d058",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:fd3eb332-34b6-1c70-d160-f95251d58903",
  "kind": "lemma",
  "lexical_name": "iteratedDerivWithin_Icc_left_eq_iteratedDeriv_of_isOpen",
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
  "slug": "iteratedderivwithin-icc-left-eq-iteratedderiv-of-isopen--53c3c9959a8427ef7b8ad52d",
  "source": {
    "blob": "feca7dade96cdc55e024c788dd77b2c78a3eec8d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 203,
    "line": 165,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Taylor/Variant3f4a39d39dc3a128184ba7770ab83b24ffe6d5123dcf40b9d64610972d0dc7d6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:53c3c9959a8427ef7b8ad52d35640027575ac7942f2f413623fcbe8270caea6a",
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

Occurrence: `result:fd3eb332-34b6-1c70-d160-f95251d58903`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 165–203.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma iteratedDerivWithin_Icc_left_eq_iteratedDeriv_of_isOpen {f : ℝ → ℝ} {c x : ℝ} {n : ℕ} {U : Set ℝ}
    (hU_open : IsOpen U) (hcU : c ∈ U) (hcx : c < x) (hI_sub : Set.Icc c x ⊆ U)
    (hf : ContDiffOn ℝ n f U) :
    iteratedDerivWithin n f (Set.Icc c x) c = iteratedDeriv n f c := by
  open Set in
  induction n generalizing f with
  | zero => simp only [iteratedDerivWithin_zero, iteratedDeriv_zero]
  | succ n ih =>
    have hf_n : ContDiffOn ℝ n f U := hf.of_le (by simp : (n : WithTop ℕ∞) ≤ (n + 1 : ℕ))
    rw [iteratedDerivWithin_succ', iteratedDeriv_succ']
    have h_ne_zero : ((n : ℕ) + 1 : WithTop ℕ∞) ≠ 0 := by simp
    -- For each y in Icc c x, derivWithin f = deriv f
    have h_eq_derivWithin : EqOn (derivWithin f (Icc c x)) (deriv f) (Icc c x) := by
      intro y hy
      rcases eq_or_ne y c with rfl | hne_c
      · -- At c: use that f is differentiable at c (from ContDiffOn on open U)
        exact derivWithin_Icc_left_eq_deriv hcx
            ((hf.differentiableOn h_ne_zero).differentiableAt (hU_open.mem_nhds hcU))
      · rcases eq_or_ne y x with rfl | hne_x
        · -- At x: use right endpoint lemma
          exact derivWithin_Icc_right_eq_deriv hcx
              ((hf.differentiableOn h_ne_zero).differentiableAt (hU_open.mem_nhds (hI_sub hy)))
        · -- Interior: Icc is a neighborhood
          apply derivWithin_of_mem_nhds
          apply Icc_mem_nhds
          · exact lt_of_le_of_ne hy.1 (Ne.symm hne_c)
          · exact lt_of_le_of_ne hy.2 hne_x
    have h_congr : EqOn (iteratedDerivWithin n (derivWithin f (Icc c x)) (Icc c x))
                        (iteratedDerivWithin n (deriv f) (Icc c x)) (Icc c x) :=
      iteratedDerivWithin_congr (n := n) h_eq_derivWithin
    have hc_mem : c ∈ Icc c x := left_mem_Icc.mpr (le_of_lt hcx)
    rw [h_congr hc_mem]
    have hdf : ContDiffOn ℝ n (deriv f) U := hf.deriv_of_isOpen hU_open le_rfl
    exact ih hdf

/-- Taylor remainder bound for c < x case with ContDiffOn hypothesis.

    For functions that are ContDiffOn on an open set containing [a, b], this provides
    the same Lagrange remainder bound as the global ContDiff version. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Taylor/Variant3f4a39d39dc3a128184ba7770ab83b24ffe6d5123dcf40b9d64610972d0dc7d6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Taylor/Variant3f4a39d39dc3a128184ba7770ab83b24ffe6d5123dcf40b9d64610972d0dc7d6.lean#L165).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `feca7dade96cdc55e024c788dd77b2c78a3eec8d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
