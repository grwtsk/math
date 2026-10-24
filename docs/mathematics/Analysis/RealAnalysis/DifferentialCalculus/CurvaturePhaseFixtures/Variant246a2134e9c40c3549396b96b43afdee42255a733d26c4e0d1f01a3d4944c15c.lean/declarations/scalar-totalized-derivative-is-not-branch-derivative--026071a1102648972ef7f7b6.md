# scalar_totalized_derivative_is_not_branch_derivative

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7e3a639b-eeaf-49a9-7f23-6c727e406b6b",
  "kind": "theorem",
  "lexical_name": "scalar_totalized_derivative_is_not_branch_derivative",
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
  "slug": "scalar-totalized-derivative-is-not-branch-derivative--026071a1102648972ef7f7b6",
  "source": {
    "blob": "c0e072164ea6cd6f0798a739fd150f2c872a1217",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 124,
    "line": 119,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/CurvaturePhaseFixtures/Variant246a2134e9c40c3549396b96b43afdee42255a733d26c4e0d1f01a3d4944c15c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:026071a1102648972ef7f7b6a2842605140f696ea6e5d7446c9429050a951cb5",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/CurvaturePhaseFixtures/Variant246a2134e9c40c3549396b96b43afdee42255a733d26c4e0d1f01a3d4944c15c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7e3a639b-eeaf-49a9-7f23-6c727e406b6b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 119–124.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem scalar_totalized_derivative_is_not_branch_derivative :
    deriv (fun x : ℝ => max x 0) 0 = 0 ∧
      deriv (fun x : ℝ => max x 0) 0 ≠ 1 := by
  have hd := deriv_zero_of_not_differentiableAt max_not_differentiable_zero
  exact ⟨hd, by rw [hd]; norm_num⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/CurvaturePhaseFixtures/Variant246a2134e9c40c3549396b96b43afdee42255a733d26c4e0d1f01a3d4944c15c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/CurvaturePhaseFixtures/Variant246a2134e9c40c3549396b96b43afdee42255a733d26c4e0d1f01a3d4944c15c.lean#L119).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c0e072164ea6cd6f0798a739fd150f2c872a1217` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
