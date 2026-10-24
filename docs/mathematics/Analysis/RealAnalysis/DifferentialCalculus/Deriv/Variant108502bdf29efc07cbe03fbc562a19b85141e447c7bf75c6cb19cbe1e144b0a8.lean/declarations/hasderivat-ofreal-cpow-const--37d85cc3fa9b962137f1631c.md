# hasDerivAt_ofReal_cpow_const'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5f7b8accf926316ac82cf1ee8ceae30863d99e2d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 234,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/10/108502bdf29efc07cbe03fbc562a19b85141e447c7bf75c6cb19cbe1e144b0a8.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c886b537-9dd3-c0ba-ba56-c303ed5d6822",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0039c9f7-f6f9-cc3b-b729-aae905ddcf89",
  "kind": "theorem",
  "lexical_name": "hasDerivAt_ofReal_cpow_const'",
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
  "slug": "hasderivat-ofreal-cpow-const--37d85cc3fa9b962137f1631c",
  "source": {
    "blob": "5f7b8accf926316ac82cf1ee8ceae30863d99e2d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 275,
    "line": 234,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Deriv/Variant108502bdf29efc07cbe03fbc562a19b85141e447c7bf75c6cb19cbe1e144b0a8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:37d85cc3fa9b962137f1631c4602d0f8a5eab43b5eb34506ca4a1f005aad78af",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Deriv/Variant108502bdf29efc07cbe03fbc562a19b85141e447c7bf75c6cb19cbe1e144b0a8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0039c9f7-f6f9-cc3b-b729-aae905ddcf89`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 234–275.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem hasDerivAt_ofReal_cpow_const' {x : ℝ} (hx : x ≠ 0) {r : ℂ} (hr : r ≠ -1) :
    HasDerivAt (fun y : ℝ => (y : ℂ) ^ (r + 1) / (r + 1)) (x ^ r) x := by
  rw [Ne, ← add_eq_zero_iff_eq_neg, ← Ne] at hr
  rcases lt_or_gt_of_ne hx.symm with (hx | hx)
  · -- easy case : `0 < x`
    apply HasDerivAt.comp_ofReal (e := fun y => (y : ℂ) ^ (r + 1) / (r + 1))
    convert HasDerivAt.div_const (𝕜 := ℂ) ?_ (r + 1) using 1
    · exact (mul_div_cancel_right₀ _ hr).symm
    · convert HasDerivAt.cpow_const ?_ ?_ using 1
      · rw [add_sub_cancel_right, mul_comm]; exact (mul_one _).symm
      · exact hasDerivAt_id (x : ℂ)
      · simp [hx]
  · -- harder case : `x < 0`
    have : ∀ᶠ y : ℝ in 𝓝 x,
        (y : ℂ) ^ (r + 1) / (r + 1) = (-y : ℂ) ^ (r + 1) * exp (π * I * (r + 1)) / (r + 1) := by
      refine Filter.eventually_of_mem (Iio_mem_nhds hx) fun y hy => ?_
      rw [ofReal_cpow_of_nonpos (le_of_lt hy)]
    refine HasDerivAt.congr_of_eventuallyEq ?_ this
    rw [ofReal_cpow_of_nonpos (le_of_lt hx)]
    suffices HasDerivAt (fun y : ℝ => (-↑y) ^ (r + 1) * exp (↑π * I * (r + 1)))
        ((r + 1) * (-↑x) ^ r * exp (↑π * I * r)) x by
      convert this.div_const (r + 1) using 1
      conv_rhs => rw [mul_assoc, mul_comm, mul_div_cancel_right₀ _ hr]
    rw [mul_add ((π : ℂ) * _), mul_one, exp_add, exp_pi_mul_I, mul_comm (_ : ℂ) (-1 : ℂ),
      neg_one_mul]
    simp_rw [mul_neg, ← neg_mul, ← ofReal_neg]
    suffices HasDerivAt (fun y : ℝ => (↑(-y) : ℂ) ^ (r + 1)) (-(r + 1) * ↑(-x) ^ r) x by
      convert this.neg.mul_const _ using 1; ring
    suffices HasDerivAt (fun y : ℝ => (y : ℂ) ^ (r + 1)) ((r + 1) * ↑(-x) ^ r) (-x) by
      convert @HasDerivAt.scomp ℝ _ ℂ _ _ x ℝ _ _ _ _ _ _ _ _ this (hasDerivAt_neg x) using 1
      rw [real_smul, ofReal_neg 1, ofReal_one]; ring
    suffices HasDerivAt (fun y : ℂ => y ^ (r + 1)) ((r + 1) * ↑(-x) ^ r) ↑(-x) by
      exact this.comp_ofReal
    conv in ↑_ ^ _ => rw [(by ring : r = r + 1 - 1)]
    convert HasDerivAt.cpow_const ?_ ?_ using 1
    · rw [add_sub_cancel_right, add_sub_cancel_right]; exact (mul_one _).symm
    · exact hasDerivAt_id ((-x : ℝ) : ℂ)
    · simp [hx]

@[deprecated (since := "2024-12-15")] alias hasDerivAt_ofReal_cpow := hasDerivAt_ofReal_cpow_const'

/-- An alternate formulation of `hasDerivAt_ofReal_cpow_const'`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Deriv/Variant108502bdf29efc07cbe03fbc562a19b85141e447c7bf75c6cb19cbe1e144b0a8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Deriv/Variant108502bdf29efc07cbe03fbc562a19b85141e447c7bf75c6cb19cbe1e144b0a8.lean#L234).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5f7b8accf926316ac82cf1ee8ceae30863d99e2d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
