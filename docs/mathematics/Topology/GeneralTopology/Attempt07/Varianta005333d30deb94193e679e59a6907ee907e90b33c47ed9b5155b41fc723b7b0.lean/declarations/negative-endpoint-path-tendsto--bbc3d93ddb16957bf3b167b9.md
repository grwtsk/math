# negative_endpoint_path_tendsto

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:13aec8ba-ad81-c6b1-9277-6b13f027d874",
  "kind": "theorem",
  "lexical_name": "negative_endpoint_path_tendsto",
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
  "slug": "negative-endpoint-path-tendsto--bbc3d93ddb16957bf3b167b9",
  "source": {
    "blob": "6e8437e9f001c51fed1145477bde02e179a0a5fb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 192,
    "line": 182,
    "path": "GRWTSK/Topology/GeneralTopology/Attempt07/Varianta005333d30deb94193e679e59a6907ee907e90b33c47ed9b5155b41fc723b7b0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bbc3d93ddb16957bf3b167b9fe68f814d5e438713d853de2dd8fcc0cb88ca198",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Attempt07/Varianta005333d30deb94193e679e59a6907ee907e90b33c47ed9b5155b41fc723b7b0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:13aec8ba-ad81-c6b1-9277-6b13f027d874`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 182–192.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem negative_endpoint_path_tendsto (delta : ℝ → ℝ)
    (hprod : Tendsto (fun A : ℝ => A*delta A) atTop atTop) :
    Tendsto (fun A : ℝ => Real.exp (-2*A*delta A)) atTop (𝓝 0) := by
  have h2 : Tendsto (fun A : ℝ => 2*(A*delta A)) atTop atTop :=
    Tendsto.const_mul_atTop (by norm_num : (0 : ℝ)<2) hprod
  convert Real.tendsto_exp_neg_atTop_nhds_zero.comp h2 using 1
  ext A
  congr 1
  ring

/-- Genuine all-real path bound; no continuity or monotonicity of delta is assumed. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Attempt07/Varianta005333d30deb94193e679e59a6907ee907e90b33c47ed9b5155b41fc723b7b0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Attempt07/Varianta005333d30deb94193e679e59a6907ee907e90b33c47ed9b5155b41fc723b7b0.lean#L182).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6e8437e9f001c51fed1145477bde02e179a0a5fb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
