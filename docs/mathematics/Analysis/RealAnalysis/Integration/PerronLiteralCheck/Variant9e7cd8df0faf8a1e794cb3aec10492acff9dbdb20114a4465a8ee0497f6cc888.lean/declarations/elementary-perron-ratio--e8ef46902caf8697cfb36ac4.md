# elementary_perron_ratio

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:83ee60ec-2119-06d1-9de9-01719e855656",
  "kind": "theorem",
  "lexical_name": "elementary_perron_ratio",
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
  "slug": "elementary-perron-ratio--e8ef46902caf8697cfb36ac4",
  "source": {
    "blob": "6f3ee798d88cee5fdeaab0c98a292a6ce6ee006a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 221,
    "line": 201,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/PerronLiteralCheck/Variant9e7cd8df0faf8a1e794cb3aec10492acff9dbdb20114a4465a8ee0497f6cc888.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e8ef46902caf8697cfb36ac471526776b29e700643ab6983625cf60f723624ac",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/PerronLiteralCheck/Variant9e7cd8df0faf8a1e794cb3aec10492acff9dbdb20114a4465a8ee0497f6cc888.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:83ee60ec-2119-06d1-9de9-01719e855656`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 201–221.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem elementary_perron_ratio (c x y : ℝ) (hc : 0 < c) (hx : 0 < x) (hy : 0 < y) :
    (1 / (2 * Real.pi) : ℝ) • (∫ t : ℝ, perronIntegrand c (x / y) t) =
      if y < x then ((Real.log (x / y) : ℝ) : ℂ) else 0 := by
  rw [elementary_perron_kernel c (x / y) hc (div_pos hx hy)]
  by_cases hxy : y < x
  · rw [if_pos hxy, max_eq_left]
    exact (Real.log_pos ((lt_div_iff₀ hy).mpr (by simpa using hxy))).le
  · rw [if_neg hxy, max_eq_right]
    · simp
    · exact Real.log_nonpos (div_nonneg hx.le hy.le)
        ((div_le_one hy).mpr (le_of_not_gt hxy))

end
end SmoothedPerronKernelScratch

namespace SmoothedPerronKernelLiteral
open MeasureTheory Set Filter
open scoped FourierTransform
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.SourceLaplaceKernel
open SmoothedPerronKernelScratch
noncomputable section
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/PerronLiteralCheck/Variant9e7cd8df0faf8a1e794cb3aec10492acff9dbdb20114a4465a8ee0497f6cc888.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/PerronLiteralCheck/Variant9e7cd8df0faf8a1e794cb3aec10492acff9dbdb20114a4465a8ee0497f6cc888.lean#L201).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6f3ee798d88cee5fdeaab0c98a292a6ce6ee006a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
