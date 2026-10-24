# estimate_of_one_sided_diagonal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b0a823fb-2e32-86bc-5485-a99a407c04d7",
  "kind": "theorem",
  "lexical_name": "estimate_of_one_sided_diagonal",
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
  "slug": "estimate-of-one-sided-diagonal--5c027586af871ccc4f75630e",
  "source": {
    "blob": "c56cd6b160f7af2b27d0606e10ab5eb45ee1cce7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 136,
    "line": 120,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/SourceOneSidedMeanAudit/Variant37d222aabb3f42b8bdd57fe373a09ce28f174c2e244915c46b111e004d815787.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5c027586af871ccc4f75630e56080471445c17420907b7835a4767260555a465",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/SourceOneSidedMeanAudit/Variant37d222aabb3f42b8bdd57fe373a09ce28f174c2e244915c46b111e004d815787.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b0a823fb-2e32-86bc-5485-a99a407c04d7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 120–136.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem estimate_of_one_sided_diagonal (D rho Elog Eplain Q : ℝ) (hQ : 1 ≤ Q)
    (hreadout : ∀ A : ℝ, Q ≤ A →
      VaughanOperatorReview.covarianceOperatorValue A / 2 - independentMainTerm A ≤ D)
    (hproper : ∀ A : ℝ, Q ≤ A → typeTwoDiagonal A - retainedPrimeDiagonal A ≤ rho)
    (hlog : ∀ A : ℝ, Q ≤ A → shortLogSource A - shortLogMainTerm A
      (logLinearMain A samplingAlpha1 samplingAlpha2) ≤ Elog)
    (hplain : ∀ A : ℝ, Q ≤ A → -Eplain ≤ shortPlainSource A - shortPlainMainTerm A
      (plainLinearMain A samplingAlpha0 samplingAlpha1)) :
    CorrelationAssembly.EstimateObligation := by
  obtain ⟨Cp, _, hr⟩ := residual_tail_of_one_sided_diagonal D rho Elog Eplain Q hQ
    hreadout hproper hlog hplain
  apply estimate_of_mertens_residual_tail
  refine ⟨max 0 (D + Cp + rho + Elog + Eplain), le_max_left _ _, Q, hQ, ?_⟩
  intro A hQA
  exact (hr A hQA).trans (le_max_right _ _)

end RH16OneSidedMeanAudit
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/SourceOneSidedMeanAudit/Variant37d222aabb3f42b8bdd57fe373a09ce28f174c2e244915c46b111e004d815787.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/SourceOneSidedMeanAudit/Variant37d222aabb3f42b8bdd57fe373a09ce28f174c2e244915c46b111e004d815787.lean#L120).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c56cd6b160f7af2b27d0606e10ab5eb45ee1cce7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
