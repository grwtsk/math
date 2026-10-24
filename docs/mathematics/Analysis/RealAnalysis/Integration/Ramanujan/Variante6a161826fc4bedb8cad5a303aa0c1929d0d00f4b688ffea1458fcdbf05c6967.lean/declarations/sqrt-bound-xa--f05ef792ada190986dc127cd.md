# sqrt_bound_xa

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "80ec359baaef0e65fcde49ff39d42977efab3cd6",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1548,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e6/e6a161826fc4bedb8cad5a303aa0c1929d0d00f4b688ffea1458fcdbf05c6967.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1bd874fc-6239-c68c-b0ac-8c1b2a847f1d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c1147779-993a-9cb1-099f-38967668b567",
  "kind": "lemma",
  "lexical_name": "sqrt_bound_xa",
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
  "slug": "sqrt-bound-xa--f05ef792ada190986dc127cd",
  "source": {
    "blob": "80ec359baaef0e65fcde49ff39d42977efab3cd6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1584,
    "line": 1548,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Ramanujan/Variante6a161826fc4bedb8cad5a303aa0c1929d0d00f4b688ffea1458fcdbf05c6967.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f05ef792ada190986dc127cd81fbd68c393fac9bfaaa3eea756b9eeb29af29f8",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Ramanujan/Variante6a161826fc4bedb8cad5a303aa0c1929d0d00f4b688ffea1458fcdbf05c6967.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_SOURCE_DEPENDENCY"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c1147779-993a-9cb1-099f-38967668b567`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1548–1584.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma sqrt_bound_xa (x : ℝ) (hxax : xₐ ≤ x) :
    sqrt x ≤ x / log x ^ 6 * log xₐ ^ 6 / sqrt xₐ := by
  have hxapos : 0 < xₐ := xₐ_pos
  have hxpos : 0 < x := lt_of_lt_of_le hxapos hxax
  have h1x : 1 < x :=
    lt_of_lt_of_le one_lt_xₐ hxax
  have hlogpos : 0 < log x := log_pos h1x
  have hlogapos : 0 < log xₐ := log_xₐ_pos
  have hr : xₐ / log xₐ ^ 12 ≤ x / log x ^ 12 := ratio_bound_xa x hxax
  apply sqrt_le_iff.mpr
  refine ⟨by positivity, ?_⟩
  have h1 : xₐ ≤ x * log xₐ ^ 12 / log x ^ 12 := by
    have hloga12_pos : 0 < log xₐ ^ 12 := by positivity
    have := (div_le_iff₀ hloga12_pos).mp hr
    simpa [div_eq_mul_inv, mul_assoc, mul_left_comm, mul_comm] using this
  have hr' : x * xₐ ≤ x ^ 2 * log xₐ ^ 12 / log x ^ 12 := by
    have hm : x * xₐ ≤ x * (x * log xₐ ^ 12 / log x ^ 12) :=
      mul_le_mul_of_nonneg_left h1 hxpos.le
    have hmul : x * (x * log xₐ ^ 12 / log x ^ 12) = x ^ 2 * log xₐ ^ 12 / log x ^ 12 := by
      ring
    simpa [hmul] using hm
  have hsqrtxa_ne : sqrt xₐ ≠ 0 := ne_of_gt (sqrt_pos.mpr hxapos)
  have hsq' : (sqrt xₐ) ^ 2 = xₐ := by simpa [pow_two] using (sq_sqrt hxapos.le)
  have hcalc1 : (x / log x ^ 6 * log xₐ ^ 6 / sqrt xₐ) ^ 2 =
      x ^ 2 * log xₐ ^ 12 / (log x ^ 12 * (sqrt xₐ) ^ 2) := by
    field_simp [hlogpos.ne', hlogapos.ne', hsqrtxa_ne]
  rw [hcalc1, hsq']
  have : x * (log x ^ 12 * xₐ) ≤ x ^ 2 * log xₐ ^ 12 := by
    have hmul : x * xₐ * log x ^ 12 ≤ (x ^ 2 * log xₐ ^ 12 / log x ^ 12) * log x ^ 12 :=
      mul_le_mul_of_nonneg_right hr' (by positivity)
    have hlog12_ne : log x ^ 12 ≠ 0 := pow_ne_zero _ hlogpos.ne'
    have htmp : (x ^ 2 * log xₐ ^ 12 / log x ^ 12) * log x ^ 12 = x ^ 2 * log xₐ ^ 12 := by
      field_simp [hlog12_ne]
    nlinarith
  have hden_pos : 0 < log x ^ 12 * xₐ := by positivity
  exact (le_div_iff₀ hden_pos).2 <| by simpa [mul_assoc, mul_left_comm, mul_comm] using this

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Ramanujan/Variante6a161826fc4bedb8cad5a303aa0c1929d0d00f4b688ffea1458fcdbf05c6967.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Ramanujan/Variante6a161826fc4bedb8cad5a303aa0c1929d0d00f4b688ffea1458fcdbf05c6967.lean#L1548).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `80ec359baaef0e65fcde49ff39d42977efab3cd6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
