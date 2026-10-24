# twistedVonMangoldtNormPartialSums_isBigO

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:bf386a69-b95f-a4d0-4aa9-402df68291de",
  "kind": "theorem",
  "lexical_name": "twistedVonMangoldtNormPartialSums_isBigO",
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
  "slug": "twistedvonmangoldtnormpartialsums-isbigo--b18ef631d111615a7d322b72",
  "source": {
    "blob": "e502a9084252a158def2399fc084d6ac35834148",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 286,
    "line": 255,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/MellinLogDerivative/Variantfb4c4ae4d7dbb0ab4698a5228ddf930189d0203e93c3901616d773a3a6f5ee3f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b18ef631d111615a7d322b722551fe7ac427ee8bf0a7473a783546b6c8164731",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/MellinLogDerivative/Variantfb4c4ae4d7dbb0ab4698a5228ddf930189d0203e93c3901616d773a3a6f5ee3f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bf386a69-b95f-a4d0-4aa9-402df68291de`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 255–286.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem twistedVonMangoldtNormPartialSums_isBigO
    {q : ℕ} (χ : DirichletCharacter ℂ q) :
    (fun n : ℕ ↦ ∑ k ∈ Finset.Icc 1 n,
      ‖χ (k : ZMod q) * (ArithmeticFunction.vonMangoldt k : ℂ)‖) =O[atTop]
      (fun n : ℕ ↦ (n : ℝ) ^ (1 : ℝ)) := by
  rw [isBigO_iff]
  refine ⟨Real.log 4 + 4, Eventually.of_forall fun n ↦ ?_⟩
  calc
    ‖∑ k ∈ Finset.Icc 1 n,
        ‖χ (k : ZMod q) * (ArithmeticFunction.vonMangoldt k : ℂ)‖‖ =
        ∑ k ∈ Finset.Icc 1 n,
          ‖χ (k : ZMod q) * (ArithmeticFunction.vonMangoldt k : ℂ)‖ := by
            rw [Real.norm_eq_abs, abs_of_nonneg]
            positivity
    _ ≤ ∑ k ∈ Finset.Icc 1 n, ArithmeticFunction.vonMangoldt k := by
      gcongr with k hk
      rw [norm_mul, Complex.norm_real,
        Real.norm_of_nonneg ArithmeticFunction.vonMangoldt_nonneg]
      exact mul_le_of_le_one_left ArithmeticFunction.vonMangoldt_nonneg
        (χ.norm_le_one (k : ZMod q))
    _ = Chebyshev.psi n := by
      have hsets : Finset.Icc 1 n = Finset.Ioc 0 n := by
        ext k
        simp only [Finset.mem_Icc, Finset.mem_Ioc]
        omega
      rw [hsets]
      simp [Chebyshev.psi]
    _ ≤ (Real.log 4 + 4) * n :=
      Chebyshev.psi_le_const_mul_self (Nat.cast_nonneg n)
    _ = (Real.log 4 + 4) * ‖(n : ℝ) ^ (1 : ℝ)‖ := by
      simp [Real.rpow_one]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/MellinLogDerivative/Variantfb4c4ae4d7dbb0ab4698a5228ddf930189d0203e93c3901616d773a3a6f5ee3f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/MellinLogDerivative/Variantfb4c4ae4d7dbb0ab4698a5228ddf930189d0203e93c3901616d773a3a6f5ee3f.lean#L255).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e502a9084252a158def2399fc084d6ac35834148` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
