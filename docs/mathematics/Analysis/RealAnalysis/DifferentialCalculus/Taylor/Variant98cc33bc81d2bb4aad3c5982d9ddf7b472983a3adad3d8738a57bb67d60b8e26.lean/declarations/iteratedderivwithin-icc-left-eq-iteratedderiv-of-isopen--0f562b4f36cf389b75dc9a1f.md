# iteratedDerivWithin_Icc_left_eq_iteratedDeriv_of_isOpen

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d7c61c1c-fb92-6e4c-51ee-aa4b723a07d3",
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
  "slug": "iteratedderivwithin-icc-left-eq-iteratedderiv-of-isopen--0f562b4f36cf389b75dc9a1f",
  "source": {
    "blob": "daa674e10401043ad9a6d9d86250f10900fcc053",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 211,
    "line": 173,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Taylor/Variant98cc33bc81d2bb4aad3c5982d9ddf7b472983a3adad3d8738a57bb67d60b8e26.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0f562b4f36cf389b75dc9a1fbdc619111f3961f5356e4591ac9c0a9e74670a7e",
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

Occurrence: `result:d7c61c1c-fb92-6e4c-51ee-aa4b723a07d3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 173–211.

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

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Taylor/Variant98cc33bc81d2bb4aad3c5982d9ddf7b472983a3adad3d8738a57bb67d60b8e26.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Taylor/Variant98cc33bc81d2bb4aad3c5982d9ddf7b472983a3adad3d8738a57bb67d60b8e26.lean#L173).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `daa674e10401043ad9a6d9d86250f10900fcc053` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
