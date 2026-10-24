# mertensResidual_eq_signed_bilinear

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8f96410c-2fbe-df69-399a-0a8d082c90d8",
  "kind": "theorem",
  "lexical_name": "mertensResidual_eq_signed_bilinear",
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
  "slug": "mertensresidual-eq-signed-bilinear--71b0731648943ad68a94fa64",
  "source": {
    "blob": "5a21b0f52d67363df0dd7294f7649f67eb5eb53c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 302,
    "line": 283,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/113EstimateWeightedMobiusPairing/Variantd4a8e025a82540c5433980d389888af595ca0c356311096e5f47735359ec5b89.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:71b0731648943ad68a94fa64f134e49d818a3eb8feab73066eed81a613c97c82",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/113EstimateWeightedMobiusPairing/Variantd4a8e025a82540c5433980d389888af595ca0c356311096e5f47735359ec5b89.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8f96410c-2fbe-df69-399a-0a8d082c90d8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 283–302.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mertensResidual_eq_signed_bilinear (A : ℝ) (hA : 1 ≤ A) :
    mertensResidual A =
      ∑ d ∈ Finset.Icc 1 (sourceKernelCutoff A),
        ∑ k ∈ Finset.Icc 1 (sourceKernelCutoff A),
          realMoebius d *
            (Real.log (k : ℝ) / Real.sqrt ((d : ℝ) * (k : ℝ)) *
              sourceCorrelation Realization.explicitSecondDerivative A
                (Real.log (d : ℝ) + Real.log (k : ℝ))) := by
  rw [mertensResidual_eq_full_mobius_sum A hA]
  apply Finset.sum_congr rfl
  intro d hd
  unfold sourceMobiusKernel
  rw [Finset.mul_sum]
  apply Finset.sum_congr rfl
  intro k hk
  rw [sourceKernelTerm_eq_archive A (d : ℝ) k
    (by exact_mod_cast (Finset.mem_Icc.mp hd).1) (Finset.mem_Icc.mp hk).1]

/-- A signed tail estimate for the literal full Abel integral discharges the
existing residual proposition. This theorem supplies no analytic premise. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/113EstimateWeightedMobiusPairing/Variantd4a8e025a82540c5433980d389888af595ca0c356311096e5f47735359ec5b89.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/113EstimateWeightedMobiusPairing/Variantd4a8e025a82540c5433980d389888af595ca0c356311096e5f47735359ec5b89.lean#L283).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5a21b0f52d67363df0dd7294f7649f67eb5eb53c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
