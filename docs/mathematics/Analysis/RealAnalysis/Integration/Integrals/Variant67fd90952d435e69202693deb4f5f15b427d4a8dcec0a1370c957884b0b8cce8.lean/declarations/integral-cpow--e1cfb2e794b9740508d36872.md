# integral_cpow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "48a6c825f7dc3cee9985320e03b21870e12f21b6",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 344,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/67/67fd90952d435e69202693deb4f5f15b427d4a8dcec0a1370c957884b0b8cce8.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d43aca65-ee93-1463-1aba-5b96a3678931",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2660d8d8-5cd0-ba0f-fd23-f7b408699206",
  "kind": "theorem",
  "lexical_name": "integral_cpow",
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
  "slug": "integral-cpow--e1cfb2e794b9740508d36872",
  "source": {
    "blob": "48a6c825f7dc3cee9985320e03b21870e12f21b6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 374,
    "line": 344,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Integrals/Variant67fd90952d435e69202693deb4f5f15b427d4a8dcec0a1370c957884b0b8cce8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e1cfb2e794b9740508d36872076845e9d96500dd90a053406c6fe963740a041b",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Integrals/Variant67fd90952d435e69202693deb4f5f15b427d4a8dcec0a1370c957884b0b8cce8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2660d8d8-5cd0-ba0f-fd23-f7b408699206`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 344–374.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem integral_cpow {r : ℂ} (h : -1 < r.re ∨ r ≠ -1 ∧ (0 : ℝ) ∉ [[a, b]]) :
    (∫ x : ℝ in a..b, (x : ℂ) ^ r) = ((b : ℂ) ^ (r + 1) - (a : ℂ) ^ (r + 1)) / (r + 1) := by
  rw [sub_div]
  have hr : r + 1 ≠ 0 := by
    rcases h with h | h
    · apply_fun Complex.re
      rw [Complex.add_re, Complex.one_re, Complex.zero_re, Ne, add_eq_zero_iff_eq_neg]
      exact h.ne'
    · rw [Ne, ← add_eq_zero_iff_eq_neg] at h; exact h.1
  by_cases hab : (0 : ℝ) ∉ [[a, b]]
  · apply integral_eq_sub_of_hasDerivAt (fun x hx => ?_)
      (intervalIntegrable_cpow (r := r) <| Or.inr hab)
    refine hasDerivAt_ofReal_cpow_const' (ne_of_mem_of_not_mem hx hab) ?_
    contrapose! hr; rwa [add_eq_zero_iff_eq_neg]
  replace h : -1 < r.re := by tauto
  suffices ∀ c : ℝ, (∫ x : ℝ in (0)..c, (x : ℂ) ^ r) =
      (c : ℂ) ^ (r + 1) / (r + 1) - (0 : ℂ) ^ (r + 1) / (r + 1) by
    rw [← integral_add_adjacent_intervals (@intervalIntegrable_cpow' a 0 r h)
      (@intervalIntegrable_cpow' 0 b r h), integral_symm, this a, this b, Complex.zero_cpow hr]
    ring
  intro c
  apply integral_eq_sub_of_hasDeriv_right
  · refine ((Complex.continuous_ofReal_cpow_const ?_).div_const _).continuousOn
    rwa [Complex.add_re, Complex.one_re, ← neg_lt_iff_pos_add]
  · refine fun x hx => (hasDerivAt_ofReal_cpow_const' ?_ ?_).hasDerivWithinAt
    · rcases le_total c 0 with (hc | hc)
      · rw [max_eq_left hc] at hx; exact hx.2.ne
      · rw [min_eq_left hc] at hx; exact hx.1.ne'
    · contrapose! hr; rw [hr]; ring
  · exact intervalIntegrable_cpow' h

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Integrals/Variant67fd90952d435e69202693deb4f5f15b427d4a8dcec0a1370c957884b0b8cce8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Integrals/Variant67fd90952d435e69202693deb4f5f15b427d4a8dcec0a1370c957884b0b8cce8.lean#L344).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `48a6c825f7dc3cee9985320e03b21870e12f21b6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
