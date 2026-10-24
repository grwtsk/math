# negativeSurvival_one_initial

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7fdcb348-2834-1c29-4203-907eedfd6776",
  "kind": "theorem",
  "lexical_name": "negativeSurvival_one_initial",
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
  "slug": "negativesurvival-one-initial--9f3e9ede1102770bc9594f93",
  "source": {
    "blob": "3b6a2a07fe796189bd03e91b2c08e8c0a0f3761a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 75,
    "line": 57,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceInitialGap/Variantb833f3adfda6ace6995b94fe0b4ced45b829716d2555179ae021942291addb7e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9f3e9ede1102770bc9594f93e07b637da34436ebf9c1a9ebb6a03225e3516f4d",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/SourceInitialGap/Variantb833f3adfda6ace6995b94fe0b4ced45b829716d2555179ae021942291addb7e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7fdcb348-2834-1c29-4203-907eedfd6776`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 57–75.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem negativeSurvival_one_initial {A u : ℝ} (hA : 2 ≤ A)
    (hu : u ∈ Icc 0 (A / 32)) : negativeSurvival A u = 1 := by
  have hp : 0 < A := by linarith
  have hzero : (∫ t in 0..u, negativeSlope A t) = 0 := by
    calc
      _ = ∫ _t in 0..u, (0 : ℝ) := by
        apply intervalIntegral.integral_congr
        intro t ht
        rw [uIcc_of_le hu.1] at ht
        exact negativeSlope_zero_initial hA ⟨ht.1, ht.2.trans hu.2⟩
      _ = 0 := by simp
  have hi := intervalIntegral.integral_add_adjacent_intervals (μ := volume)
    ((negativeSlope_continuous hp).intervalIntegrable 0 u)
    ((negativeSlope_continuous hp).intervalIntegrable u (2 * A))
  rw [hzero, zero_add] at hi
  unfold negativeSurvival
  rw [hi]
  exact div_self (negativeMass_pos (show 1 ≤ A by linarith)).ne'

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/SourceInitialGap/Variantb833f3adfda6ace6995b94fe0b4ced45b829716d2555179ae021942291addb7e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceInitialGap/Variantb833f3adfda6ace6995b94fe0b4ced45b829716d2555179ae021942291addb7e.lean#L57).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3b6a2a07fe796189bd03e91b2c08e8c0a0f3761a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
