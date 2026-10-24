# re_eq_zero_of_weighted_energy

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:00decc55-21ee-2ffc-a169-9c0c47bb85a4",
  "kind": "theorem",
  "lexical_name": "re_eq_zero_of_weighted_energy",
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
  "slug": "re-eq-zero-of-weighted-energy--2bac3e7ddaf5c71341ee4e18",
  "source": {
    "blob": "9df9365dd94ff5200a3abb99c0ad4710bf0256d9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 141,
    "line": 113,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/FixedLaplaceBoundary/Variantb004337175780c913ab90dfecfaf9de552ba1b1f376694f6d7a187a75837e81d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2bac3e7ddaf5c71341ee4e18357dccffd5c84ef50c797db7d565880eea4ab420",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/FixedLaplaceBoundary/Variantb004337175780c913ab90dfecfaf9de552ba1b1f376694f6d7a187a75837e81d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:00decc55-21ee-2ffc-a169-9c0c47bb85a4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 113–141.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem re_eq_zero_of_weighted_energy (z : ℂ) (D E : ℝ) (hD : 0 < D) (hE : 0 ≤ E)
    (henergy : -(E : ℂ) = z ^ 2 * (D : ℂ)) : z.re = 0 := by
  have hr := congrArg Complex.re henergy
  have hi := congrArg Complex.im henergy
  simp only [Complex.neg_re, Complex.neg_im, Complex.ofReal_re, Complex.ofReal_im,
    Complex.mul_re, Complex.mul_im, pow_two, mul_zero, sub_zero, zero_add, neg_zero] at hr hi
  have hp : (2 * (z.re * z.im)) * D = 0 := by nlinarith [hi]
  have hprod : z.re * z.im = 0 := by
    have h := (mul_eq_zero.mp hp).resolve_right hD.ne'
    nlinarith
  rcases mul_eq_zero.mp hprod with hz | hz
  · exact hz
  · rw [hz] at hr
    have hq : z.re ^ 2 * D ≤ 0 := by nlinarith [hr, hE]
    have hs : z.re ^ 2 ≤ 0 := le_of_mul_le_mul_right (by simpa only [zero_mul] using hq) hD
    nlinarith [sq_nonneg z.re]

end
end SourceBumpMomentsScratch

set_option autoImplicit false
namespace SourceBumpAdapterScratch
open MeasureTheory Set Polynomial
open FormalResearch.RiemannHypothesis.SourceComparison
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open FixedSourceFilter PrimeSquareCorrelation ZeroSideTargets
open SourceBumpMomentsScratch
noncomputable section

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/FixedLaplaceBoundary/Variantb004337175780c913ab90dfecfaf9de552ba1b1f376694f6d7a187a75837e81d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/FixedLaplaceBoundary/Variantb004337175780c913ab90dfecfaf9de552ba1b1f376694f6d7a187a75837e81d.lean#L113).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9df9365dd94ff5200a3abb99c0ad4710bf0256d9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
