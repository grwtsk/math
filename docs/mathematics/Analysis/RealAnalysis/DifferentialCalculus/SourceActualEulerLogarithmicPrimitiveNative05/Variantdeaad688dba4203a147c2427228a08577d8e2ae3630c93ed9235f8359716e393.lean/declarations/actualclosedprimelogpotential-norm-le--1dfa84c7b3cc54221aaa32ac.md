# actualClosedPrimeLogPotential_norm_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:340a587c-6672-65ae-454c-e6f3b9f22006",
  "kind": "theorem",
  "lexical_name": "actualClosedPrimeLogPotential_norm_le",
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
  "slug": "actualclosedprimelogpotential-norm-le--1dfa84c7b3cc54221aaa32ac",
  "source": {
    "blob": "9649a014bd026ac4bebd6cd66d82dd5485293f99",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 236,
    "line": 218,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceActualEulerLogarithmicPrimitiveNative05/Variantdeaad688dba4203a147c2427228a08577d8e2ae3630c93ed9235f8359716e393.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1dfa84c7b3cc54221aaa32ac8d12d0cd26e65c89cca8096c5d40254d0087a461",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/SourceActualEulerLogarithmicPrimitiveNative05/Variantdeaad688dba4203a147c2427228a08577d8e2ae3630c93ed9235f8359716e393.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:340a587c-6672-65ae-454c-e6f3b9f22006`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 218–236.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualClosedPrimeLogPotential_norm_le (A c t : ℝ) (hc : 1 < c) :
    ‖actualClosedPrimeLogPotential A ((c:ℂ)+(t:ℂ)*I)‖ ≤
      actualRightLineMass c / Real.log 2 := by
  have hl : 0 < Real.log 2 := Real.log_pos (by norm_num)
  unfold actualClosedPrimeLogPotential
  calc
    _ ≤ ∑ n ∈ Finset.range (⌊Real.exp (2*A)⌋₊+1),
        ‖((ArithmeticFunction.vonMangoldt n / Real.log n : ℝ):ℂ) *
          Complex.exp (-((c:ℂ)+(t:ℂ)*I)*(Real.log n:ℂ))‖ := norm_sum_le _ _
    _ ≤ ∑ n ∈ Finset.range (⌊Real.exp (2*A)⌋₊+1),
        ‖LSeries.term actualMangoldtCoefficients (c:ℂ) n‖ / Real.log 2 :=
      Finset.sum_le_sum (fun n _ => logTerm_norm_le c t n)
    _ = (∑ n ∈ Finset.range (⌊Real.exp (2*A)⌋₊+1),
        ‖LSeries.term actualMangoldtCoefficients (c:ℂ) n‖) / Real.log 2 :=
      (Finset.sum_div _ _ _).symm
    _ ≤ actualRightLineMass c / Real.log 2 := by
      apply div_le_div_of_nonneg_right _ hl.le
      exact (actualRightLineMass_summable c hc).sum_le_tsum _ (fun _ _ => norm_nonneg _)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/SourceActualEulerLogarithmicPrimitiveNative05/Variantdeaad688dba4203a147c2427228a08577d8e2ae3630c93ed9235f8359716e393.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceActualEulerLogarithmicPrimitiveNative05/Variantdeaad688dba4203a147c2427228a08577d8e2ae3630c93ed9235f8359716e393.lean#L218).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9649a014bd026ac4bebd6cd66d82dd5485293f99` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
