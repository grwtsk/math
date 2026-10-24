# not_eventually_sourceCorrelation_nonnegative

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2a24f8e52fd1d39c60c4f2ea9641d9605b3f48d5",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 61,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ff/ffaed2a9ea2858e06e6621d32a67f13402217ce2bbf30fdd34e5c8287807be64.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:615a8d1e-dc78-85f1-f5d4-4bf3e02efc2b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d252de95-32a0-63cd-6ed6-ee19c48b0f80",
  "kind": "theorem",
  "lexical_name": "not_eventually_sourceCorrelation_nonnegative",
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
  "slug": "not-eventually-sourcecorrelation-nonnegative--6aa92fd4205e4f9288d8e990",
  "source": {
    "blob": "2a24f8e52fd1d39c60c4f2ea9641d9605b3f48d5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 74,
    "line": 61,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variantffaed2a9ea2858e06e6621d32a67f13402217ce2bbf30fdd34e5c8287807be64.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6aa92fd4205e4f9288d8e99009a5275baf80cbe6eb94119eab932b7d186263c6",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variantffaed2a9ea2858e06e6621d32a67f13402217ce2bbf30fdd34e5c8287807be64.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d252de95-32a0-63cd-6ed6-ee19c48b0f80`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 61–74.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem not_eventually_sourceCorrelation_nonnegative :
    ¬ ∃ R : ℝ, ∀ A : ℝ, R ≤ A → 1 ≤ A →
      ∀ t : ℝ, 0 ≤ t → t ≤ 2 * A →
        0 ≤ sourceCorrelation explicitSecondDerivative A t := by
  rintro ⟨R, h⟩
  let A : ℝ := max R 15
  have hRA : R ≤ A := le_max_left _ _
  have hA : 15 ≤ A := le_max_right _ _
  have hp := h A hRA (by linarith) (2 * A - 15) (by linarith) (by linarith)
  exact (sourceCorrelation_seam_neg A hA).not_ge hp

end
end EstimateSourceSeamObstruction
end FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variantffaed2a9ea2858e06e6621d32a67f13402217ce2bbf30fdd34e5c8287807be64.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variantffaed2a9ea2858e06e6621d32a67f13402217ce2bbf30fdd34e5c8287807be64.lean#L61).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2a24f8e52fd1d39c60c4f2ea9641d9605b3f48d5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
