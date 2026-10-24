# _root_.GRWTSK.Topology.GeneralTopology.NonemptyIcc.Variant82f67ade8a32d1316b0fcd244a2cc4759943843c3f2743db2fc1371df5ded114.Equiv.IicFinsetSet

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:18d2d4a7db05c07399b6f78e4867c4c6325a25ca787ea889c4867b08f9f029e8",
  "kind": "def",
  "lexical_name": "_root_.GRWTSK.Topology.GeneralTopology.NonemptyIcc.Variant82f67ade8a32d1316b0fcd244a2cc4759943843c3f2743db2fc1371df5ded114.Equiv.IicFinsetSet",
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
  "slug": "root-grwtsk-topology-generaltopology-nonemptyicc-variant82f67ade8a32d131--4f31777358d19ca1e4c537ea",
  "source": {
    "blob": "4d730f5565a12cccc48bbf985896dd1fa2ec0eac",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 490,
    "line": 479,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variantd87ba16046d9a11dfbad4743be36cbb8fc6d733be91113ca72347881642b78d7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4f31777358d19ca1e4c537eaf145abad71337ecdabe6199f536ccbfd7478005f",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variantd87ba16046d9a11dfbad4743be36cbb8fc6d733be91113ca72347881642b78d7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:18d2d4a7db05c07399b6f78e4867c4c6325a25ca787ea889c4867b08f9f029e8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 479–490.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def _root_.GRWTSK.Topology.GeneralTopology.NonemptyIcc.Variant82f67ade8a32d1316b0fcd244a2cc4759943843c3f2743db2fc1371df5ded114.Equiv.IicFinsetSet (a : α) : Iic a ≃ Set.Iic a where
  toFun b := ⟨b.1, coe_Iic a ▸ mem_coe.2 b.2⟩
  invFun b := ⟨b.1, by rw [← mem_coe, coe_Iic a]; exact b.2⟩
  left_inv := fun _ ↦ rfl
  right_inv := fun _ ↦ rfl

end LocallyFiniteOrderBot

section LocallyFiniteOrderTop

variable [LocallyFiniteOrderTop α] {a : α}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variantd87ba16046d9a11dfbad4743be36cbb8fc6d733be91113ca72347881642b78d7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variantd87ba16046d9a11dfbad4743be36cbb8fc6d733be91113ca72347881642b78d7.lean#L479).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4d730f5565a12cccc48bbf985896dd1fa2ec0eac` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
