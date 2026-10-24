# cell_mass_exact

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a3c461a6-02bc-658f-f35c-62f76e8f3bec",
  "kind": "theorem",
  "lexical_name": "cell_mass_exact",
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
  "slug": "cell-mass-exact--d3ec0592876f4e954845085a",
  "source": {
    "blob": "e12f1107fda0e2e3ec13fe72d41327e7db7ee291",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 210,
    "line": 191,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceRestrictedLowTimeWork/Variantcfcb2c65742eb0575c17c1b92c9df34057be7e86a00488ab3e83090cc4c902fa.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d3ec0592876f4e954845085ac43063a0be080dd05fd697a6a1317bd1f3acf8e2",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceRestrictedLowTimeWork/Variantcfcb2c65742eb0575c17c1b92c9df34057be7e86a00488ab3e83090cc4c902fa.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a3c461a6-02bc-658f-f35c-62f76e8f3bec`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 191–210.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem cell_mass_exact {k : ℝ} (hk : 0 < k) :
    cellMass k = 2 / Real.sqrt k - 2 / Real.sqrt (k + 1) := by
  have hd (u : ℝ) (hu : 0 < u) :
      HasDerivAt (fun x : ℝ => -2 / Real.sqrt x) (1 / (u * Real.sqrt u)) u := by
    have hs : Real.sqrt u ≠ 0 := Real.sqrt_ne_zero'.mpr hu
    have h := (hasDerivAt_const u (-2 : ℝ)).div (Real.hasDerivAt_sqrt hu.ne') hs
    apply h.congr_deriv
    rw [Real.sq_sqrt hu.le]
    field_simp [hs, hu.ne']
    ring
  have hc : ContinuousOn (fun x : ℝ => -2 / Real.sqrt x) (Icc k (k + 1)) := by
    intro u hu
    exact ((hd u (hk.trans_le hu.1)).continuousAt).continuousWithinAt
  have h := intervalIntegral.integral_eq_sub_of_hasDerivAt_of_le
    (by linarith : k ≤ k + 1) hc
    (fun u hu => hd u (hk.trans hu.1)) (cell_mass_integrable hk)
  change cellMass k = -2 / Real.sqrt (k + 1) - (-2 / Real.sqrt k) at h
  simp only [neg_div] at h
  linarith

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceRestrictedLowTimeWork/Variantcfcb2c65742eb0575c17c1b92c9df34057be7e86a00488ab3e83090cc4c902fa.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceRestrictedLowTimeWork/Variantcfcb2c65742eb0575c17c1b92c9df34057be7e86a00488ab3e83090cc4c902fa.lean#L191).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e12f1107fda0e2e3ec13fe72d41327e7db7ee291` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
