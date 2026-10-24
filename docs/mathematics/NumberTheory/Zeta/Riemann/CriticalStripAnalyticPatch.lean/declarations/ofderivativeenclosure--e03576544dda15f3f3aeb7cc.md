# ofDerivativeEnclosure

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c8f85337477065b93e15510d516cf7d1991b81a8b9081d31baa7c868c98deb71",
  "kind": "def",
  "lexical_name": "ofDerivativeEnclosure",
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
  "slug": "ofderivativeenclosure--e03576544dda15f3f3aeb7cc",
  "source": {
    "blob": "6ece442dcd48c7411e5fe3ff63f613da93640c10",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 60,
    "line": 39,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripAnalyticPatch.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e03576544dda15f3f3aeb7ccd6b23cd1d7fe7b933bf81058d9bf91ce8dfa6259",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/CriticalStripAnalyticPatch.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c8f85337477065b93e15510d516cf7d1991b81a8b9081d31baa7c868c98deb71`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 39–60.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def ofDerivativeEnclosure {F : ℂ → ℂ} {U V : Set ℂ} (c a : ℂ)
    (b δ M r : ℝ) (_hδ : 0 ≤ δ) (hM : 0 ≤ M) (hr : 0 ≤ r)
    (hconv : Convex ℝ V) (hc : c ∈ V) (hUV : U ⊆ V)
    (hF : ∀ z ∈ V, DifferentiableAt ℂ F z)
    (hderiv : ∀ z ∈ V, ‖deriv F z‖ ≤ M)
    (hradius : ∀ z ∈ U, ‖z - c‖ ≤ r)
    (hsample : b ≤ ‖a‖) (henclosure : ‖F c - a‖ ≤ δ)
    (hmargin : δ + M * r < b) : SampleVariationPatch F U where
  center := c
  lower := b - δ
  error := M * r
  error_nonneg := mul_nonneg hM hr
  sample_lower := sample_lower_of_enclosure hsample henclosure
  variation := by
    intro z hz
    exact (Convex.norm_image_sub_le_of_norm_deriv_le hF hderiv hconv hc (hUV hz)).trans
      (mul_le_mul_of_nonneg_left (hradius z hz) hM)
  strict_margin := by linarith

/-- Quantitative transport from a model P to the same consumed source F. The model
error is charged once in a nonvanishing conclusion, without claiming an exact equality
or unnecessarily converting it into a center-to-center variation error. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/CriticalStripAnalyticPatch.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripAnalyticPatch.lean#L39).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6ece442dcd48c7411e5fe3ff63f613da93640c10` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
