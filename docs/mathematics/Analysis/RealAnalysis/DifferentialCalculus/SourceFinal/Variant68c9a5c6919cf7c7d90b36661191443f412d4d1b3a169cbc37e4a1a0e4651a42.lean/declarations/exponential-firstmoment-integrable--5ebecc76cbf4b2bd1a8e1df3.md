# exponential_firstMoment_integrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1de55e9b-d67a-d0b6-de17-18fb5e6a3042",
  "kind": "theorem",
  "lexical_name": "exponential_firstMoment_integrable",
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
  "slug": "exponential-firstmoment-integrable--5ebecc76cbf4b2bd1a8e1df3",
  "source": {
    "blob": "27bb206ef9c9fe0867f26cac058b52d30f83a38b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 210,
    "line": 198,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceFinal/Variant68c9a5c6919cf7c7d90b36661191443f412d4d1b3a169cbc37e4a1a0e4651a42.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5ebecc76cbf4b2bd1a8e1df3ffb9a389ba20d2c840533c49633f759060a13307",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/SourceFinal/Variant68c9a5c6919cf7c7d90b36661191443f412d4d1b3a169cbc37e4a1a0e4651a42.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1de55e9b-d67a-d0b6-de17-18fb5e6a3042`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 198–210.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exponential_firstMoment_integrable {b : ℝ} (hb : 0 < b) :
    IntegrableOn (fun t : ℝ ↦ t * Real.exp (-b * t)) (Ioi 0) := by
  have hbase : IntegrableOn (fun t : ℝ ↦ Real.exp (-t) * t) (Ioi 0) := by
    simpa only [show (2 : ℝ) - 1 = 1 by norm_num, Real.rpow_one] using
      Real.GammaIntegral_convergent (s := 2) (by norm_num)
  have hscaled := (integrableOn_Ioi_comp_mul_left_iff
    (fun t : ℝ ↦ Real.exp (-t) * t) 0 hb).mpr (by simpa using hbase)
  have h := hscaled.div_const b
  apply h.congr
  filter_upwards with t
  rw [show -(b * t) = -b * t by ring]
  field_simp

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/SourceFinal/Variant68c9a5c6919cf7c7d90b36661191443f412d4d1b3a169cbc37e4a1a0e4651a42.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceFinal/Variant68c9a5c6919cf7c7d90b36661191443f412d4d1b3a169cbc37e4a1a0e4651a42.lean#L198).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `27bb206ef9c9fe0867f26cac058b52d30f83a38b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
