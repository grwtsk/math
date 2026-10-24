# simple_bound_of_gzMoments_family

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "48f192ac51d33c4dd49f21a3ece15426538bd026",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 343,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/76/761ca741f9fc7cee97930cff5960ddf335e5fe1481bc93e7d637dd4e5c75b000.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:078895b6-e5f1-329a-cf00-e2b76f232cde",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:45de9eb6-370c-d136-ba5b-b9c1bbc77ea3",
  "kind": "theorem",
  "lexical_name": "simple_bound_of_gzMoments_family",
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
  "slug": "simple-bound-of-gzmoments-family--e10d5fa16002986e1151c7fc",
  "source": {
    "blob": "48f192ac51d33c4dd49f21a3ece15426538bd026",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 378,
    "line": 343,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Assembly/Variant761ca741f9fc7cee97930cff5960ddf335e5fe1481bc93e7d637dd4e5c75b000.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e10d5fa16002986e1151c7fc88460a437b1a0acde57e4e5f1a5195fb1e4ff711",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Assembly/Variant761ca741f9fc7cee97930cff5960ddf335e5fe1481bc93e7d637dd4e5c75b000.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:45de9eb6-370c-d136-ba5b-b9c1bbc77ea3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 343–378.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem simple_bound_of_gzMoments_family {κ : ℝ} (hM : GzMoments Z Pf κ) :
    ∀ ε > 0, ∃ T₀ : ℝ, ∀ T ≥ T₀, (2 - κ - ε) * (Z.N T (2 * T) : ℝ) ≤ Z.N0s T (2 * T) := by
  have hL : ∀ T, (Pf T).L T = P.L T := fun T => by simp only [Params.L, hW.lam_eq]
  obtain ⟨-, hNII⟩ := eventually_side_conditions_of_rvm Z hR P hP
  obtain ⟨θ₀, hTail, hB0, hBto⟩ := family_tail_package Z P hP hlam hW
  obtain ⟨htrace, hfrob⟩ := hM
  have hLtop := tendsto_L_atTop P hP.lam_pos
  have h0 : ∀ᶠ T in atTop, 4 * rtrace ((Pf T).hat T (Z.Gz (Pf T) T))
      - frobSq ((Pf T).hat T (Z.Gz (Pf T) T))
      - 2 * (Z.N T (2 * T) : ℝ) - 3 * (NII Z T : ℝ)
      - θ₀ T / ((Pf T).a T * (Pf T).L T)
          * (4 + 2 * Real.sqrt (frobSq ((Pf T).hat T (Z.Gz (Pf T) T)))
            + θ₀ T / ((Pf T).a T * (Pf T).L T))
      ≤ (Z.N0s T (2 * T) : ℝ) := by
    filter_upwards [hTail, hW.poisson, hW.a_half, eventually_ge_atTop (0:ℝ),
      hLtop.eventually_gt_atTop 0] with T hTl hPo ha2 hT0 hLT
    have hLpos : 0 < (Pf T).L T := by rw [hL]; exact hLT
    exact seamA_mult2 hT0 ZeroSide.phiHatConj ZeroSide.phiHatReal hPo hTl (by linarith) hLpos
  have hNII_o : (fun T => (NII Z T : ℝ)) =o[atTop] (fun T => (Z.N T (2 * T) : ℝ)) := by
    obtain ⟨CII, hII⟩ := hNII
    have hO : (fun T => (NII Z T : ℝ)) =O[atTop] (fun T => Real.sqrt T * l T) := by
      refine IsBigO.of_bound CII ?_
      filter_upwards [hII, eventually_l_pos] with T h hl
      rw [Real.norm_eq_abs, Real.norm_eq_abs, abs_of_nonneg (Nat.cast_nonneg _),
        abs_of_nonneg (by positivity)]
      simpa [mul_assoc] using h
    exact hO.trans_isLittleO (isLittleO_N_of_isLittleO_Tl Z hR isLittleO_sqrt_mul_l_Tl)
  exact count_certificate_fn κ (N := fun T => (Z.N T (2 * T) : ℝ)) (NII := fun T => (NII Z T : ℝ))
    (tr := fun T => rtrace ((Pf T).hat T (Z.Gz (Pf T) T)))
    (fr := fun T => frobSq ((Pf T).hat T (Z.Gz (Pf T) T)))
    (B := fun T => θ₀ T / ((Pf T).a T * (Pf T).L T)) (lower := fun T => (Z.N0s T (2 * T) : ℝ))
    (Eventually.of_forall fun T => frobSq_nonneg _) h0 hB0 hBto hNII_o (tendsto_N_atTop Z hR)
    htrace hfrob

include hR hP hlam hW in
/-- **(3/2 − κ/2 − ε)·N(T,2T) ≤ N_d(T,2T)** at fixed λ for a window FAMILY, abstract Z, from GzMoments. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Assembly/Variant761ca741f9fc7cee97930cff5960ddf335e5fe1481bc93e7d637dd4e5c75b000.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Assembly/Variant761ca741f9fc7cee97930cff5960ddf335e5fe1481bc93e7d637dd4e5c75b000.lean#L343).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `48f192ac51d33c4dd49f21a3ece15426538bd026` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
