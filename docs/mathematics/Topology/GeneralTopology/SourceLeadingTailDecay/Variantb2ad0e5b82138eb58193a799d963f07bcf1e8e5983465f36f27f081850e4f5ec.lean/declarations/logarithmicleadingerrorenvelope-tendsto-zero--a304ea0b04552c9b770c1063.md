# logarithmicLeadingErrorEnvelope_tendsto_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:577dfce6-0986-b02f-8b9d-6b0207bca72c",
  "kind": "theorem",
  "lexical_name": "logarithmicLeadingErrorEnvelope_tendsto_zero",
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
  "slug": "logarithmicleadingerrorenvelope-tendsto-zero--a304ea0b04552c9b770c1063",
  "source": {
    "blob": "176a2d291cbbd4db4b17ffb39dc30c53236d7c53",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 88,
    "line": 73,
    "path": "GRWTSK/Topology/GeneralTopology/SourceLeadingTailDecay/Variantb2ad0e5b82138eb58193a799d963f07bcf1e8e5983465f36f27f081850e4f5ec.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a304ea0b04552c9b770c1063717ded1348d37701469857bf4ecf788fe641d16d",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/SourceLeadingTailDecay/Variantb2ad0e5b82138eb58193a799d963f07bcf1e8e5983465f36f27f081850e4f5ec.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:577dfce6-0986-b02f-8b9d-6b0207bca72c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 73–88.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem logarithmicLeadingErrorEnvelope_tendsto_zero :
    Tendsto logarithmicLeadingErrorEnvelope atTop (𝓝 (0 : ℝ)) := by
  have h2 : Tendsto (fun A : ℝ => (Real.log A) ^ 2 / A) atTop (𝓝 (0 : ℝ)) := by
    simpa only [one_mul, add_zero] using
      Real.tendsto_pow_log_div_mul_add_atTop 1 0 2 (by norm_num)
  have h1 : Tendsto (fun A : ℝ => Real.log A / A) atTop (𝓝 (0 : ℝ)) := by
    simpa only [one_mul, add_zero, pow_one] using
      Real.tendsto_pow_log_div_mul_add_atTop 1 0 1 (by norm_num)
  have h0 : Tendsto (fun A : ℝ => 1 / A) atTop (𝓝 (0 : ℝ)) := by
    simpa only [one_div] using tendsto_inv_atTop_zero
  have hh := ((h2.const_mul (80 * |fullPositiveKappa 1|)).add
    (h1.const_mul (80 * |fullPositiveKappa 2| + (134 / 3 : ℝ) * |fullPositiveKappa 4|))).add
      (h0.const_mul (20 * |fullPositiveKappa 3|))
  simpa only [logarithmicLeadingErrorEnvelope, mul_zero, add_zero] using hh

/-- The actual full four-jet remainder, including all real floor jumps, tends to zero. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/SourceLeadingTailDecay/Variantb2ad0e5b82138eb58193a799d963f07bcf1e8e5983465f36f27f081850e4f5ec.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/SourceLeadingTailDecay/Variantb2ad0e5b82138eb58193a799d963f07bcf1e8e5983465f36f27f081850e4f5ec.lean#L73).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `176a2d291cbbd4db4b17ffb39dc30c53236d7c53` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
