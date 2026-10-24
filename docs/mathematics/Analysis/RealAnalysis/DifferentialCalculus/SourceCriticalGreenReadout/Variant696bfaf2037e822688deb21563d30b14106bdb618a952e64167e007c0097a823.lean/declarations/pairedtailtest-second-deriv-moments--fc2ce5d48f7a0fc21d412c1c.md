# pairedTailTest_second_deriv_moments

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e54383e9-5f83-dcfd-d15b-02c969061543",
  "kind": "theorem",
  "lexical_name": "pairedTailTest_second_deriv_moments",
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
  "slug": "pairedtailtest-second-deriv-moments--fc2ce5d48f7a0fc21d412c1c",
  "source": {
    "blob": "892f72622b4bfb5993538790be25fe806def1882",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 176,
    "line": 160,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceCriticalGreenReadout/Variant696bfaf2037e822688deb21563d30b14106bdb618a952e64167e007c0097a823.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fc2ce5d48f7a0fc21d412c1c201828742da9c2bd946369f0e785b25803616623",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/SourceCriticalGreenReadout/Variant696bfaf2037e822688deb21563d30b14106bdb618a952e64167e007c0097a823.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e54383e9-5f83-dcfd-d15b-02c969061543`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 160–176.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem pairedTailTest_second_deriv_moments {A : ℝ} (hA : 1 ≤ A) :
    (∫ u in 0..2 * A, deriv (deriv (pairedTailTest A)) u) = 1 / 2 ∧
      (∫ u in 0..2 * A, u * deriv (deriv (pairedTailTest A)) u) = 0 := by
  have hD' := pairedTailTest_deriv_absolutelyContinuous hA
  have hmass := hD'.integral_deriv_eq_sub
  rw [pairedTailTest_deriv_at_upper hA, pairedTailTest_deriv_at_zero hA] at hmass
  have hid : AbsolutelyContinuousOnInterval (fun u : ℝ => u) 0 (2 * A) :=
    (contDiff_id : ContDiff ℝ 1 (fun u : ℝ => u)).contDiffOn.absolutelyContinuousOnInterval
  have hparts := hid.integral_mul_deriv_eq_deriv_mul hD'
  simp only [deriv_id'', one_mul, zero_mul, sub_zero] at hparts
  have hD : AbsolutelyContinuousOnInterval (pairedTailTest A) 0 (2 * A) :=
    (pairedTailTest_contDiff hA).contDiffOn.absolutelyContinuousOnInterval
  rw [pairedTailTest_deriv_at_upper hA, hD.integral_deriv_eq_sub,
    pairedTailTest_at_upper hA, pairedTailTest_at_zero hA] at hparts
  constructor <;> linarith

/-- The actual curvature cannot be nonnegative almost everywhere on the positive interval. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/SourceCriticalGreenReadout/Variant696bfaf2037e822688deb21563d30b14106bdb618a952e64167e007c0097a823.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceCriticalGreenReadout/Variant696bfaf2037e822688deb21563d30b14106bdb618a952e64167e007c0097a823.lean#L160).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `892f72622b4bfb5993538790be25fe806def1882` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
