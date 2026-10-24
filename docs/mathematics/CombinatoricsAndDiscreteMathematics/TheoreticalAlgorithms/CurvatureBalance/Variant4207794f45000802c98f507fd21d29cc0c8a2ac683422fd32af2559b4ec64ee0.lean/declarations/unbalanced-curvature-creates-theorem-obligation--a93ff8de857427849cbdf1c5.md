# unbalanced_curvature_creates_theorem_obligation

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:aaa85aef-0a58-0cd6-de17-20827104759e",
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
  "slug": "unbalanced-curvature-creates-theorem-obligation--a93ff8de857427849cbdf1c5",
  "source": {
    "blob": "94ed4f78d75fc658cb34d47d1d741672409b6908",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 63,
    "line": 37,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurvatureBalance/Variant4207794f45000802c98f507fd21d29cc0c8a2ac683422fd32af2559b4ec64ee0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a93ff8de857427849cbdf1c5558147015bacd449770e9b3ca0d974b1effeca03",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurvatureBalance/Variant4207794f45000802c98f507fd21d29cc0c8a2ac683422fd32af2559b4ec64ee0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:aaa85aef-0a58-0cd6-de17-20827104759e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 37–63.

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

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurvatureBalance/Variant4207794f45000802c98f507fd21d29cc0c8a2ac683422fd32af2559b4ec64ee0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurvatureBalance/Variant4207794f45000802c98f507fd21d29cc0c8a2ac683422fd32af2559b4ec64ee0.lean#L37).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `94ed4f78d75fc658cb34d47d1d741672409b6908` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
