# applyAdmittedProjection_target_present

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "bbc54a10170827c9d898923ecdcddd0cc2203e6d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 131,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/8b/8b95948f697a10827ce37d6086957d4737452e490aea748d10ae203fe6f3a063.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:09c1668b-37bc-4a05-95c6-dc4b5cefdc38",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ebe3e5f8-e41a-22b7-236b-f7ca1d0d6fca",
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
  "slug": "applyadmittedprojection-target-present--dd1aef4f45e23ee079def9a5",
  "source": {
    "blob": "bbc54a10170827c9d898923ecdcddd0cc2203e6d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 171,
    "line": 131,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/XYZDomModel/Variant8b95948f697a10827ce37d6086957d4737452e490aea748d10ae203fe6f3a063.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dd1aef4f45e23ee079def9a5e629be56ee61eb105f0c1d9c7ea7da3f16cb8f5f",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/XYZDomModel/Variant8b95948f697a10827ce37d6086957d4737452e490aea748d10ae203fe6f3a063.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ebe3e5f8-e41a-22b7-236b-f7ca1d0d6fca`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 131–171.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem applyAdmittedProjection_target_present
    (model : DomModel) (admitted : AdmittedProposal Host EdgeId) :
    ∃ node ∈ (applyAdmittedProjection model admitted).nodes,
      node.hostCode = targetHostCode admitted := by
  by_cases targetExists :
      model.nodes.any (fun node ↦
        node.hostCode == targetHostCode admitted) = true
  · rcases List.any_eq_true.mp targetExists with
      ⟨node, nodeMember, nodeCode⟩
    have nodeCodeEq : node.hostCode = targetHostCode admitted :=
      beq_iff_eq.mp nodeCode
    let updatedNode := DomNode.withRevisionedXYZ node admitted.output
    have updatedMember : updatedNode ∈ model.nodes.map (fun current ↦
        if current.hostCode = targetHostCode admitted then
          DomNode.withRevisionedXYZ current admitted.output
        else current) := by
      apply List.mem_map.mpr
      exact ⟨node, nodeMember, by simp [updatedNode, nodeCodeEq]⟩
    refine ⟨updatedNode, ?_, ?_⟩
    · simpa [applyAdmittedProjection,
        Presentation.Transport.projectAccepted, preparedPublication,
        targetExists, DomNode.withRevisionedXYZ] using updatedMember
    · simp [updatedNode, DomNode.withRevisionedXYZ, nodeCodeEq,
        Presentation.Transport.ProjectionNode.withPublication]
  · have targetMissing :
        model.nodes.any (fun node ↦
          node.hostCode == targetHostCode admitted) = false := by
      cases result : model.nodes.any (fun node ↦
          node.hostCode == targetHostCode admitted) with
      | false => rfl
      | true => exact False.elim (targetExists result)
    let appended := DomNode.fromRevisionedXYZ
      (targetHostCode admitted) admitted.output
    refine ⟨appended, ?_, ?_⟩
    · simp [applyAdmittedProjection,
        Presentation.Transport.projectAccepted, preparedPublication,
        targetMissing, appended, DomNode.fromRevisionedXYZ]
    · rfl

/-! ## Runtime verification/commit race firewall -/

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/XYZDomModel/Variant8b95948f697a10827ce37d6086957d4737452e490aea748d10ae203fe6f3a063.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/XYZDomModel/Variant8b95948f697a10827ce37d6086957d4737452e490aea748d10ae203fe6f3a063.lean#L131).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bbc54a10170827c9d898923ecdcddd0cc2203e6d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
