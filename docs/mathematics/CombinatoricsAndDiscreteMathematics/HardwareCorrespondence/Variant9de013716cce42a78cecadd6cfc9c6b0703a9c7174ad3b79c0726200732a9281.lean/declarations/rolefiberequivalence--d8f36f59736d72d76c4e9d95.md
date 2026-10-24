# roleFiberEquivalence

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:950a5ae94085807b46f1ee9d75153df8673d1f8731ca36178bc4d786f207db58",
  "kind": "def",
  "lexical_name": "roleFiberEquivalence",
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
  "slug": "rolefiberequivalence--d8f36f59736d72d76c4e9d95",
  "source": {
    "blob": "cd331241511a5bf64324ae0e5fbf3686fbea39b7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 130,
    "line": 104,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/HardwareCorrespondence/Variant9de013716cce42a78cecadd6cfc9c6b0703a9c7174ad3b79c0726200732a9281.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d8f36f59736d72d76c4e9d95ec8390b439ed0b6e3e6ba5423c775df62664d703",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/HardwareCorrespondence/Variant9de013716cce42a78cecadd6cfc9c6b0703a9c7174ad3b79c0726200732a9281.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:950a5ae94085807b46f1ee9d75153df8673d1f8731ca36178bc4d786f207db58`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 104–130.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def roleFiberEquivalence
    {HardwareNode SymbolicNode : Type*}
    (correspondence :
      ArchitectureCorrespondence HardwareNode SymbolicNode)
    (role : ArchitectureLayerRole) :
    ArchitectureRoleFiber correspondence.hardware role ≃
      ArchitectureRoleFiber correspondence.symbolic role where
  toFun node :=
    ⟨correspondence.nodeEquivalence node,
      (correspondence.rolePreserving node).trans node.property⟩
  invFun node := by
    refine ⟨correspondence.nodeEquivalence.symm node, ?_⟩
    have preservation :
        correspondence.symbolic.role node =
          correspondence.hardware.role
            (correspondence.nodeEquivalence.symm node) := by
      simpa using correspondence.rolePreserving
        (correspondence.nodeEquivalence.symm node)
    exact preservation.symm.trans node.property
  left_inv node := by
    apply Subtype.ext
    simp
  right_inv node := by
    apply Subtype.ext
    simp

/-- Corresponding hardware and symbolic architectures have equal role counts. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/HardwareCorrespondence/Variant9de013716cce42a78cecadd6cfc9c6b0703a9c7174ad3b79c0726200732a9281.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/HardwareCorrespondence/Variant9de013716cce42a78cecadd6cfc9c6b0703a9c7174ad3b79c0726200732a9281.lean#L104).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cd331241511a5bf64324ae0e5fbf3686fbea39b7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
