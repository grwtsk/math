# Filter.Tendsto.isBigOTVS_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4425ba65-5aa2-f158-f960-e786cbcd4c00",
  "kind": "lemma",
  "lexical_name": "Filter.Tendsto.isBigOTVS_one",
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
  "slug": "filter-tendsto-isbigotvs-one--a9e0406120f73e70ee539c30",
  "source": {
    "blob": "b4d1414f6409bd8837ab6212ea881887616138ca",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 528,
    "line": 498,
    "path": "GRWTSK/Topology/GeneralTopology/TVS/Variant802f6abe48b4dc96afbb832be0d242376f01abd2edc2dbfcdee7ce34b6794b33.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a9e0406120f73e70ee539c308f5989bb7c9ba75e8626c56827fa58610a8a2806",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/TVS/Variant802f6abe48b4dc96afbb832be0d242376f01abd2edc2dbfcdee7ce34b6794b33.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4425ba65-5aa2-f158-f960-e786cbcd4c00`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 498–528.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Filter.Tendsto.isBigOTVS_one [ContinuousAdd E] [ContinuousSMul 𝕜 E] {x : E}
    (h : Tendsto f l (𝓝 x)) : f =O[𝕜; l] (fun _ ↦ 1 : α → 𝕜) := by
  replace h : Tendsto (f · - x) l (𝓝 0) := by
    simpa [sub_eq_add_neg] using h.add (tendsto_const_nhds (x := -x))
  rw [(nhds_basis_balanced 𝕜 E).add_self.isBigOTVS_iff nhds_basis_ball]
  rintro U ⟨hU₀, hUb⟩
  obtain ⟨r, hr₀, hr₁, hr⟩ : ∃ r : ℝ≥0, 0 < r ∧ r ≤ 1 ∧ (r : ℝ≥0∞) ≤ (egauge 𝕜 U x)⁻¹ := by
    apply Eventually.exists_gt
    refine .and (eventually_le_nhds one_pos) ?_
    refine (ENNReal.tendsto_coe.mpr tendsto_id).eventually_le_const ?_
    suffices ∃ c : 𝕜, x ∈ c • U by simpa [egauge_eq_top]
    simpa using (absorbent_nhds_zero (𝕜 := 𝕜) hU₀ x).exists
  use r, by positivity
  filter_upwards [h.eventually_mem hU₀] with a ha
  calc
    egauge 𝕜 (U + U) (f a) ≤ max (egauge 𝕜 U (f a - x)) (egauge 𝕜 U x) := by
      simpa using egauge_add_add_le hUb hUb (f a - x) x
    _ ≤ (r : ℝ≥0∞)⁻¹ := by
      apply max_le
      · refine (egauge_le_one _ ha).trans ?_
        simp [one_le_inv₀ hr₀, hr₁]
      · rwa [ENNReal.le_inv_iff_le_inv]
    _ ≤ egauge 𝕜 (ball (0 : 𝕜) _) 1 := by simpa using div_le_egauge_ball 𝕜 r (1 : 𝕜)

end TopologicalSpace

section NormedSpace

variable [NontriviallyNormedField 𝕜]
variable [SeminormedAddCommGroup E] [SeminormedAddCommGroup F] [NormedSpace 𝕜 E] [NormedSpace 𝕜 F]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/TVS/Variant802f6abe48b4dc96afbb832be0d242376f01abd2edc2dbfcdee7ce34b6794b33.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/TVS/Variant802f6abe48b4dc96afbb832be0d242376f01abd2edc2dbfcdee7ce34b6794b33.lean#L498).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b4d1414f6409bd8837ab6212ea881887616138ca` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
