# blockRight_norm_sq_le_secondMoment

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:339f1178-145b-b825-efc4-d1525ae74a98",
  "kind": "theorem",
  "lexical_name": "blockRight_norm_sq_le_secondMoment",
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
  "slug": "blockright-norm-sq-le-secondmoment--cae5c3d4613e320811a5e63a",
  "source": {
    "blob": "c671112b21e31264fb82ae7f977de5bb083e7d0c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 115,
    "line": 77,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/ConductorThreeTypeIIBlockNorms/Variant761dadd28f7f4d3208a41b09af1719d139b97aa72f7a66be619fbd81051d7025.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cae5c3d4613e320811a5e63a6555d181aef95431954c3b54860ffb3960d7fbc5",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/ConductorThreeTypeIIBlockNorms/Variant761dadd28f7f4d3208a41b09af1719d139b97aa72f7a66be619fbd81051d7025.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:339f1178-145b-b825-efc4-d1525ae74a98`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 77–115.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem blockRight_norm_sq_le_secondMoment {N : ℕ}
    (B : TypeIIDyadicBlock N) :
    ‖blockRightEuclideanCoefficient B‖ ^ 2 ≤
      conductorThreeVaughanRightSecondMoment
        (vaughanFourthRootCutoff N) (2 * B.K) := by
  rw [EuclideanSpace.norm_sq_eq]
  change (∑ k : B.Right, ‖blockRightCoefficient B k‖ ^ 2) ≤ _
  calc
    (∑ k : B.Right, ‖blockRightCoefficient B k‖ ^ 2) ≤
        ∑ k : B.Right,
          |(Surface.Core.ConductorThreeCharacterArithmetic.conductorThreeIntegerValue
              k.1.1 : ℝ) *
            vaughanDivisorCoefficient (vaughanFourthRootCutoff N) k.1.1| ^ 2 := by
      apply Finset.sum_le_sum
      intro k hk
      exact blockRightCoefficient_norm_sq_le_arithmetic B k
    _ = ∑ k ∈ blockRightIndexFinset B,
          |(Surface.Core.ConductorThreeCharacterArithmetic.conductorThreeIntegerValue
              k : ℝ) *
            vaughanDivisorCoefficient (vaughanFourthRootCutoff N) k| ^ 2 :=
      by
        simpa using sum_blockRight_eq_indexFinset B
          (fun k ↦
            |(Surface.Core.ConductorThreeCharacterArithmetic.conductorThreeIntegerValue
                k : ℝ) *
              vaughanDivisorCoefficient (vaughanFourthRootCutoff N) k| ^ 2)
    _ ≤ ∑ k ∈ Finset.Ioc 0 (2 * B.K),
          |(Surface.Core.ConductorThreeCharacterArithmetic.conductorThreeIntegerValue
              k : ℝ) *
            vaughanDivisorCoefficient (vaughanFourthRootCutoff N) k| ^ 2 := by
      apply Finset.sum_le_sum_of_subset_of_nonneg
        (blockRightIndexFinset_subset B)
      intro k hk hnot
      positivity
    _ = _ := rfl

/-- Unconditional harmonic second-moment norm bound for one dyadic right
block. -/
@[surface_novel, surface_published]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/ConductorThreeTypeIIBlockNorms/Variant761dadd28f7f4d3208a41b09af1719d139b97aa72f7a66be619fbd81051d7025.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/ConductorThreeTypeIIBlockNorms/Variant761dadd28f7f4d3208a41b09af1719d139b97aa72f7a66be619fbd81051d7025.lean#L77).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c671112b21e31264fb82ae7f977de5bb083e7d0c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
