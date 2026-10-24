# constantPresentedFabric

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:be86b67f6ced584cfa63b8ec051e14c0bb7dab5e8a084b17f89d33a7cef51e78",
  "kind": "def",
  "lexical_name": "constantPresentedFabric",
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
  "slug": "constantpresentedfabric--691e22d0199d0af5b58f5a73",
  "source": {
    "blob": "e54e5263d63f6e6ff7e858b1d2bb3ed088b53356",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 56,
    "line": 46,
    "path": "GRWTSK/Topology/AlgebraicTopology/FabricTests/Variant08d1c7e80519b3dccec05aba29514f271f99b548b2b6be909ab9ece9402ab22e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:691e22d0199d0af5b58f5a733cb17b1882ceb5cbc8584028d3eeb4e8d4284cee",
  "verification": {
    "reference": "docs/verification/Topology/AlgebraicTopology/FabricTests/Variant08d1c7e80519b3dccec05aba29514f271f99b548b2b6be909ab9ece9402ab22e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:be86b67f6ced584cfa63b8ec051e14c0bb7dab5e8a084b17f89d33a7cef51e78`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 46–56.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def constantPresentedFabric (shape : Shape) (P : Presentation) :
    DAF.Fabric.Fabric where
  shape := shape
  presentation := fun _ _ => P
  contract := fun _ _ => Presentation.Hom.id P
  contract_id := by intros; rfl
  contract_comp := by
    intros
    apply Presentation.Hom.ext <;> rfl

/-- The genuine standard one-simplex. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/AlgebraicTopology/FabricTests/Variant08d1c7e80519b3dccec05aba29514f271f99b548b2b6be909ab9ece9402ab22e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/AlgebraicTopology/FabricTests/Variant08d1c7e80519b3dccec05aba29514f271f99b548b2b6be909ab9ece9402ab22e.lean#L46).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e54e5263d63f6e6ff7e858b1d2bb3ed088b53356` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
