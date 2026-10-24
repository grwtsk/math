# uniformity_basis_edist_nnreal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:225338b5-ad75-ac9e-cbd3-02d0613d20b5",
  "kind": "theorem",
  "lexical_name": "uniformity_basis_edist_nnreal",
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
  "slug": "uniformity-basis-edist-nnreal--d9b24b8074f6819a2c97bcb1",
  "source": {
    "blob": "63e5f43992a6b026d445ee1063bca5fa2e833776",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 211,
    "line": 206,
    "path": "GRWTSK/Topology/MetricTopology/Defs/Variant982fe9a7c3a885c83ccade6f44ed58c7bace41ef57fd72569bbeb8111677ee00.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d9b24b8074f6819a2c97bcb11225794d45020489bec0004fdd61e86c7986aa83",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Defs/Variant982fe9a7c3a885c83ccade6f44ed58c7bace41ef57fd72569bbeb8111677ee00.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:225338b5-ad75-ac9e-cbd3-02d0613d20b5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 206–211.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem uniformity_basis_edist_nnreal :
    (𝓤 α).HasBasis (fun ε : ℝ≥0 => 0 < ε) fun ε => { p : α × α | edist p.1 p.2 < ε } :=
  EMetric.mk_uniformity_basis (fun _ => ENNReal.coe_pos.2) fun _ε ε₀ =>
    let ⟨δ, hδ⟩ := ENNReal.lt_iff_exists_nnreal_btwn.1 ε₀
    ⟨δ, ENNReal.coe_pos.1 hδ.1, le_of_lt hδ.2⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Defs/Variant982fe9a7c3a885c83ccade6f44ed58c7bace41ef57fd72569bbeb8111677ee00.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Defs/Variant982fe9a7c3a885c83ccade6f44ed58c7bace41ef57fd72569bbeb8111677ee00.lean#L206).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `63e5f43992a6b026d445ee1063bca5fa2e833776` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
