# tendsto_const_smul_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3e87610a-1db3-3a6a-2146-0a3dd8861808",
  "kind": "theorem",
  "lexical_name": "tendsto_const_smul_iff",
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
  "slug": "tendsto-const-smul-iff--7f0487a84ff4b4907aa97095",
  "source": {
    "blob": "05b1fb90ce2c8759e7841b11e51ceaf211b96e95",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 214,
    "line": 206,
    "path": "GRWTSK/Topology/GeneralTopology/ConstMulAction/Variant7d16a0b4a131485454c60a9c1d15c9316fe8422b2c8816ae7bad2333e762188b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7f0487a84ff4b4907aa97095ea854326d98b4c6fca524b1e55e7ca6fa131aadb",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ConstMulAction/Variant7d16a0b4a131485454c60a9c1d15c9316fe8422b2c8816ae7bad2333e762188b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3e87610a-1db3-3a6a-2146-0a3dd8861808`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 206–214.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tendsto_const_smul_iff {f : β → α} {l : Filter β} {a : α} (c : G) :
    Tendsto (fun x => c • f x) l (𝓝 <| c • a) ↔ Tendsto f l (𝓝 a) :=
  ⟨fun h => by simpa only [inv_smul_smul] using h.const_smul c⁻¹, fun h => h.const_smul _⟩
#align tendsto_const_smul_iff tendsto_const_smul_iff
#align tendsto_const_vadd_iff tendsto_const_vadd_iff

variable [TopologicalSpace β] {f : β → α} {b : β} {s : Set β}

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ConstMulAction/Variant7d16a0b4a131485454c60a9c1d15c9316fe8422b2c8816ae7bad2333e762188b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ConstMulAction/Variant7d16a0b4a131485454c60a9c1d15c9316fe8422b2c8816ae7bad2333e762188b.lean#L206).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `05b1fb90ce2c8759e7841b11e51ceaf211b96e95` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
