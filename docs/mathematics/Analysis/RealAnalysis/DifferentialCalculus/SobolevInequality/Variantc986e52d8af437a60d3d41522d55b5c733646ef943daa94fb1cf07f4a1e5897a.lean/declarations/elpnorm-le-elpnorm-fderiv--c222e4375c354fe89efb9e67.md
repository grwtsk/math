# eLpNorm_le_eLpNorm_fderiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5ff827ce-9065-aa07-f228-1f8567288a5b",
  "kind": "theorem",
  "lexical_name": "eLpNorm_le_eLpNorm_fderiv",
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
  "slug": "elpnorm-le-elpnorm-fderiv--c222e4375c354fe89efb9e67",
  "source": {
    "blob": "4c23fd771a73ab411638100f74393a5a65e7fc15",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 731,
    "line": 722,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SobolevInequality/Variantc986e52d8af437a60d3d41522d55b5c733646ef943daa94fb1cf07f4a1e5897a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c222e4375c354fe89efb9e67d65d83e6814aa2b203f602d7ed9d7ca9addd7d60",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/SobolevInequality/Variantc986e52d8af437a60d3d41522d55b5c733646ef943daa94fb1cf07f4a1e5897a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5ff827ce-9065-aa07-f228-1f8567288a5b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 722–731.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem eLpNorm_le_eLpNorm_fderiv [FiniteDimensional ℝ F]
    {u : E → F} {s : Set E} (hu : ContDiff ℝ 1 u) (h2u : u.support ⊆ s)
    {p : ℝ≥0} (hp : 1 ≤ p) (h2p : p < finrank ℝ E) (hs : Bornology.IsBounded s) :
    eLpNorm u p μ ≤ eLpNormLESNormFDerivOfLeConst F μ s p p * eLpNorm (fderiv ℝ u) p μ := by
  refine eLpNorm_le_eLpNorm_fderiv_of_le μ hu h2u hp h2p ?_ hs
  norm_cast
  simp only [tsub_le_iff_right, le_add_iff_nonneg_right]
  positivity

end MeasureTheory
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/SobolevInequality/Variantc986e52d8af437a60d3d41522d55b5c733646ef943daa94fb1cf07f4a1e5897a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SobolevInequality/Variantc986e52d8af437a60d3d41522d55b5c733646ef943daa94fb1cf07f4a1e5897a.lean#L722).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4c23fd771a73ab411638100f74393a5a65e7fc15` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
