# mem_uniformity_edist

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0a3a1499-4731-4e37-2dd1-fc5b4178117d",
  "kind": "theorem",
  "lexical_name": "mem_uniformity_edist",
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
  "slug": "mem-uniformity-edist--5dc7a887aeaf57235d3db1d7",
  "source": {
    "blob": "63e5f43992a6b026d445ee1063bca5fa2e833776",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 164,
    "line": 156,
    "path": "GRWTSK/Topology/MetricTopology/Defs/Variant982fe9a7c3a885c83ccade6f44ed58c7bace41ef57fd72569bbeb8111677ee00.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5dc7a887aeaf57235d3db1d7ada0eea124d02d8420bbea09f283b100ae014723",
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

Occurrence: `result:0a3a1499-4731-4e37-2dd1-fc5b4178117d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 156–164.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mem_uniformity_edist {s : Set (α × α)} :
    s ∈ 𝓤 α ↔ ∃ ε > 0, ∀ {a b : α}, edist a b < ε → (a, b) ∈ s :=
  uniformity_basis_edist.mem_uniformity_iff

/-- Given `f : β → ℝ≥0∞`, if `f` sends `{i | p i}` to a set of positive numbers
accumulating to zero, then `f i`-neighborhoods of the diagonal form a basis of `𝓤 α`.

For specific bases see `uniformity_basis_edist`, `uniformity_basis_edist'`,
`uniformity_basis_edist_nnreal`, and `uniformity_basis_edist_inv_nat`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Defs/Variant982fe9a7c3a885c83ccade6f44ed58c7bace41ef57fd72569bbeb8111677ee00.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Defs/Variant982fe9a7c3a885c83ccade6f44ed58c7bace41ef57fd72569bbeb8111677ee00.lean#L156).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `63e5f43992a6b026d445ee1063bca5fa2e833776` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
