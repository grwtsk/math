# correctedQuotient_eq_integral

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6f16bc7b788c7d762e47413c0965490c6277e777",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 288,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/06/064d82ae32ffaa6f30586ae999fa720bca8b2860cf96d9cbdf2b3021b44b5e91.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c0430db4-3ebb-c1a5-123e-54a3e0e763af",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3561b0c0-8c95-f4c3-994a-58b52e546f70",
  "kind": "theorem",
  "lexical_name": "correctedQuotient_eq_integral",
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
  "slug": "correctedquotient-eq-integral--0f5cc52e24f12d5051389b18",
  "source": {
    "blob": "6f16bc7b788c7d762e47413c0965490c6277e777",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 306,
    "line": 288,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/CandidateLineBoundsAudit/Variant064d82ae32ffaa6f30586ae999fa720bca8b2860cf96d9cbdf2b3021b44b5e91.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0f5cc52e24f12d5051389b182976d1f853c6b4e02e5d640d37f2e3e3c4adafb3",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/CandidateLineBoundsAudit/Variant064d82ae32ffaa6f30586ae999fa720bca8b2860cf96d9cbdf2b3021b44b5e91.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3561b0c0-8c95-f4c3-994a-58b52e546f70`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 288–306.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem correctedQuotient_eq_integral (X : ℕ) (w : ℂ) :
    correctedQuotient X w = quotientIntegral X w := by
  by_cases hw : w = 1 / 2
  · subst w
    have hQ : Tendsto (correctedQuotient X) (𝓝[≠] (1 / 2))
        (𝓝 (correctedQuotient X (1 / 2))) :=
      ((correctedQuotient_differentiable X).continuous.continuousAt
        (x := (1 / 2 : ℂ))).tendsto.mono_left nhdsWithin_le_nhds
    have hI : Tendsto (quotientIntegral X) (𝓝[≠] (1 / 2))
        (𝓝 (quotientIntegral X (1 / 2))) :=
      ((quotientIntegral_continuous X).continuousAt
        (x := (1 / 2 : ℂ))).tendsto.mono_left nhdsWithin_le_nhds
    have heq : correctedQuotient X =ᶠ[𝓝[≠] (1 / 2)] quotientIntegral X := by
      filter_upwards [self_mem_nhdsWithin] with z hz
      exact correctedQuotient_eq_integral_of_ne X z hz
    exact tendsto_nhds_unique hQ ((tendsto_congr' heq).mpr hI)
  · exact correctedQuotient_eq_integral_of_ne X w hw

/-- Absolute values of the original signed reciprocal prefix are bounded by the harmonic prefix. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/CandidateLineBoundsAudit/Variant064d82ae32ffaa6f30586ae999fa720bca8b2860cf96d9cbdf2b3021b44b5e91.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/CandidateLineBoundsAudit/Variant064d82ae32ffaa6f30586ae999fa720bca8b2860cf96d9cbdf2b3021b44b5e91.lean#L288).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6f16bc7b788c7d762e47413c0965490c6277e777` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
