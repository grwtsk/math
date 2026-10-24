# estimateObligation_iff_reassembled

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8e4dcb86-9589-5387-5767-3d684da89df5",
  "kind": "theorem",
  "lexical_name": "estimateObligation_iff_reassembled",
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
  "slug": "estimateobligation-iff-reassembled--af310c145eacca3dac86448d",
  "source": {
    "blob": "40a79ac20ba1473ca95b1a7d2903a3e327511cae",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 97,
    "line": 78,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/SourceOwnership/Variantcc3fa51461c3d99841bf6247189e2a280962b2c3b8e216d557df46e84a5e6765.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:af310c145eacca3dac86448d98aa4ceda7c8b30e38744955c70041d63fe115ff",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/SourceOwnership/Variantcc3fa51461c3d99841bf6247189e2a280962b2c3b8e216d557df46e84a5e6765.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8e4dcb86-9589-5387-5767-3d684da89df5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 78–97.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem estimateObligation_iff_reassembled (cut : ℝ → ℕ) :
    CorrelationAssembly.EstimateObligation ↔
      ∃ lower : ℝ, ∀ A : ℝ, 1 ≤ A → lower ≤
        archimedeanValue explicitSecondDerivative A +
          ∑ i, ∑ n ∈ ownedPiece (sourceInventory A) (thresholdBlocks A (cut A)) i,
            (-2) * sourceAtom explicitSecondDerivative A n := by
  unfold CorrelationAssembly.EstimateObligation CorrelationAssembly.UniformLowerBound
  constructor
  · rintro ⟨lower, hbound⟩
    refine ⟨lower, fun A hA ↦ ?_⟩
    rw [← explicit_source_reassembled A (cut A)]
    exact hbound A hA
  · rintro ⟨lower, hbound⟩
    refine ⟨lower, fun A hA ↦ ?_⟩
    rw [explicit_source_reassembled A (cut A)]
    exact hbound A hA

end

end FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.SourceOwnership
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/SourceOwnership/Variantcc3fa51461c3d99841bf6247189e2a280962b2c3b8e216d557df46e84a5e6765.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/SourceOwnership/Variantcc3fa51461c3d99841bf6247189e2a280962b2c3b8e216d557df46e84a5e6765.lean#L78).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `40a79ac20ba1473ca95b1a7d2903a3e327511cae` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
