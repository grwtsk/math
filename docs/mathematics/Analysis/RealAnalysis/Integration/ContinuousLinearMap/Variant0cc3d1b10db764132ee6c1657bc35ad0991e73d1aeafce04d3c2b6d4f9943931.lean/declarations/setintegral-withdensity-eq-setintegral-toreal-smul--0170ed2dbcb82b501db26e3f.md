# setIntegral_withDensity_eq_setIntegral_toReal_smul₀

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0ad7d8b9-7928-0c90-5640-8b0045547e3b",
  "kind": "theorem",
  "lexical_name": "setIntegral_withDensity_eq_setIntegral_toReal_smul₀",
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
  "slug": "setintegral-withdensity-eq-setintegral-toreal-smul--0170ed2dbcb82b501db26e3f",
  "source": {
    "blob": "7d4329a27a93834efbde87a6f8dd5bc6d0db8d35",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 340,
    "line": 335,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/ContinuousLinearMap/Variant0cc3d1b10db764132ee6c1657bc35ad0991e73d1aeafce04d3c2b6d4f9943931.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0170ed2dbcb82b501db26e3f77cc6026be205f6058190e80dfc5c68ed14d6f6b",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/ContinuousLinearMap/Variant0cc3d1b10db764132ee6c1657bc35ad0991e73d1aeafce04d3c2b6d4f9943931.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0ad7d8b9-7928-0c90-5640-8b0045547e3b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 335–340.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem setIntegral_withDensity_eq_setIntegral_toReal_smul₀ {f : X → ℝ≥0∞} {s : Set X}
    (hf : AEMeasurable f (μ.restrict s)) (hf_top : ∀ᵐ x ∂μ.restrict s, f x < ∞) (g : X → E)
    (hs : MeasurableSet s) :
    ∫ x in s, g x ∂μ.withDensity (fun x => f x) = ∫ x in s, (f x).toReal • g x ∂μ := by
  rw [restrict_withDensity hs, integral_withDensity_eq_integral_toReal_smul₀ hf hf_top]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/ContinuousLinearMap/Variant0cc3d1b10db764132ee6c1657bc35ad0991e73d1aeafce04d3c2b6d4f9943931.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/ContinuousLinearMap/Variant0cc3d1b10db764132ee6c1657bc35ad0991e73d1aeafce04d3c2b6d4f9943931.lean#L335).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7d4329a27a93834efbde87a6f8dd5bc6d0db8d35` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
