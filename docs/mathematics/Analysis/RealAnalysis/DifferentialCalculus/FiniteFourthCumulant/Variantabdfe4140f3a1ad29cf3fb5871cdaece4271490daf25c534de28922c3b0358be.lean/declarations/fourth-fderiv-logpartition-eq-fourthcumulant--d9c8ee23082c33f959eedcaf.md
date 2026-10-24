# fourth_fderiv_logPartition_eq_fourthCumulant

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2c4b42ac6e58ea2ac2f0a9a9d8d5e183800ba782",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 364,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ab/abdfe4140f3a1ad29cf3fb5871cdaece4271490daf25c534de28922c3b0358be.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f7dcc002-2cd6-f76d-e324-d6daf4695200",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:08e1a473-57b6-de6c-067b-7bc7e9e713dd",
  "kind": "theorem",
  "lexical_name": "fourth_fderiv_logPartition_eq_fourthCumulant",
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
  "slug": "fourth-fderiv-logpartition-eq-fourthcumulant--d9c8ee23082c33f959eedcaf",
  "source": {
    "blob": "2c4b42ac6e58ea2ac2f0a9a9d8d5e183800ba782",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 388,
    "line": 364,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/FiniteFourthCumulant/Variantabdfe4140f3a1ad29cf3fb5871cdaece4271490daf25c534de28922c3b0358be.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d9c8ee23082c33f959eedcafdd91b57f69bf5b05f04c7ab592c7deabf1cf4e22",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/FiniteFourthCumulant/Variantabdfe4140f3a1ad29cf3fb5871cdaece4271490daf25c534de28922c3b0358be.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:08e1a473-57b6-de6c-067b-7bc7e9e713dd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 364–388.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem fourth_fderiv_logPartition_eq_fourthCumulant
    (theta u v w z : E) :
    fderiv ℝ
        (fun x =>
          fderiv ℝ
            (fun y =>
              fderiv ℝ (fderiv ℝ F.logPartition) y u v)
            x w)
        theta z =
      F.fourthCumulantCovector theta u v w z := by
  have heq :
      (fun x =>
        fderiv ℝ
          (fun y =>
            fderiv ℝ (fderiv ℝ F.logPartition) y u v)
          x w) =
        F.thirdCumulantScalar u v w := by
    funext x
    rw [F.third_fderiv_logPartition_eq_thirdCumulant]
    exact (F.thirdCumulantScalar_eq_operator x u v w).symm
  rw [heq, F.fderiv_thirdCumulantScalar_eq_fourthCumulant]

end FiniteLogAffineFamily

end FormalResearch.PositiveAtlas
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/FiniteFourthCumulant/Variantabdfe4140f3a1ad29cf3fb5871cdaece4271490daf25c534de28922c3b0358be.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/FiniteFourthCumulant/Variantabdfe4140f3a1ad29cf3fb5871cdaece4271490daf25c534de28922c3b0358be.lean#L364).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2c4b42ac6e58ea2ac2f0a9a9d8d5e183800ba782` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
