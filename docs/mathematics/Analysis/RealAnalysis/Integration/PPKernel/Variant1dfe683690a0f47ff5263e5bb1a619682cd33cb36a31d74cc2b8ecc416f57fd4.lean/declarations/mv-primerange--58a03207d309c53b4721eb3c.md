# MV_primeRange

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:18ae98d8-bb15-74e5-1ff0-b5c46af020ed",
  "kind": "lemma",
  "lexical_name": "MV_primeRange",
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
  "slug": "mv-primerange--58a03207d309c53b4721eb3c",
  "source": {
    "blob": "7c75669277cd28f7712457d57bb96fdc692ec435",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 617,
    "line": 573,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/PPKernel/Variant1dfe683690a0f47ff5263e5bb1a619682cd33cb36a31d74cc2b8ecc416f57fd4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:58a03207d309c53b4721eb3c430bffee5fb0ae5ea31687c25d84e47053f63a38",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/PPKernel/Variant1dfe683690a0f47ff5263e5bb1a619682cd33cb36a31d74cc2b8ecc416f57fd4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:18ae98d8-bb15-74e5-1ff0-b5c46af020ed`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 573–617.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma MV_primeRange (hMV : Zeta23.MVHilbert C) (X : ℝ) (x z : ℕ → ℂ) :
    ‖∑ n ∈ primeRange X, ∑ m ∈ primeRange X,
        (if n = m then (0:ℂ) else x n * conj (z m) / ((Real.log n - Real.log m : ℝ) : ℂ))‖
      ≤ C * Real.sqrt (∑ n ∈ primeRange X, ‖x n‖ ^ 2 * (2 * n))
          * Real.sqrt (∑ n ∈ primeRange X, ‖z n‖ ^ 2 * (2 * n)) := by
  set S := primeRange X with hS
  have key := hMV S (fun r : S => Real.log ((r:ℕ):ℝ)) (fun r : S => 1 / (2 * ((r:ℕ):ℝ)))
    (fun r => x r) (fun r => z r) ?_ ?_ ?_
  · have e1 : (∑ r : S, ∑ s : S, if r = s then (0:ℂ) else
        x r * conj (z s) / ((Real.log ((r:ℕ):ℝ) - Real.log ((s:ℕ):ℝ) : ℝ) : ℂ))
        = ∑ n ∈ S, ∑ m ∈ S, (if n = m then (0:ℂ) else
            x n * conj (z m) / ((Real.log n - Real.log m : ℝ) : ℂ)) := by
      simp_rw [Subtype.ext_iff]
      rw [Finset.sum_coe_sort S (fun n => ∑ s : S, if n = (s:ℕ) then (0:ℂ) else
            x n * conj (z s) / ((Real.log n - Real.log ((s:ℕ):ℝ) : ℝ) : ℂ))]
      refine Finset.sum_congr rfl fun n _ => ?_
      exact Finset.sum_coe_sort S (fun m => if n = m then (0:ℂ) else
            x n * conj (z m) / ((Real.log n - Real.log m : ℝ) : ℂ))
    have e2 : ∀ (w : ℕ → ℂ), (∑ r : S, ‖w r‖ ^ 2 / (1 / (2 * ((r:ℕ):ℝ))))
        = ∑ n ∈ S, ‖w n‖ ^ 2 * (2 * n) := by
      intro w
      rw [Finset.sum_coe_sort S (fun n => ‖w n‖ ^ 2 / (1 / (2 * (n:ℝ))))]
      refine Finset.sum_congr rfl fun n _ => ?_
      rw [div_div_eq_mul_div, div_one]
    rw [e1, e2 x, e2 z] at key
    exact key
  · intro r s hrs
    apply Subtype.ext
    have hr : (0:ℝ) < ((r:ℕ):ℝ) := by exact_mod_cast one_le_of_mem_primeRange r.2
    have hs : (0:ℝ) < ((s:ℕ):ℝ) := by exact_mod_cast one_le_of_mem_primeRange s.2
    have : ((r:ℕ):ℝ) = ((s:ℕ):ℝ) := Real.log_injOn_pos (Set.mem_Ioi.mpr hr) (Set.mem_Ioi.mpr hs) hrs
    exact_mod_cast this
  · intro r
    have hr : (0:ℝ) < ((r:ℕ):ℝ) := by exact_mod_cast one_le_of_mem_primeRange r.2
    positivity
  · intro r s hrs
    exact inv_two_mul_le_abs_log_sub (one_le_of_mem_primeRange r.2)
      (one_le_of_mem_primeRange s.2) (fun h => hrs (Subtype.ext h))

/-- **Real form used for 𝒪₁** (§5.4: "a combination of four sums of the shape
Σ_{n≠m} x_n z̄_m/(y_n−y_m) … for instance the first is Σ_{n≠m}(a_n n^{2iT}) conj(a_m m^{2iT} ᾱ_m^+)/(y_n−y_m)"):
for real weights u, v and a real phase c, both
  Σ_{n≠m} u_n v_m cos(c(y_n−y_m))/(y_n−y_m)  and  Σ_{n≠m} u_n v_m sin(c(y_n−y_m))/(y_n−y_m)
(= Re, Im of the MV bilinear form with x_n = u_n e^{icy_n}, z_m = v_m e^{icy_m}) are bounded by
C (Σ 2n u_n²)^{1/2} (Σ 2n v_n²)^{1/2}. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/PPKernel/Variant1dfe683690a0f47ff5263e5bb1a619682cd33cb36a31d74cc2b8ecc416f57fd4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/PPKernel/Variant1dfe683690a0f47ff5263e5bb1a619682cd33cb36a31d74cc2b8ecc416f57fd4.lean#L573).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7c75669277cd28f7712457d57bb96fdc692ec435` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
