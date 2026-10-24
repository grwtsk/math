# sqrt_bound_xa

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:504fb906-dc28-b975-c9ae-3025dc3d6311",
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
  "slug": "sqrt-bound-xa--872512cc4edbde87087a5c9d",
  "source": {
    "blob": "1497488f027732033fe8af0a05024403d34b5d20",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1592,
    "line": 1556,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Ramanujan/Varianta18d14250a1e8aef6688590efa8158696b1db9a13215705c4d3ee5363ac6e7ad.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:872512cc4edbde87087a5c9d44a1cc47447bc4b33ba9aa7e9a4b5e4149042ebf",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Ramanujan/Varianta18d14250a1e8aef6688590efa8158696b1db9a13215705c4d3ee5363ac6e7ad.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:504fb906-dc28-b975-c9ae-3025dc3d6311`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1556–1592.

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

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Ramanujan/Varianta18d14250a1e8aef6688590efa8158696b1db9a13215705c4d3ee5363ac6e7ad.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Ramanujan/Varianta18d14250a1e8aef6688590efa8158696b1db9a13215705c4d3ee5363ac6e7ad.lean#L1556).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1497488f027732033fe8af0a05024403d34b5d20` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
