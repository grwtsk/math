# harm_mean_le_geom_mean_weighted

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:319f50d6-dfaf-c627-935e-e302ccd32a2c",
  "kind": "theorem",
  "lexical_name": "harm_mean_le_geom_mean_weighted",
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
  "slug": "harm-mean-le-geom-mean-weighted--47c140f92de0798d58974015",
  "source": {
    "blob": "9666dfd38e6814c2fa05f62bef682868468c0bbb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 386,
    "line": 365,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/MeanInequalities/Variant4523c8555bb6ec0b7cd46a03dabe0956e9f6fea85413755ecfc66ef1f351c1ac.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:47c140f92de0798d58974015a85445910c2bc8f7dbe5472598a7b2c8889bcb6c",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/MeanInequalities/Variant4523c8555bb6ec0b7cd46a03dabe0956e9f6fea85413755ecfc66ef1f351c1ac.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:319f50d6-dfaf-c627-935e-e302ccd32a2c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 365–386.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem harm_mean_le_geom_mean_weighted (w z : ι → ℝ) (hs : s.Nonempty) (hw : ∀ i ∈ s, 0 < w i)
    (hw' : ∑ i ∈ s, w i = 1) (hz : ∀ i ∈ s, 0 < z i) :
    (∑ i ∈ s, w i / z i)⁻¹ ≤ ∏ i ∈ s, z i ^ w i  := by
    have : ∏ i ∈ s, (1 / z) i ^ w i ≤ ∑ i ∈ s, w i * (1 / z) i :=
      geom_mean_le_arith_mean_weighted s w (1/z) (fun i hi ↦ le_of_lt (hw i hi)) hw'
      (fun i hi ↦ one_div_nonneg.2 (le_of_lt (hz i hi)))
    have p_pos : 0 < ∏ i ∈ s, (z i)⁻¹ ^ w i :=
      prod_pos fun i hi => rpow_pos_of_pos (inv_pos.2 (hz i hi)) _
    have s_pos : 0 < ∑ i ∈ s, w i * (z i)⁻¹ :=
      sum_pos (fun i hi => mul_pos (hw i hi) (inv_pos.2 (hz i hi))) hs
    norm_num at this
    rw [← inv_le_inv₀ s_pos p_pos] at this
    apply le_trans this
    have p_pos₂ : 0 < (∏ i ∈ s, (z i) ^ w i)⁻¹ :=
      inv_pos.2 (prod_pos fun i hi => rpow_pos_of_pos ((hz i hi)) _ )
    rw [← inv_inv (∏ i ∈ s, z i ^ w i), inv_le_inv₀ p_pos p_pos₂, ← Finset.prod_inv_distrib]
    gcongr
    · exact fun i hi ↦ inv_nonneg.mpr (Real.rpow_nonneg (le_of_lt (hz i hi)) _)
    · rw [Real.inv_rpow]; apply fun i hi ↦ le_of_lt (hz i hi); assumption


/-- **HM-GM inequality**: The **harmonic mean is less than or equal to the geometric mean. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/MeanInequalities/Variant4523c8555bb6ec0b7cd46a03dabe0956e9f6fea85413755ecfc66ef1f351c1ac.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/MeanInequalities/Variant4523c8555bb6ec0b7cd46a03dabe0956e9f6fea85413755ecfc66ef1f351c1ac.lean#L365).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9666dfd38e6814c2fa05f62bef682868468c0bbb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
