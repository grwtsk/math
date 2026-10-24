# moving_decaying_tendsto

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "edaad9990003b638d717db8c0db2108e6cf46bfa",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 134,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e0/e0bd3051749b6e3140c92be30feca7d44dd8f922e2e0c62c9a770b1b54247eaa.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5024d569-e4c9-6cf8-bd9e-6565064ded5c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7f3b10f9-40c6-b5da-e1c9-3ca4605a00b5",
  "kind": "theorem",
  "lexical_name": "moving_decaying_tendsto",
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
  "slug": "moving-decaying-tendsto--a120eaa4ba14eb87d484d440",
  "source": {
    "blob": "edaad9990003b638d717db8c0db2108e6cf46bfa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 144,
    "line": 134,
    "path": "GRWTSK/Topology/GeneralTopology/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variante0bd3051749b6e3140c92be30feca7d44dd8f922e2e0c62c9a770b1b54247eaa.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a120eaa4ba14eb87d484d440d8cc4d1fdd20c8aa734a82f86ab130b87808c40d",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variante0bd3051749b6e3140c92be30feca7d44dd8f922e2e0c62c9a770b1b54247eaa.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7f3b10f9-40c6-b5da-e1c9-3ca4605a00b5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 134–144.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem moving_decaying_tendsto :
    Tendsto (fun A : ℝ => (4160 / 3) * (Real.log A / A + 1 / A)) atTop (𝓝 0) := by
  have hl : Tendsto (fun A : ℝ => Real.log A / A) atTop (𝓝 0) := by
    simpa using Real.tendsto_pow_log_div_mul_add_atTop 1 0 1 one_ne_zero
  have hi : Tendsto (fun A : ℝ => 1 / A) atTop (𝓝 0) := by
    simpa only [one_div] using (tendsto_inv_atTop_zero :
      Tendsto (fun A : ℝ => A⁻¹) atTop (𝓝 0))
  simpa using (hl.add hi).const_mul (4160 / 3)

/-- The actual prefix estimate keeps the exponentially growing envelope inside
the integral. It holds for every nonnegative real prefix length. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variante0bd3051749b6e3140c92be30feca7d44dd8f922e2e0c62c9a770b1b54247eaa.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variante0bd3051749b6e3140c92be30feca7d44dd8f922e2e0c62c9a770b1b54247eaa.lean#L134).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `edaad9990003b638d717db8c0db2108e6cf46bfa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
