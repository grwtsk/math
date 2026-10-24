# weightedRay_hasDerivAt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1f63b7f5-422a-7ea6-e071-cbc8c6bd2c59",
  "kind": "theorem",
  "lexical_name": "weightedRay_hasDerivAt",
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
  "slug": "weightedray-hasderivat--0ab4c43bc9e720969b09b4ac",
  "source": {
    "blob": "bf6252dfcc05fb9e56e5937e82f62fe0c9555c0d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 58,
    "line": 47,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpEnergyAttempt02/Variantda7381e5dc50ef2856a7aec0c92e4930143b0254374f8227c434686023c70394.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0ab4c43bc9e720969b09b4ac16dfac27f75e863661a7bab0c8a187d420238f84",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpEnergyAttempt02/Variantda7381e5dc50ef2856a7aec0c92e4930143b0254374f8227c434686023c70394.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1f63b7f5-422a-7ea6-e071-cbc8c6bd2c59`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 47–58.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem weightedRay_hasDerivAt (w : ℂ) (t : ℝ) :
    HasDerivAt (fun u : ℝ => (u : ℂ)^10*raySlope w u)
      (w^2*(t : ℂ)^10*rayValue w t) t := by
  have ht : HasDerivAt (fun u : ℝ => (u : ℂ)^10) (10*(t : ℂ)^9) t := by
    simpa using ((hasDerivAt_id t).ofReal_comp.pow 10)
  have h := ht.mul (raySlope_hasDerivAt w t)
  apply h.congr_deriv
  have hode := literal_quartic_ODE ((t : ℂ)*w)
  rw [quartic_second_deriv,quartic_deriv] at hode
  unfold raySlope rayValue
  linear_combination (t : ℂ)^9*w*hode

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpEnergyAttempt02/Variantda7381e5dc50ef2856a7aec0c92e4930143b0254374f8227c434686023c70394.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpEnergyAttempt02/Variantda7381e5dc50ef2856a7aec0c92e4930143b0254374f8227c434686023c70394.lean#L47).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bf6252dfcc05fb9e56e5937e82f62fe0c9555c0d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
