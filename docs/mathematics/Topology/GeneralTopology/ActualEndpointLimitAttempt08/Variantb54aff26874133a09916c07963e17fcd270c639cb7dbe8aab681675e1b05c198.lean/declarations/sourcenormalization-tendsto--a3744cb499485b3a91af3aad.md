# sourceNormalization_tendsto

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:76b8cbbc-2e13-f509-105a-b4c40181c444",
  "kind": "theorem",
  "lexical_name": "sourceNormalization_tendsto",
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
  "slug": "sourcenormalization-tendsto--a3744cb499485b3a91af3aad",
  "source": {
    "blob": "1b83e9d89b1d6d115e5d6bd5ec6bfd17e7d7265e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 40,
    "line": 30,
    "path": "GRWTSK/Topology/GeneralTopology/ActualEndpointLimitAttempt08/Variantb54aff26874133a09916c07963e17fcd270c639cb7dbe8aab681675e1b05c198.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a3744cb499485b3a91af3aadb81ff55856b2679906def12d2d61bc5d110dd791",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ActualEndpointLimitAttempt08/Variantb54aff26874133a09916c07963e17fcd270c639cb7dbe8aab681675e1b05c198.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:76b8cbbc-2e13-f509-105a-b4c40181c444`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 30–40.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem sourceNormalization_tendsto :
    Tendsto sourceNormalization atTop (𝓝 (4096/109395 : ℝ)) := by
  have h1 : Tendsto (fun A : ℝ => A⁻¹) atTop (𝓝 0) := tendsto_inv_atTop_zero
  have hc : Tendsto (fun _ : ℝ => (4096/109395 : ℝ)) atTop (𝓝 (4096/109395 : ℝ)) := tendsto_const_nhds
  have h := (hc.add ((h1.pow 2).const_mul (65536/45045 : ℝ))).add
    ((h1.pow 4).const_mul (196608/5005 : ℝ))
  convert h using 1
  · ext A; unfold sourceNormalization; simp only [inv_pow]; ring
  · norm_num

/-- Genuine continuity of a finite compact-interval polynomial integral. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ActualEndpointLimitAttempt08/Variantb54aff26874133a09916c07963e17fcd270c639cb7dbe8aab681675e1b05c198.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ActualEndpointLimitAttempt08/Variantb54aff26874133a09916c07963e17fcd270c639cb7dbe8aab681675e1b05c198.lean#L30).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1b83e9d89b1d6d115e5d6bd5ec6bfd17e7d7265e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
