# actual_two_density_cutoff_error_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:933ee1b3-a243-f6bc-538e-07b579816605",
  "kind": "theorem",
  "lexical_name": "actual_two_density_cutoff_error_le",
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
  "slug": "actual-two-density-cutoff-error-le--794cf90ad6faad0274660aaf",
  "source": {
    "blob": "5c416e00f7235b6f0ba66627055fbde96336cb7e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 226,
    "line": 179,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/RatioInsertionCutoffsStatements/Variantda637e39ea4e3746140043efa00c44b32d1fcaa0c83af3327e8eb8031f78f5d5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:794cf90ad6faad0274660aaf4b80b3e00f908808fc35e286d7399fe4acc96429",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/RatioInsertionCutoffsStatements/Variantda637e39ea4e3746140043efa00c44b32d1fcaa0c83af3327e8eb8031f78f5d5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:933ee1b3-a243-f6bc-538e-07b579816605`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 179–226.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_two_density_cutoff_error_le (N u v : ℕ) (hu : 1 ≤ u) (hv : 1 ≤ v)
    (hodd : Nat.Coprime 2 (u*v)) (hG : 8 ≤ N / max u v) :
    let h := u*v
    let Z := Nat.sqrt (N / max u v)
    let YL := Nat.sqrt (N / max (2*u) v)
    let YR := Nat.sqrt (N / max u (2*v))
    |(ArithmeticFunction.moebius h : ℝ) * SquarefreeCount.finiteSquarefreeDensity h Z /
        Real.sqrt (h:ℝ) +
      (ArithmeticFunction.moebius (2*h) : ℝ) * SquarefreeCount.finiteSquarefreeDensity (2*h) YL /
        Real.sqrt ((2*h:ℕ):ℝ) +
      (ArithmeticFunction.moebius (2*h) : ℝ) * SquarefreeCount.finiteSquarefreeDensity (2*h) YR /
        Real.sqrt ((2*h:ℕ):ℝ) -
      FiniteDensityInsertion.twoDensityFactor * (ArithmeticFunction.moebius h : ℝ) *
        SquarefreeCount.finiteSquarefreeDensity h Z / Real.sqrt (h:ℝ)| ≤
      (7 * Real.sqrt 2 / (12 * Real.sqrt (h:ℝ))) * (1/(YL:ℝ) + 1/(YR:ℝ)) := by
  dsimp only
  have hh : 1 ≤ u*v := Nat.mul_pos hu hv
  rw [actual_two_density_coefficient_eq (u*v) _ _ _ hh hodd]
  have heq (a b c k : ℝ) :
      ((ArithmeticFunction.moebius (u*v):ℝ)/Real.sqrt ((u*v:ℕ):ℝ)) *
        (a-(Real.sqrt 2/2)*(b+c)) -
      k*(ArithmeticFunction.moebius (u*v):ℝ)*a/Real.sqrt ((u*v:ℕ):ℝ) =
      ((ArithmeticFunction.moebius (u*v):ℝ)/Real.sqrt ((u*v:ℕ):ℝ)) *
        (a-(Real.sqrt 2/2)*(b+c)-k*a) := by ring
  rw [heq, abs_mul]
  have hμ : |(ArithmeticFunction.moebius (u*v):ℝ)/Real.sqrt ((u*v:ℕ):ℝ)| ≤
      1/Real.sqrt ((u*v:ℕ):ℝ) := by
    rw [abs_div, abs_of_nonneg (Real.sqrt_nonneg _)]
    apply div_le_div_of_nonneg_right _ (Real.sqrt_nonneg _)
    exact_mod_cast (ArithmeticFunction.abs_moebius_le_one (n := u*v))
  calc
    _ ≤ (1/Real.sqrt ((u*v:ℕ):ℝ)) *
        ((7*Real.sqrt 2/12) *
          (1/(Nat.sqrt (N/max (2*u) v):ℝ)+1/(Nat.sqrt (N/max u (2*v)):ℝ))) :=
      mul_le_mul hμ (signed_two_density_both_cutoffs_error_le N u v hu hv hodd hG)
        (abs_nonneg _) (by positivity)
    _ = _ := by ring


end
end RatioInsertionCutoffsScratch

namespace RatioInsertionCutoffsStatementChecks

open FormalResearch.RiemannHypothesis.SourceComparison

noncomputable section

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/RatioInsertionCutoffsStatements/Variantda637e39ea4e3746140043efa00c44b32d1fcaa0c83af3327e8eb8031f78f5d5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/RatioInsertionCutoffsStatements/Variantda637e39ea4e3746140043efa00c44b32d1fcaa0c83af3327e8eb8031f78f5d5.lean#L179).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5c416e00f7235b6f0ba66627055fbde96336cb7e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
