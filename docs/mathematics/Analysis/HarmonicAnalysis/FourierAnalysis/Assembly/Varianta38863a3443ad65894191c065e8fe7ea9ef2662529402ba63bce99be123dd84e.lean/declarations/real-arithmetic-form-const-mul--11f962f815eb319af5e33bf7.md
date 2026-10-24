# real_arithmetic_form_const_mul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:54115406-13c3-a4ee-2dcd-e2afe7750683",
  "kind": "theorem",
  "lexical_name": "real_arithmetic_form_const_mul",
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
  "slug": "real-arithmetic-form-const-mul--11f962f815eb319af5e33bf7",
  "source": {
    "blob": "ecbf6d34d54cf9f338676dcd8f43c330f1c9f779",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 124,
    "line": 95,
    "path": "GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/Assembly/Varianta38863a3443ad65894191c065e8fe7ea9ef2662529402ba63bce99be123dd84e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:11f962f815eb319af5e33bf712a1b49ebe5f8c2a7013664d88b9068fd8e58d04",
  "verification": {
    "reference": "docs/verification/Analysis/HarmonicAnalysis/FourierAnalysis/Assembly/Varianta38863a3443ad65894191c065e8fe7ea9ef2662529402ba63bce99be123dd84e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:54115406-13c3-a4ee-2dcd-e2afe7750683`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 95–124.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem real_arithmetic_form_const_mul
    (A c : ℝ) (f : ℝ → ℝ) :
    realArithmeticForm A (fun x ↦ c * f x) =
      c ^ 2 * realArithmeticForm A f := by
  have harch :
      (∫ ξ, archimedeanMultiplier ξ *
        Complex.normSq (sourceFourier (fun x ↦ c * f x) ξ)) =
      c ^ 2 * ∫ ξ,
        archimedeanMultiplier ξ *
          Complex.normSq (sourceFourier f ξ) := by
    rw [weighted_fourier_integrand_const_mul, integral_const_mul]
  let S : Finset ℕ :=
    (Finset.Icc 2 ⌊Real.exp (2 * A)⌋₊).filter
      (fun n : ℕ ↦ (n : ℝ) < Real.exp (2 * A))
  have hprime :
      (∑ n ∈ S,
        ArithmeticFunction.vonMangoldt n / Real.sqrt n *
          (∫ x, (c * f x) * (c * f (x - Real.log n)))) =
      c ^ 2 * ∑ n ∈ S,
        ArithmeticFunction.vonMangoldt n / Real.sqrt n *
          (∫ x, f x * f (x - Real.log n)) := by
    rw [Finset.mul_sum]
    apply Finset.sum_congr rfl
    intro n _
    rw [correlation_integral_const_mul]
    ring
  unfold realArithmeticForm
  rw [harch, real_pole_contribution_const_mul, hprime]
  ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/HarmonicAnalysis/FourierAnalysis/Assembly/Varianta38863a3443ad65894191c065e8fe7ea9ef2662529402ba63bce99be123dd84e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/Assembly/Varianta38863a3443ad65894191c065e8fe7ea9ef2662529402ba63bce99be123dd84e.lean#L95).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ecbf6d34d54cf9f338676dcd8f43c330f1c9f779` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
