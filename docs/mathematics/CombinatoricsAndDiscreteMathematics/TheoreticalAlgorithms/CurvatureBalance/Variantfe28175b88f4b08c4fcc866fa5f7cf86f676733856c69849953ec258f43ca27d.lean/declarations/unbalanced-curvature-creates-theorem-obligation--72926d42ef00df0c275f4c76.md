# unbalanced_curvature_creates_theorem_obligation

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e59b10078cf47f3b84a366f9818f1bbfc383f4a2",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 29,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/fe/fe28175b88f4b08c4fcc866fa5f7cf86f676733856c69849953ec258f43ca27d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:bb05c208-f5f7-1b97-0aad-cc9dbed87eb5",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:299e519b-60a5-0324-48b2-c6983bd74abb",
  "kind": "theorem",
  "lexical_name": "unbalanced_curvature_creates_theorem_obligation",
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
  "slug": "unbalanced-curvature-creates-theorem-obligation--72926d42ef00df0c275f4c76",
  "source": {
    "blob": "e59b10078cf47f3b84a366f9818f1bbfc383f4a2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 55,
    "line": 29,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurvatureBalance/Variantfe28175b88f4b08c4fcc866fa5f7cf86f676733856c69849953ec258f43ca27d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:72926d42ef00df0c275f4c7605401ac3ec35dbe166dafd1cf345414e44480b25",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurvatureBalance/Variantfe28175b88f4b08c4fcc866fa5f7cf86f676733856c69849953ec258f43ca27d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:299e519b-60a5-0324-48b2-c6983bd74abb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 29–55.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem unbalanced_curvature_creates_theorem_obligation
    (B : CurvatureBalance)
    (_h : B.balanced = false) :
    ∃ O : TheoremCreationObligation,
      O.sourceBalance = B ∧ O.notYetKernelChecked := by
  let O : TheoremCreationObligation := {
    obligationName := "polar_tensor_integrity_repair"
    sourceBalance := B
    proposedStatement :=
      "Resolve polar tensor-integrity curvature defect before stream emission."
    requiredFrames := []
    requiredDefects :=
      match B.defect? with
      | none => []
      | some d => [d]
    requiredFoundations := []
    notYetKernelChecked := True
    claimBoundary := [
      "Curvature imbalance creates a theorem obligation, not proof authority.",
      "Lean kernel checking is required before the obligation becomes a theorem."
    ]
  }
  exact ⟨O, rfl, True.intro⟩

end Stream
end BinaryLogicMatrix
end Surface.Legacy
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurvatureBalance/Variantfe28175b88f4b08c4fcc866fa5f7cf86f676733856c69849953ec258f43ca27d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurvatureBalance/Variantfe28175b88f4b08c4fcc866fa5f7cf86f676733856c69849953ec258f43ca27d.lean#L29).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e59b10078cf47f3b84a366f9818f1bbfc383f4a2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
