# IndepFun.integral_mul_of_nonneg

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4ab5c6d4-c3a1-298a-6254-63b876edd38a",
  "kind": "theorem",
  "lexical_name": "IndepFun.integral_mul_of_nonneg",
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
  "slug": "indepfun-integral-mul-of-nonneg--22089346b40eaa0c2766c79b",
  "source": {
    "blob": "adfee145593169e2b9b77f148993872723df788b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 232,
    "line": 212,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Integration/Variantf4d7e16750dc3debbe0a853d4b145bc363331d8f97e7ee708813964cea9c00c6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:22089346b40eaa0c2766c79bb81ac3ef9b095e9673546db2e4fd2895d15c2b6c",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Integration/Variantf4d7e16750dc3debbe0a853d4b145bc363331d8f97e7ee708813964cea9c00c6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4ab5c6d4-c3a1-298a-6254-63b876edd38a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 212–232.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IndepFun.integral_mul_of_nonneg (hXY : IndepFun X Y μ) (hXp : 0 ≤ X) (hYp : 0 ≤ Y)
    (hXm : AEMeasurable X μ) (hYm : AEMeasurable Y μ) :
    integral μ (X * Y) = integral μ X * integral μ Y := by
  have h1 : AEMeasurable (fun a => ENNReal.ofReal (X a)) μ :=
    ENNReal.measurable_ofReal.comp_aemeasurable hXm
  have h2 : AEMeasurable (fun a => ENNReal.ofReal (Y a)) μ :=
    ENNReal.measurable_ofReal.comp_aemeasurable hYm
  have h3 : AEMeasurable (X * Y) μ := hXm.mul hYm
  have h4 : 0 ≤ᵐ[μ] X * Y := ae_of_all _ fun ω => mul_nonneg (hXp ω) (hYp ω)
  rw [integral_eq_lintegral_of_nonneg_ae (ae_of_all _ hXp) hXm.aestronglyMeasurable,
    integral_eq_lintegral_of_nonneg_ae (ae_of_all _ hYp) hYm.aestronglyMeasurable,
    integral_eq_lintegral_of_nonneg_ae h4 h3.aestronglyMeasurable]
  simp_rw [← ENNReal.toReal_mul, Pi.mul_apply, ENNReal.ofReal_mul (hXp _)]
  congr
  apply lintegral_mul_eq_lintegral_mul_lintegral_of_indepFun' h1 h2
  exact hXY.comp ENNReal.measurable_ofReal ENNReal.measurable_ofReal

/-- The (Bochner) integral of the product of two independent, integrable random
  variables is the product of their integrals. The proof is pedestrian decomposition
  into their positive and negative parts in order to apply `IndepFun.integral_mul_of_nonneg`
  four times. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Integration/Variantf4d7e16750dc3debbe0a853d4b145bc363331d8f97e7ee708813964cea9c00c6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Integration/Variantf4d7e16750dc3debbe0a853d4b145bc363331d8f97e7ee708813964cea9c00c6.lean#L212).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `adfee145593169e2b9b77f148993872723df788b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
