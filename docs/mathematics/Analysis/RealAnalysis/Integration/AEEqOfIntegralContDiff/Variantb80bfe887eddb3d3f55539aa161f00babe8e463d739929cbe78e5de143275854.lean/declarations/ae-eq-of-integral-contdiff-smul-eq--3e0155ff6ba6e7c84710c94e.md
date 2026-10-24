# ae_eq_of_integral_contDiff_smul_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cef4c819-91fb-d978-496d-396c6e6f116e",
  "kind": "theorem",
  "lexical_name": "ae_eq_of_integral_contDiff_smul_eq",
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
  "slug": "ae-eq-of-integral-contdiff-smul-eq--3e0155ff6ba6e7c84710c94e",
  "source": {
    "blob": "07bbf10a3a7ffa9f81f880dd5ca09d41e707b7f6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 210,
    "line": 201,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/AEEqOfIntegralContDiff/Variantb80bfe887eddb3d3f55539aa161f00babe8e463d739929cbe78e5de143275854.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3e0155ff6ba6e7c84710c94e380f9784d31ebbc2930a65dad23c4fcc272f9ead",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/AEEqOfIntegralContDiff/Variantb80bfe887eddb3d3f55539aa161f00babe8e463d739929cbe78e5de143275854.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cef4c819-91fb-d978-496d-396c6e6f116e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 201–210.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ae_eq_of_integral_contDiff_smul_eq
    (hf : LocallyIntegrable f μ) (hf' : LocallyIntegrable f' μ) (h : ∀ (g : E → ℝ),
      ContDiff ℝ ∞ g → HasCompactSupport g → ∫ x, g x • f x ∂μ = ∫ x, g x • f' x ∂μ) :
    ∀ᵐ x ∂μ, f x = f' x :=
  ae_eq_of_integral_smooth_smul_eq 𝓘(ℝ, E) hf hf'
    (fun g g_diff g_supp ↦ h g g_diff.contDiff g_supp)

/-- If a function `f` locally integrable on an open subset `U` of a finite-dimensional real
  vector space has zero integral when multiplied by any smooth function compactly supported
  in `U`, then `f` vanishes almost everywhere in `U`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/AEEqOfIntegralContDiff/Variantb80bfe887eddb3d3f55539aa161f00babe8e463d739929cbe78e5de143275854.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/AEEqOfIntegralContDiff/Variantb80bfe887eddb3d3f55539aa161f00babe8e463d739929cbe78e5de143275854.lean#L201).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `07bbf10a3a7ffa9f81f880dd5ca09d41e707b7f6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
