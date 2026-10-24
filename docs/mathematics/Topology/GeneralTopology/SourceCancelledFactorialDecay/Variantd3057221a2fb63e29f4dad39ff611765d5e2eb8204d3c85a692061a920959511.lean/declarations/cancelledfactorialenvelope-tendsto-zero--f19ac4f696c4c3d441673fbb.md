# cancelledFactorialEnvelope_tendsto_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8c963a34-1a32-c62d-e1db-9adbc261fe60",
  "kind": "theorem",
  "lexical_name": "cancelledFactorialEnvelope_tendsto_zero",
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
  "slug": "cancelledfactorialenvelope-tendsto-zero--f19ac4f696c4c3d441673fbb",
  "source": {
    "blob": "8fd72bb00d56d0a862cf341ce41159fa4d8c361d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 69,
    "line": 54,
    "path": "GRWTSK/Topology/GeneralTopology/SourceCancelledFactorialDecay/Variantd3057221a2fb63e29f4dad39ff611765d5e2eb8204d3c85a692061a920959511.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f19ac4f696c4c3d441673fbb1661c95df48ab0d6b63d939cbb2858643c1c1a59",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/SourceCancelledFactorialDecay/Variantd3057221a2fb63e29f4dad39ff611765d5e2eb8204d3c85a692061a920959511.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8c963a34-1a32-c62d-e1db-9adbc261fe60`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 54–69.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem cancelledFactorialEnvelope_tendsto_zero :
    Tendsto cancelledFactorialEnvelope atTop (𝓝 (0 : ℝ)) := by
  have h2 : Tendsto (fun A : ℝ => Real.log A ^ 2 / A) atTop (𝓝 (0 : ℝ)) := by
    simpa only [one_mul, add_zero] using
      Real.tendsto_pow_log_div_mul_add_atTop 1 0 2 (by norm_num)
  have h1 : Tendsto (fun A : ℝ => Real.log A / A) atTop (𝓝 (0 : ℝ)) := by
    simpa only [one_mul, add_zero, pow_one] using
      Real.tendsto_pow_log_div_mul_add_atTop 1 0 1 (by norm_num)
  have h0 : Tendsto (fun A : ℝ => 1 / A) atTop (𝓝 (0 : ℝ)) := by
    simpa only [one_div] using tendsto_inv_atTop_zero
  have hh := ((h2.const_mul 480).add (h1.const_mul 2560)).add (h0.const_mul 3840)
  change Tendsto (fun A : ℝ => 480 * (Real.log A ^ 2 / A) +
    2560 * (Real.log A / A) + 3840 * (1 / A)) atTop (𝓝 (0 : ℝ))
  simpa only [mul_zero, add_zero] using hh

/-- Full actual cancelled factorial work tends to zero including all real floor jumps. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/SourceCancelledFactorialDecay/Variantd3057221a2fb63e29f4dad39ff611765d5e2eb8204d3c85a692061a920959511.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/SourceCancelledFactorialDecay/Variantd3057221a2fb63e29f4dad39ff611765d5e2eb8204d3c85a692061a920959511.lean#L54).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8fd72bb00d56d0a862cf341ce41159fa4d8c361d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
