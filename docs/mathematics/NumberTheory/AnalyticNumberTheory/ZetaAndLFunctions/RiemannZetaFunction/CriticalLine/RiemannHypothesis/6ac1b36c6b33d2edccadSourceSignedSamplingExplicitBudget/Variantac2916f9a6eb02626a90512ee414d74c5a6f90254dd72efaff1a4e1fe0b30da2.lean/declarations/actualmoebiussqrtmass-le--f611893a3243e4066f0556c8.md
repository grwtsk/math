# actualMoebiusSqrtMass_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:edd09d7b-cd80-f56b-cedf-51c3e17b8b22",
  "kind": "theorem",
  "lexical_name": "actualMoebiusSqrtMass_le",
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
  "slug": "actualmoebiussqrtmass-le--f611893a3243e4066f0556c8",
  "source": {
    "blob": "7fe4c2b7919e6a62dedce9aee756b6eacf10e05d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 69,
    "line": 52,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/6ac1b36c6b33d2edccadSourceSignedSamplingExplicitBudget/Variantac2916f9a6eb02626a90512ee414d74c5a6f90254dd72efaff1a4e1fe0b30da2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f611893a3243e4066f0556c8c5a600e4bf8f06628269a82c8b2ae49b84347d5d",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/6ac1b36c6b33d2edccadSourceSignedSamplingExplicitBudget/Variantac2916f9a6eb02626a90512ee414d74c5a6f90254dd72efaff1a4e1fe0b30da2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:edd09d7b-cd80-f56b-cedf-51c3e17b8b22`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 52–69.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualMoebiusSqrtMass_le (A : ℝ) (hA : 1 ≤ A) :
    (∑ d ∈ Finset.Icc 1 (vaughanCutoff A), |realMoebius d| / Real.sqrt (d : ℝ)) ≤
      2 * A := by
  have hf : (vaughanCutoff A : ℝ) ≤ A ^ 2 := Nat.floor_le (sq_nonneg A)
  have hs : Real.sqrt (vaughanCutoff A : ℝ) ≤ A :=
    Real.sqrt_le_iff.mpr ⟨by linarith, hf⟩
  calc
    _ ≤ ∑ d ∈ Finset.Icc 1 (vaughanCutoff A), 1 / Real.sqrt (d : ℝ) := by
      apply Finset.sum_le_sum
      intro d _
      have hmu : |realMoebius d| ≤ 1 := by
        unfold realMoebius
        exact_mod_cast (ArithmeticFunction.abs_moebius_le_one (n := d))
      exact div_le_div_of_nonneg_right hmu (Real.sqrt_nonneg _)
    _ ≤ 2 * Real.sqrt (vaughanCutoff A : ℝ) := reciprocal_sqrt_sum_le _
    _ ≤ _ := by linarith

/-- The harmonic Mangoldt prefix bounds the original long square-root-weighted row. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/6ac1b36c6b33d2edccadSourceSignedSamplingExplicitBudget/Variantac2916f9a6eb02626a90512ee414d74c5a6f90254dd72efaff1a4e1fe0b30da2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/6ac1b36c6b33d2edccadSourceSignedSamplingExplicitBudget/Variantac2916f9a6eb02626a90512ee414d74c5a6f90254dd72efaff1a4e1fe0b30da2.lean#L52).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7fe4c2b7919e6a62dedce9aee756b6eacf10e05d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
