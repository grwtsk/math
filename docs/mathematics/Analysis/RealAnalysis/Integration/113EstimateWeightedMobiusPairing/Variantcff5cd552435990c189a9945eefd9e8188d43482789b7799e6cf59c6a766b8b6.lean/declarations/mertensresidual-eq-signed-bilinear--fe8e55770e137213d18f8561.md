# mertensResidual_eq_signed_bilinear

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "1bfc63d0bc656e515f05bf340c0425d3735d890c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 275,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/cf/cff5cd552435990c189a9945eefd9e8188d43482789b7799e6cf59c6a766b8b6.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:bfb29a20-c971-f1bd-c4ce-4ab0ca8ad68e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e9ffc657-73fe-3f46-91f0-dd1473d438ae",
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
  "slug": "mertensresidual-eq-signed-bilinear--fe8e55770e137213d18f8561",
  "source": {
    "blob": "1bfc63d0bc656e515f05bf340c0425d3735d890c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 294,
    "line": 275,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/113EstimateWeightedMobiusPairing/Variantcff5cd552435990c189a9945eefd9e8188d43482789b7799e6cf59c6a766b8b6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fe8e55770e137213d18f856192969fd53bd21e513346f988319fdbb5c5ffaedb",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/113EstimateWeightedMobiusPairing/Variantcff5cd552435990c189a9945eefd9e8188d43482789b7799e6cf59c6a766b8b6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e9ffc657-73fe-3f46-91f0-dd1473d438ae`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 275–294.

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

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/113EstimateWeightedMobiusPairing/Variantcff5cd552435990c189a9945eefd9e8188d43482789b7799e6cf59c6a766b8b6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/113EstimateWeightedMobiusPairing/Variantcff5cd552435990c189a9945eefd9e8188d43482789b7799e6cf59c6a766b8b6.lean#L275).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1bfc63d0bc656e515f05bf340c0425d3735d890c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
