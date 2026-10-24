# Prod.instPathConnectedSpace

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:efac8abdab8cf5cff1723bcca913b186ead476892e6ecd2ad5c71788dffa3d4d",
  "kind": "instance",
  "lexical_name": "Prod.instPathConnectedSpace",
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
  "slug": "prod-instpathconnectedspace--0521401569c5fe33c9f13755",
  "source": {
    "blob": "8d20859b5051b57d95ba054c45e88a74298f78da",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 694,
    "line": 683,
    "path": "GRWTSK/Topology/GeneralTopology/PathConnected/Variant346def4d78d18ffff29fa42eb4745fe0518f85d0772a7a2ab1e09b7b20bd5480.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0521401569c5fe33c9f13755f7fb2f1b5c53a1a81874211c0647254859101e63",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/PathConnected/Variant346def4d78d18ffff29fa42eb4745fe0518f85d0772a7a2ab1e09b7b20bd5480.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:efac8abdab8cf5cff1723bcca913b186ead476892e6ecd2ad5c71788dffa3d4d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 683–694.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance Prod.instPathConnectedSpace [PathConnectedSpace X] [PathConnectedSpace Y] :
    PathConnectedSpace (X × Y) := by
  rw [pathConnectedSpace_iff_univ, ← Set.univ_prod_univ]
  exact isPathConnected_univ.prod isPathConnected_univ

end Prod

section Pi

variable {Z : ι → Type*} [∀ i, TopologicalSpace (Z i)]

/-- If for each `i`, `x i` is joined to `y i`, then `x` is joined to `y` in the product space. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/PathConnected/Variant346def4d78d18ffff29fa42eb4745fe0518f85d0772a7a2ab1e09b7b20bd5480.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/PathConnected/Variant346def4d78d18ffff29fa42eb4745fe0518f85d0772a7a2ab1e09b7b20bd5480.lean#L683).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8d20859b5051b57d95ba054c45e88a74298f78da` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
