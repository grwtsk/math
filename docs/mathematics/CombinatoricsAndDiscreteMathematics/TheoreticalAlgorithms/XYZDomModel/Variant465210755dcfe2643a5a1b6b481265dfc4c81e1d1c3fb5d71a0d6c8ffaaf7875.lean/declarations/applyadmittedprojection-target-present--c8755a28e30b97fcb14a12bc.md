# applyAdmittedProjection_target_present

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3a166fbb-d1e0-1ba8-51d9-4bf290683dd6",
  "kind": "theorem",
  "lexical_name": "applyAdmittedProjection_target_present",
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
  "slug": "applyadmittedprojection-target-present--c8755a28e30b97fcb14a12bc",
  "source": {
    "blob": "c05cfe00e0a8d859f09a73d6c0e4aa6cee26934c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 159,
    "line": 122,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/XYZDomModel/Variant465210755dcfe2643a5a1b6b481265dfc4c81e1d1c3fb5d71a0d6c8ffaaf7875.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c8755a28e30b97fcb14a12bc6349d57eac0fba7a946d3ecd2566db3dca0d459e",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/XYZDomModel/Variant465210755dcfe2643a5a1b6b481265dfc4c81e1d1c3fb5d71a0d6c8ffaaf7875.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3a166fbb-d1e0-1ba8-51d9-4bf290683dd6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 122–159.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem applyAdmittedProjection_target_present
    (model : DomModel) (admitted : AdmittedProposal Host EdgeId) :
    ∃ node ∈ (applyAdmittedProjection model admitted).nodes,
      node.hostCode = targetHostCode admitted := by
  by_cases targetExists :
      model.nodes.any (fun node ↦ node.hostCode == targetHostCode admitted) = true
  · rcases List.any_eq_true.mp targetExists with
      ⟨node, nodeMember, nodeCode⟩
    have nodeCodeEq : node.hostCode = targetHostCode admitted :=
      beq_iff_eq.mp nodeCode
    let updatedNode := node.withRevisionedXYZ admitted.output
    have updatedMember : updatedNode ∈ model.nodes.map (fun current ↦
        if current.hostCode = targetHostCode admitted then
          current.withRevisionedXYZ admitted.output
        else
          current) := by
      apply List.mem_map.mpr
      exact ⟨node, nodeMember, by simp [updatedNode, nodeCodeEq]⟩
    refine ⟨updatedNode, ?_, ?_⟩
    · simpa [applyAdmittedProjection, targetExists] using updatedMember
    · simp [updatedNode, DomNode.withRevisionedXYZ, nodeCodeEq]
  · have targetMissing :
        model.nodes.any
          (fun node ↦ node.hostCode == targetHostCode admitted) = false := by
      cases result : model.nodes.any
          (fun node ↦ node.hostCode == targetHostCode admitted) with
      | false => rfl
      | true => exact False.elim (targetExists result)
    let appended := DomNode.fromRevisionedXYZ
      (targetHostCode admitted) admitted.output
    refine ⟨appended, ?_, ?_⟩
    · simp [applyAdmittedProjection, targetMissing, appended]
    · rfl

/-! ## Runtime verification/commit race firewall -/

/-- The revision currently represented at a stable host code.  A missing node
is distinct from a node at revision zero. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/XYZDomModel/Variant465210755dcfe2643a5a1b6b481265dfc4c81e1d1c3fb5d71a0d6c8ffaaf7875.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/XYZDomModel/Variant465210755dcfe2643a5a1b6b481265dfc4c81e1d1c3fb5d71a0d6c8ffaaf7875.lean#L122).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c05cfe00e0a8d859f09a73d6c0e4aa6cee26934c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
