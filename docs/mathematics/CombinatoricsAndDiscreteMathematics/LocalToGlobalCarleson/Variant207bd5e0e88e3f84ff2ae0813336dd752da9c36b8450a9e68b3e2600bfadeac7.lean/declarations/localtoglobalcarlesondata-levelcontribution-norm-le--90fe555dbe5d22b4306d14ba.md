# LocalToGlobalCarlesonData.levelContribution_norm_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "95315e45cd8a537d7e08773d252f82381da88187",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 104,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/20/207bd5e0e88e3f84ff2ae0813336dd752da9c36b8450a9e68b3e2600bfadeac7.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6ba24514-0f1a-d5f1-ef84-6e7b69e99e81",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:44841c4e-13be-cadd-edbf-3b7bb31345b3",
  "kind": "theorem",
  "lexical_name": "LocalToGlobalCarlesonData.levelContribution_norm_le",
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
  "slug": "localtoglobalcarlesondata-levelcontribution-norm-le--90fe555dbe5d22b4306d14ba",
  "source": {
    "blob": "95315e45cd8a537d7e08773d252f82381da88187",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 141,
    "line": 104,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/LocalToGlobalCarleson/Variant207bd5e0e88e3f84ff2ae0813336dd752da9c36b8450a9e68b3e2600bfadeac7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:90fe555dbe5d22b4306d14ba9b57fba4308594b765acd88ce957e9b609f27cc3",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/LocalToGlobalCarleson/Variant207bd5e0e88e3f84ff2ae0813336dd752da9c36b8450a9e68b3e2600bfadeac7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:44841c4e-13be-cadd-edbf-3b7bb31345b3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 104–141.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem LocalToGlobalCarlesonData.levelContribution_norm_le
    (data : LocalToGlobalCarlesonData) {A rootMass : ℝ}
    (hLocal : LocalCrossSquareEstimate data A)
    (hPacking : LevelwiseMassPacking data rootMass)
    (level : data.Depth) :
    ‖data.levelContribution level‖ ≤ A * rootMass := by
  classical
  calc
    ‖data.levelContribution level‖ ≤
        ∑ node : data.Node,
          ‖if data.depth node = level then data.contribution node else 0‖ := by
      exact norm_sum_le _ _
    _ = ∑ node : data.Node,
          if data.depth node = level then ‖data.contribution node‖ else 0 := by
      apply Fintype.sum_congr
      intro node
      by_cases hnode : data.depth node = level <;> simp [hnode]
    _ ≤ ∑ node : data.Node,
          if data.depth node = level then A * data.mass node else 0 := by
      apply Finset.sum_le_sum
      intro node _
      by_cases hnode : data.depth node = level
      · simpa [hnode] using hLocal.2 node
      · simp [hnode]
    _ = A * data.levelMass level := by
      simp only [LocalToGlobalCarlesonData.levelMass, Finset.mul_sum]
      apply Fintype.sum_congr
      intro node
      by_cases hnode : data.depth node = level <;> simp [hnode]
    _ ≤ A * rootMass := by
      exact mul_le_mul_of_nonneg_left (hPacking.2 level) hLocal.1

/-- Finite local-to-global Carleson theorem.

When `Depth = Fin (L + 1)`, the cardinality factor is exactly `L + 1`.
All analytic work is isolated in `hLocal`; all tree bookkeeping is isolated
in `hPacking`. -/
@[surface_novel, surface_published]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/LocalToGlobalCarleson/Variant207bd5e0e88e3f84ff2ae0813336dd752da9c36b8450a9e68b3e2600bfadeac7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/LocalToGlobalCarleson/Variant207bd5e0e88e3f84ff2ae0813336dd752da9c36b8450a9e68b3e2600bfadeac7.lean#L104).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `95315e45cd8a537d7e08773d252f82381da88187` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
