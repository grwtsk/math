# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9e3a2cea4a5c1611cfeeba84482360907a9968d0a2222c9e8fd15ed21f7a5361",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--5aacaf6b150af5fb4abe142e",
  "source": {
    "blob": "95968725497e01a32255909775b1ae8d6ef2b025",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 83,
    "line": 70,
    "path": "GRWTSK/Topology/AlgebraicTopology/SimplyConnected/Variantb9d84d7ad051bc7ea4ff274e5a7ec7ea569083774b185e8f1e640f2e6f4730c7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5aacaf6b150af5fb4abe142e1933688eb0dce31f3497b751b85c6258ac0629c9",
  "verification": {
    "reference": "docs/verification/Topology/AlgebraicTopology/SimplyConnected/Variantb9d84d7ad051bc7ea4ff274e5a7ec7ea569083774b185e8f1e640f2e6f4730c7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9e3a2cea4a5c1611cfeeba84482360907a9968d0a2222c9e8fd15ed21f7a5361`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 70–83.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance (priority := 100) ofContractible (Y : Type _) [TopologicalSpace Y] [ContractibleSpace Y] :
    SimplyConnectedSpace Y where
  equiv_unit :=
    let H : TopCat.of Y ≃ₕ TopCat.of Unit := (ContractibleSpace.hequiv_unit Y).some
    ⟨(FundamentalGroupoidFunctor.equivOfHomotopyEquiv H).trans
      FundamentalGroupoid.punitEquivDiscretePUnit⟩
#align simply_connected_space.of_contractible SimplyConnectedSpace.ofContractible

end SimplyConnectedSpace

attribute [local instance] Path.Homotopic.setoid

/-- A space is simply connected iff it is path connected, and there is at most one path
  up to homotopy between any two points. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/AlgebraicTopology/SimplyConnected/Variantb9d84d7ad051bc7ea4ff274e5a7ec7ea569083774b185e8f1e640f2e6f4730c7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/AlgebraicTopology/SimplyConnected/Variantb9d84d7ad051bc7ea4ff274e5a7ec7ea569083774b185e8f1e640f2e6f4730c7.lean#L70).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `95968725497e01a32255909775b1ae8d6ef2b025` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
