# JoinedIn.inv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:211829f0-7bf6-2743-bd68-fe1526d55f8e",
  "kind": "theorem",
  "lexical_name": "JoinedIn.inv",
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
  "slug": "joinedin-inv--5b7b833f945ac04577d5d897",
  "source": {
    "blob": "8d20859b5051b57d95ba054c45e88a74298f78da",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 298,
    "line": 291,
    "path": "GRWTSK/Topology/GeneralTopology/PathConnected/Variant346def4d78d18ffff29fa42eb4745fe0518f85d0772a7a2ab1e09b7b20bd5480.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5b7b833f945ac04577d5d8979669d6d800dbab7ad497027f1e7258bc38efa4e7",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/PathConnected/Variant346def4d78d18ffff29fa42eb4745fe0518f85d0772a7a2ab1e09b7b20bd5480.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:211829f0-7bf6-2743-bd68-fe1526d55f8e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 291–298.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem JoinedIn.inv {G : Type*} [InvolutiveInv G] [TopologicalSpace G] [ContinuousInv G]
    {s : Set G} {a b : G} (hs : JoinedIn s a b) :
    JoinedIn s⁻¹ a⁻¹ b⁻¹ :=
  ⟨hs.somePath.inv, fun t ↦ Set.inv_mem_inv.mpr (hs.somePath_mem t)⟩

/-! ### Path component -/

/-- The path component of `x` is the set of points that can be joined to `x`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/PathConnected/Variant346def4d78d18ffff29fa42eb4745fe0518f85d0772a7a2ab1e09b7b20bd5480.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/PathConnected/Variant346def4d78d18ffff29fa42eb4745fe0518f85d0772a7a2ab1e09b7b20bd5480.lean#L291).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8d20859b5051b57d95ba054c45e88a74298f78da` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
