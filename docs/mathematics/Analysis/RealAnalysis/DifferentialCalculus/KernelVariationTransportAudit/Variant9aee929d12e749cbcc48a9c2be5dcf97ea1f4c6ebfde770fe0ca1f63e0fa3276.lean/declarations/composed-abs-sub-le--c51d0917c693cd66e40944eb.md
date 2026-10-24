# composed_abs_sub_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7fe7ec21c6459a8ab55158a81ac047eeb487c1e2",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 114,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/9a/9aee929d12e749cbcc48a9c2be5dcf97ea1f4c6ebfde770fe0ca1f63e0fa3276.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5854f7bd-01e6-cf9f-e6fd-b65f21188eb9",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:78e89e20-998d-754f-1f87-39da1416eba8",
  "kind": "theorem",
  "lexical_name": "composed_abs_sub_le",
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
  "slug": "composed-abs-sub-le--c51d0917c693cd66e40944eb",
  "source": {
    "blob": "7fe7ec21c6459a8ab55158a81ac047eeb487c1e2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 146,
    "line": 114,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/KernelVariationTransportAudit/Variant9aee929d12e749cbcc48a9c2be5dcf97ea1f4c6ebfde770fe0ca1f63e0fa3276.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c51d0917c693cd66e40944eba459ee8a898447b8a50578ba3ba8f8d99d0648b6",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/KernelVariationTransportAudit/Variant9aee929d12e749cbcc48a9c2be5dcf97ea1f4c6ebfde770fe0ca1f63e0fa3276.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:78e89e20-998d-754f-1f87-39da1416eba8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 114–146.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem composed_abs_sub_le (E : ℝ → ℝ) (h K' x y : ℝ)
    (hh : 1 ≤ h) (hx : 1 ≤ x) (hxy : x ≤ y)
    (hc : ContinuousOn E (Set.Ici 1))
    (hd : ∀ q : ℝ, 1 < q → DifferentiableAt ℝ E q)
    (hb : ∀ q : ℝ, 1 < q → |deriv E q| ≤ K' / (q * Real.sqrt q)) :
    |E (h * x ^ 2) - E (h * y ^ 2)| ≤
      (2 * K' / Real.sqrt h) * (1 / x - 1 / y) := by
  have hh0 : 0 < h := zero_lt_one.trans_le hh
  have hs0 : 0 < Real.sqrt h := Real.sqrt_pos.mpr hh0
  have hmap (t : ℝ) (ht : 1 ≤ t) : 1 ≤ h * t ^ 2 := by
    have hm := mul_le_mul_of_nonneg_right hh (sq_nonneg t)
    nlinarith
  have hmap' (t : ℝ) (ht : 1 < t) : 1 < h * t ^ 2 := by
    have hm := mul_le_mul_of_nonneg_right hh (sq_nonneg t)
    nlinarith
  apply abs_sub_le_reciprocal (fun t ↦ E (h * t ^ 2))
    (fun t ↦ deriv E (h * t ^ 2) * (2 * h * t)) (2 * K' / Real.sqrt h) x y hx hxy
  · exact hc.comp ((continuous_const.mul (continuous_id.pow 2)).continuousOn) hmap
  · intro t ht
    have hpow : HasDerivAt (fun s : ℝ ↦ h * s ^ 2) (2 * h * t) t := by
      convert! (hasDerivAt_pow 2 t).const_mul h using 1
      ring
    exact (hd _ (hmap' t ht)).hasDerivAt.comp t hpow
  · intro t ht
    have ht0 : 0 < t := by linarith
    rw [abs_mul, abs_of_nonneg (by positivity : 0 ≤ 2 * h * t)]
    calc
      _ ≤ (K' / ((h * t ^ 2) * Real.sqrt (h * t ^ 2))) * (2 * h * t) :=
        mul_le_mul_of_nonneg_right (hb _ (hmap' t ht)) (by positivity)
      _ = (2 * K' / Real.sqrt h) / t ^ 2 := by
        rw [Real.sqrt_mul hh0.le, Real.sqrt_sq ht0.le]
        field_simp

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/KernelVariationTransportAudit/Variant9aee929d12e749cbcc48a9c2be5dcf97ea1f4c6ebfde770fe0ca1f63e0fa3276.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/KernelVariationTransportAudit/Variant9aee929d12e749cbcc48a9c2be5dcf97ea1f4c6ebfde770fe0ca1f63e0fa3276.lean#L114).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7fe7ec21c6459a8ab55158a81ac047eeb487c1e2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
