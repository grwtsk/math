# actualRelativePsiTimeError_isBigO

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9ac1e461-07b9-2e9a-379c-02bd27d86db9",
  "kind": "theorem",
  "lexical_name": "actualRelativePsiTimeError_isBigO",
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
  "slug": "actualrelativepsitimeerror-isbigo--7b245399b442a34358d10742",
  "source": {
    "blob": "08a14b59b2272f9ec5821c910ed191c63dfc3392",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 88,
    "line": 69,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt01/Variant5e521aa25cbc272eafc1deb6a8b1ec5eaee12f770df9eda44f7f9800dc52df3f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7b245399b442a34358d107425f0a63a31558b3fd438cb6f8e29d6b785d526fa6",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt01/Variant5e521aa25cbc272eafc1deb6a8b1ec5eaee12f770df9eda44f7f9800dc52df3f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9ac1e461-07b9-2e9a-379c-02bd27d86db9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 69–88.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualRelativePsiTimeError_isBigO :
    ∃ c > 0, actualRelativePsiTimeError =O[atTop]
      fun t : ℝ => Real.exp (-c * t ^ ((1 : ℝ) / 10)) := by
  obtain ⟨c, hc, hp⟩ := MediumPNT
  refine ⟨c, hc, ?_⟩
  obtain ⟨C, hC⟩ := isBigO_iff.mp (hp.comp_tendsto Real.tendsto_exp_atTop)
  apply isBigO_iff.mpr
  refine ⟨C, ?_⟩
  filter_upwards [hC] with t ht
  simp only [Function.comp_def, Pi.sub_apply, id_eq, Real.norm_eq_abs, abs_mul,
    Real.abs_exp, Real.log_exp] at ht
  have hx : Real.exp t * Real.exp (-t) = 1 := by
    rw [← Real.exp_add, add_neg_cancel, Real.exp_zero]
  simp only [actualRelativePsiTimeError, Real.norm_eq_abs, abs_mul, Real.abs_exp]
  calc
    _ ≤ (C * (Real.exp t * Real.exp (-c * t ^ ((1 : ℝ) / 10)))) * Real.exp (-t) :=
      mul_le_mul_of_nonneg_right ht (Real.exp_pos _).le
    _ = C * Real.exp (-c * t ^ ((1 : ℝ) / 10)) := by nlinarith [hx]

/-- The actual relative psi error tends to zero; this gives no critical half-plane rate. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt01/Variant5e521aa25cbc272eafc1deb6a8b1ec5eaee12f770df9eda44f7f9800dc52df3f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt01/Variant5e521aa25cbc272eafc1deb6a8b1ec5eaee12f770df9eda44f7f9800dc52df3f.lean#L69).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `08a14b59b2272f9ec5821c910ed191c63dfc3392` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
