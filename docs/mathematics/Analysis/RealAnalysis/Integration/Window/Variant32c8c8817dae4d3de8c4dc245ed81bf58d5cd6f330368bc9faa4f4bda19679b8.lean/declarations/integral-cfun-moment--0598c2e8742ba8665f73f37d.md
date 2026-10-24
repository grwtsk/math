# integral_Cfun_moment

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "749ca9b7ad43eb4a407475d2aa8aa7c8324b5f67",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1261,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/32/32c8c8817dae4d3de8c4dc245ed81bf58d5cd6f330368bc9faa4f4bda19679b8.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e0ad77f7-215f-2b8e-0e4b-d52dc109cf3e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2bb7b644-6229-2f42-9368-4166b3299955",
  "kind": "theorem",
  "lexical_name": "integral_Cfun_moment",
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
  "slug": "integral-cfun-moment--0598c2e8742ba8665f73f37d",
  "source": {
    "blob": "749ca9b7ad43eb4a407475d2aa8aa7c8324b5f67",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1334,
    "line": 1261,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Window/Variant32c8c8817dae4d3de8c4dc245ed81bf58d5cd6f330368bc9faa4f4bda19679b8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0598c2e8742ba8665f73f37ddeeabe9a52a6ef56396dc8d51728695e7679df2b",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Window/Variant32c8c8817dae4d3de8c4dc245ed81bf58d5cd6f330368bc9faa4f4bda19679b8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2bb7b644-6229-2f42-9368-4166b3299955`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1261–1334.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem integral_Cfun_moment (h0 : 0 < lam) (_h1 : lam ≤ 1) (hL : 0 < L) :
    ∫ y in (0:ℝ)..L, Cfun lam L y * y
      = L ^ 3 / 2 * (Real.sin (2 * theta lam) / (8 * theta lam ^ 3)
        - Real.cos (2 * theta lam) / (4 * theta lam ^ 2)) := by
  have hωpos : (0:ℝ) < Real.sqrt 2 * lam * (1 / L) := by positivity
  set ω : ℝ := Real.sqrt 2 * lam * (1 / L) with hωdef
  have hθ : 0 < theta lam := theta_pos h0
  have hωL : ω * L = 2 * theta lam := by
    rw [hωdef, show theta lam = lam / Real.sqrt 2 from rfl]
    have hs2 : (0:ℝ) < Real.sqrt 2 := by positivity
    have hsq : Real.sqrt 2 ^ 2 = 2 := Real.sq_sqrt (by norm_num)
    field_simp
    ring_nf
    try rw [hsq]
    try ring
  set H : ℝ → ℝ := fun y => (((L * y - y ^ 2) / ω + 2 / ω ^ 3) * Real.sin (ω * y)
      + ((L - 2 * y) / ω ^ 2) * Real.cos (ω * y)) / 2
    + ((y / ω) * Real.cos (ω * (L - y)) + Real.sin (ω * (L - y)) / ω ^ 2) / (2 * ω) with hHdef
  have hH : ∀ y : ℝ, HasDerivAt H (Cfun lam L y * y) y := by
    intro y
    have hlin1 : HasDerivAt (fun y : ℝ => ω * y) ω y := by
      simpa using (hasDerivAt_id y).const_mul ω
    have hlin2 : HasDerivAt (fun y : ℝ => ω * (L - y)) (ω * (-1)) y :=
      ((hasDerivAt_id y).const_sub L).const_mul ω
    have hsin1 : HasDerivAt (fun y : ℝ => Real.sin (ω * y)) (Real.cos (ω * y) * ω) y :=
      (Real.hasDerivAt_sin (ω * y)).comp y hlin1
    have hcos1 : HasDerivAt (fun y : ℝ => Real.cos (ω * y)) (-Real.sin (ω * y) * ω) y :=
      (Real.hasDerivAt_cos (ω * y)).comp y hlin1
    have hsin2 : HasDerivAt (fun y : ℝ => Real.sin (ω * (L - y)))
        (Real.cos (ω * (L - y)) * (ω * (-1))) y := by
      have := (Real.hasDerivAt_sin (ω * (L - y))).comp y hlin2
      simpa [Function.comp_def] using this
    have hcos2 : HasDerivAt (fun y : ℝ => Real.cos (ω * (L - y)))
        (-Real.sin (ω * (L - y)) * (ω * (-1))) y := by
      have := (Real.hasDerivAt_cos (ω * (L - y))).comp y hlin2
      simpa [Function.comp_def] using this
    have hq : HasDerivAt (fun y : ℝ => y ^ 2) (2 * y) y := by
      simpa using hasDerivAt_pow 2 y
    have hp1 : HasDerivAt (fun y : ℝ => (L * y - y ^ 2) / ω + 2 / ω ^ 3)
        ((L * 1 - 2 * y) / ω) y :=
      ((((hasDerivAt_id y).const_mul L).sub hq).div_const ω).add_const (2 / ω ^ 3)
    have hp2 : HasDerivAt (fun y : ℝ => (L - 2 * y) / ω ^ 2) (-(2 * 1) / ω ^ 2) y := by
      have : HasDerivAt (fun y : ℝ => L - 2 * y) (-(2 * 1)) y := by
        simpa using ((hasDerivAt_id y).const_mul (2:ℝ)).const_sub L
      exact this.div_const (ω ^ 2)
    have hp3 : HasDerivAt (fun y : ℝ => y / ω) (1 / ω) y := by
      simpa using (hasDerivAt_id y).div_const ω
    have hA := ((hp1.mul hsin1).add (hp2.mul hcos1)).div_const 2
    have hB := (((hp3.mul hcos2).add (hsin2.div_const (ω ^ 2))).div_const (2 * ω))
    have htot := hA.add hB
    refine htot.congr_deriv ?_
    unfold Cfun
    rw [← hωdef]
    have hω0 : ω ≠ 0 := ne_of_gt hωpos
    field_simp
    ring
  rw [intervalIntegral.integral_eq_sub_of_hasDerivAt (fun y _ => hH y)
    (Continuous.intervalIntegrable (by
      unfold Cfun
      rw [← hωdef]
      fun_prop) _ _)]
  rw [hHdef]
  simp only
  rw [show ω * (0:ℝ) = 0 by ring, show ω * (L - L) = 0 by ring, show ω * (L - 0) = ω * L by ring,
    hωL, Real.sin_zero, Real.cos_zero]
  have hω0 : ω ≠ 0 := ne_of_gt hωpos
  have hωeq : ω = 2 * theta lam / L := by
    rw [eq_div_iff hL.ne']
    exact hωL
  rw [hωeq]
  field_simp
  ring

/-- the sharp window k := 1_{[−L/2,L/2]}·v(·/L). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Window/Variant32c8c8817dae4d3de8c4dc245ed81bf58d5cd6f330368bc9faa4f4bda19679b8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Window/Variant32c8c8817dae4d3de8c4dc245ed81bf58d5cd6f330368bc9faa4f4bda19679b8.lean#L1261).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `749ca9b7ad43eb4a407475d2aa8aa7c8324b5f67` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
