# EdgeRelaxation.epsilon_relaxation_softens_static_tree

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ee4750e5e0ad815a664a503ea7dcdc2bfdd8a9c5",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 404,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/eb/eb04261e8025f5f989b03e1240b12bfcabed48c41c5dc573034a22e56f645f69.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a0f2c7bf-af77-5577-8ead-ef8bf567aca1",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:92a78ff5-de15-f2e8-076d-789bbf3eda06",
  "kind": "theorem",
  "lexical_name": "EdgeRelaxation.epsilon_relaxation_softens_static_tree",
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
  "slug": "edgerelaxation-epsilon-relaxation-softens-static-tree--c36e28819e6bbf6759a4c538",
  "source": {
    "blob": "ee4750e5e0ad815a664a503ea7dcdc2bfdd8a9c5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 417,
    "line": 404,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EdgeRelaxation/Varianteb04261e8025f5f989b03e1240b12bfcabed48c41c5dc573034a22e56f645f69.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c36e28819e6bbf6759a4c5381ef98e7a3aa5ae15140889f6c53061fecb49bab4",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EdgeRelaxation/Varianteb04261e8025f5f989b03e1240b12bfcabed48c41c5dc573034a22e56f645f69.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:92a78ff5-de15-f2e8-076d-789bbf3eda06`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 404–417.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem EdgeRelaxation.epsilon_relaxation_softens_static_tree :
    (∀ p : EdgeRelaxation.Line3,
        ¬ EdgeRelaxation.EpsilonDensity.IsCrisp
          (EdgeRelaxation.relaxedPoleVector p)) ∧
      ¬ EdgeRelaxation.DensityExpr.IsCrisp
        (EdgeRelaxation.FuzzyTree.eval
          EdgeRelaxation.relaxedValuation
          EdgeRelaxation.activeRootTree) := by
  constructor
  · intro p
    cases p <;> decide
  · exact EdgeRelaxation.activeRootTree_relaxed_not_crisp

/-- Pointwise Boolean complement of a three-row vector. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EdgeRelaxation/Varianteb04261e8025f5f989b03e1240b12bfcabed48c41c5dc573034a22e56f645f69.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EdgeRelaxation/Varianteb04261e8025f5f989b03e1240b12bfcabed48c41c5dc573034a22e56f645f69.lean#L404).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ee4750e5e0ad815a664a503ea7dcdc2bfdd8a9c5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
