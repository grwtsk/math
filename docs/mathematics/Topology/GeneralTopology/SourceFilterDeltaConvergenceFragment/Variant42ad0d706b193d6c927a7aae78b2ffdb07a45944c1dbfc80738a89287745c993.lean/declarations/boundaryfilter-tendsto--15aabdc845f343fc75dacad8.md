# boundaryFilter_tendsto

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:df5f3e4a-9770-11df-c09b-b5d2dc5a635d",
  "kind": "theorem",
  "lexical_name": "boundaryFilter_tendsto",
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
  "slug": "boundaryfilter-tendsto--15aabdc845f343fc75dacad8",
  "source": {
    "blob": "d927a799c033d6faf561bd319756d58de2d6a695",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 147,
    "line": 118,
    "path": "GRWTSK/Topology/GeneralTopology/SourceFilterDeltaConvergenceFragment/Variant42ad0d706b193d6c927a7aae78b2ffdb07a45944c1dbfc80738a89287745c993.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:15aabdc845f343fc75dacad8bd50ef619567a72c01f25ac2aece30fba652017e",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/SourceFilterDeltaConvergenceFragment/Variant42ad0d706b193d6c927a7aae78b2ffdb07a45944c1dbfc80738a89287745c993.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:df5f3e4a-9770-11df-c09b-b5d2dc5a635d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 118–147.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem boundaryFilter_tendsto (ε h : ℕ → ℝ)
    (hε : Tendsto ε atTop (nhds 0)) (hh : Tendsto h atTop (nhds 0))
    (t : ℝ) (ht : W ((t : ℂ) * Complex.I) ≠ 0) :
    Tendsto (fun j => boundaryFilter (ε j) (h j) t) atTop
      (nhds ((1 + (t : ℂ) * Complex.I)⁻¹)) := by
  have hec : Tendsto (fun j => (ε j : ℂ)) atTop (nhds 0) :=
    Complex.continuous_ofReal.tendsto 0 |>.comp hε
  have hhc : Tendsto (fun j => (h j : ℂ)) atTop (nhds 0) :=
    Complex.continuous_ofReal.tendsto 0 |>.comp hh
  have hz : Tendsto (fun j => (ε j : ℂ) + (t : ℂ) * Complex.I) atTop
      (nhds ((t : ℂ) * Complex.I)) := by
    simpa using hec.add tendsto_const_nhds
  have hw := W_continuous.continuousAt.tendsto.comp hz
  have hr := (tendsto_const_nhds : Tendsto (fun _ : ℕ => W ((t : ℂ) * Complex.I))
    atTop (nhds (W ((t : ℂ) * Complex.I)))).div hw ht
  have hs : Tendsto (fun j => 1 + (h j : ℂ) * ((ε j : ℂ) + (t : ℂ) * Complex.I))
      atTop (nhds (1 : ℂ)) := by
    simpa using (tendsto_const_nhds : Tendsto (fun _ : ℕ => (1 : ℂ))
      atTop (nhds 1)).add (hhc.mul hz)
  have hd : Tendsto (fun j => 1 + (ε j : ℂ) + (t : ℂ) * Complex.I) atTop
      (nhds (1 + (t : ℂ) * Complex.I)) := by
    simpa [add_assoc] using (tendsto_const_nhds : Tendsto (fun _ : ℕ => (1 : ℂ))
      atTop (nhds 1)).add hz
  have hall := (hr.mul ((hs.inv₀ one_ne_zero).pow 6)).div hd
    (boundary_denominator_ne_zero t)
  simp only [div_self ht, inv_one, one_pow, mul_one, one_div] at hall
  exact hall.congr' (Eventually.of_forall (fun _ => rfl))

/-- Arbitrary vanishing positive shifts and nonnegative smoothing give vanishing squared
distortion. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/SourceFilterDeltaConvergenceFragment/Variant42ad0d706b193d6c927a7aae78b2ffdb07a45944c1dbfc80738a89287745c993.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/SourceFilterDeltaConvergenceFragment/Variant42ad0d706b193d6c927a7aae78b2ffdb07a45944c1dbfc80738a89287745c993.lean#L118).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d927a799c033d6faf561bd319756d58de2d6a695` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
