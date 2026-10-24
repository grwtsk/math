# tendsto_mul_L2_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:81acca76-4ecd-3236-f2c9-bb4237ad1f1f",
  "kind": "theorem",
  "lexical_name": "tendsto_mul_L2_zero",
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
  "slug": "tendsto-mul-l2-zero--2af6b93bfa90da45255f7f53",
  "source": {
    "blob": "925679930916da474288c858474ee4c850cb760a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 95,
    "line": 76,
    "path": "GRWTSK/Topology/GeneralTopology/Poles/Variante5e1fbf5e82bae6d6005879f01f8ddbea03ad9a0763b6fe21b04c9d79920902d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2af6b93bfa90da45255f7f53b9faf7cd589da69d5ca97959e2e9e2a4305aa86b",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Poles/Variante5e1fbf5e82bae6d6005879f01f8ddbea03ad9a0763b6fe21b04c9d79920902d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:81acca76-4ecd-3236-f2c9-bb4237ad1f1f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 76–95.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tendsto_mul_L2_zero : Tendsto (fun s : ℂ => s * L2 s) (𝓝[≠] 0) (𝓝 (-(1 / 2 : ℂ))) := by
  -- near 0 (s ≠ 0):  s·L₂ = −½ (s·logDeriv(Γℝ∘(1−·)) s + s·logDeriv G s)
  have hA0 : Gammaℝ (1 - 0) ≠ 0 := by simp [Gammaℝ_one]
  have hcontA : ContinuousAt (logDeriv (fun z => Gammaℝ (1 - z))) 0 :=
    continuousAt_logDeriv (analyticAt_Gammaℝ_one_sub hA0) hA0
  have hev : ∀ᶠ s in 𝓝[≠] (0:ℂ), s * L2 s
      = -(1/2) * (s * logDeriv (fun z => Gammaℝ (1 - z)) s + s * logDeriv invGammaℝ s) := by
    filter_upwards [eventually_Gammaℝ_ne_zero_nhdsWithin_zero,
      mem_nhdsWithin_of_mem_nhds eventually_Gammaℝ_one_sub_ne_zero_nhds_zero] with s h0 h1
    rw [L2, logDeriv_chiFE_eq h1 h0]; ring
  have hlim1 : Tendsto (fun s : ℂ => s * logDeriv (fun z => Gammaℝ (1 - z)) s) (𝓝[≠] 0) (𝓝 0) := by
    have := ((continuous_id.continuousAt (x := (0:ℂ))).tendsto.mul hcontA.tendsto).mono_left
      (nhdsWithin_le_nhds (s := {(0:ℂ)}ᶜ))
    simpa using this
  have hlim : Tendsto (fun s : ℂ => -(1/2) * (s * logDeriv (fun z => Gammaℝ (1 - z)) s
      + s * logDeriv invGammaℝ s)) (𝓝[≠] 0) (𝓝 (-(1/2) * (0 + 1))) :=
    (hlim1.add tendsto_mul_logDeriv_invGammaℝ_zero).const_mul _
  rw [show (-(1 / 2 : ℂ)) = -(1/2) * (0 + 1) by ring]
  exact hlim.congr' (hev.mono fun _ h => h.symm)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Poles/Variante5e1fbf5e82bae6d6005879f01f8ddbea03ad9a0763b6fe21b04c9d79920902d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Poles/Variante5e1fbf5e82bae6d6005879f01f8ddbea03ad9a0763b6fe21b04c9d79920902d.lean#L76).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `925679930916da474288c858474ee4c850cb760a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
