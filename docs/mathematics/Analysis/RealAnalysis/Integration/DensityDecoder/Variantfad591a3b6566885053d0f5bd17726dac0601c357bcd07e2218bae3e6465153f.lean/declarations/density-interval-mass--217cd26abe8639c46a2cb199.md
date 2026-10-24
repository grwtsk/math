# density_interval_mass

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0c7511fd-f764-1e3b-4ae5-760d2789df48",
  "kind": "theorem",
  "lexical_name": "density_interval_mass",
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
  "slug": "density-interval-mass--217cd26abe8639c46a2cb199",
  "source": {
    "blob": "ddc22a4d1343a3ab483075f81ce1096cdecc8b63",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 43,
    "line": 32,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/DensityDecoder/Variantfad591a3b6566885053d0f5bd17726dac0601c357bcd07e2218bae3e6465153f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:217cd26abe8639c46a2cb1990b2312bc705cecf303b02a6f2497e69023ed690e",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/DensityDecoder/Variantfad591a3b6566885053d0f5bd17726dac0601c357bcd07e2218bae3e6465153f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0c7511fd-f764-1e3b-4ae5-760d2789df48`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 32–43.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem density_interval_mass (a b : ℝ) :
    (∫ u in a..b, criticalDensity u) = b-a+criticalDecay b-criticalDecay a := by
  have ha := criticalDensity_integral (a/2)
  have hb := criticalDensity_integral (b/2)
  rw [show 2*(a/2)=a by ring] at ha
  rw [show 2*(b/2)=b by ring] at hb
  have hi := intervalIntegral.integral_interval_sub_left
    (density_continuous.intervalIntegrable (μ:=volume) 0 b)
    (density_continuous.intervalIntegrable (μ:=volume) 0 a)
  rw [ha,hb] at hi
  linarith

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/DensityDecoder/Variantfad591a3b6566885053d0f5bd17726dac0601c357bcd07e2218bae3e6465153f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/DensityDecoder/Variantfad591a3b6566885053d0f5bd17726dac0601c357bcd07e2218bae3e6465153f.lean#L32).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ddc22a4d1343a3ab483075f81ce1096cdecc8b63` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
