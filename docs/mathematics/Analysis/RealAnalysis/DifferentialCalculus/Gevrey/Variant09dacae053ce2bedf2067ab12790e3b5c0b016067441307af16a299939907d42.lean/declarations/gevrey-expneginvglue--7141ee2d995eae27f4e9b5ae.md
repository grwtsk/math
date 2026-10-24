# gevrey_expNegInvGlue

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "df944f8bb21f78243c91cc7bbfdd5d03ccac1987",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 185,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/09/09dacae053ce2bedf2067ab12790e3b5c0b016067441307af16a299939907d42.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5f6526d3-7dfe-767b-aac9-289afbbc38a0",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:fa138215-7b6a-2ac6-38e6-a20993b24c4e",
  "kind": "theorem",
  "lexical_name": "gevrey_expNegInvGlue",
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
  "slug": "gevrey-expneginvglue--7141ee2d995eae27f4e9b5ae",
  "source": {
    "blob": "df944f8bb21f78243c91cc7bbfdd5d03ccac1987",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 220,
    "line": 185,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Gevrey/Variant09dacae053ce2bedf2067ab12790e3b5c0b016067441307af16a299939907d42.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7141ee2d995eae27f4e9b5aeb16aa65fbab7ea61155cf9aeb83d022d41305654",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Gevrey/Variant09dacae053ce2bedf2067ab12790e3b5c0b016067441307af16a299939907d42.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fa138215-7b6a-2ac6-38e6-a20993b24c4e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 185–220.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem gevrey_expNegInvGlue (k : ℕ) (hk : 1 ≤ k) (x : ℝ) :
    |iteratedDeriv k expNegInvGlue x| ≤ (18 / Real.exp 1) ^ k * (k : ℝ) ^ (2 * (k : ℝ)) := by
  have hrpow : (k : ℝ) ^ (2 * (k : ℝ)) = (k : ℝ) ^ (2 * k) := by
    rw [show (2 : ℝ) * (k : ℝ) = ((2 * k : ℕ) : ℝ) by push_cast; ring, Real.rpow_natCast]
  rw [hrpow]
  set C : ℝ := (18 / Real.exp 1) ^ k * (k : ℝ) ^ (2 * k) with hC
  have hC0 : 0 ≤ C := by positivity
  -- x > 0
  have hpos : ∀ x : ℝ, 0 < x → |iteratedDeriv k expNegInvGlue x| ≤ C := by
    intro x hx
    rw [(expNegInvGlue_eventuallyEq_gR hx).iteratedDeriv_eq, gR_iteratedDeriv k x hx]
    exact (Complex.abs_re_le_norm _).trans ((norm_iteratedDeriv_G_le k hx).trans (cauchy_bound_le k hk hx))
  -- x < 0
  have hneg : ∀ x : ℝ, x < 0 → |iteratedDeriv k expNegInvGlue x| ≤ C := by
    intro x hx
    have hev : expNegInvGlue =ᶠ[𝓝 x] fun _ => (0 : ℝ) := by
      filter_upwards [Iio_mem_nhds hx] with t ht
      exact expNegInvGlue.zero_of_nonpos ht.le
    rw [hev.iteratedDeriv_eq, iteratedDeriv_const]
    simp [hC0, Nat.one_le_iff_ne_zero.mp hk]
  -- x = 0 by closedness + density
  have hcont : Continuous (iteratedDeriv k expNegInvGlue) :=
    expNegInvGlue.contDiff.continuous_iteratedDeriv k (by exact_mod_cast le_top)
  have hclosed : IsClosed {x : ℝ | |iteratedDeriv k expNegInvGlue x| ≤ C} :=
    isClosed_le (continuous_abs.comp hcont) continuous_const
  have hsub : ({0}ᶜ : Set ℝ) ⊆ {x : ℝ | |iteratedDeriv k expNegInvGlue x| ≤ C} := by
    intro x hx
    rcases lt_or_gt_of_ne hx with h | h
    · exact hneg x h
    · exact hpos x h
  have : x ∈ closure ({0}ᶜ : Set ℝ) := by rw [closure_compl_singleton]; trivial
  exact hclosed.closure_subset_iff.mpr hsub this


/-! ### bounds for g and g(1−·) with the convention gb 0 = 1 -/

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Gevrey/Variant09dacae053ce2bedf2067ab12790e3b5c0b016067441307af16a299939907d42.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Gevrey/Variant09dacae053ce2bedf2067ab12790e3b5c0b016067441307af16a299939907d42.lean#L185).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `df944f8bb21f78243c91cc7bbfdd5d03ccac1987` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
