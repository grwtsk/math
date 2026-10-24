# boundaryIntegral_congr

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e8b51b5b-2adf-6de1-4915-925ee5219ddb",
  "kind": "theorem",
  "lexical_name": "boundaryIntegral_congr",
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
  "slug": "boundaryintegral-congr--26e0f3f35f309c4e33843d00",
  "source": {
    "blob": "7e21eb584148f5bfbc9c959330c5578f2452ae79",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 80,
    "line": 64,
    "path": "GRWTSK/Analysis/Complex/RectangularPoleReduction.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:26e0f3f35f309c4e33843d00c45f1e0c1c22286dfdff8cd9eb25ca40e433ea51",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/RectangularPoleReduction.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e8b51b5b-2adf-6de1-4915-925ee5219ddb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 64–80.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem boundaryIntegral_congr (f g : ℂ → ℂ) (l r T : ℝ) (hT : 0 ≤ T)
    (hh : ∀ y : ℝ, |y| = T → ∀ u ∈ uIcc l r,
      f ((u : ℂ) + (y : ℂ) * Complex.I) = g ((u : ℂ) + (y : ℂ) * Complex.I))
    (hv : ∀ c : ℝ, c = l ∨ c = r → ∀ t ∈ uIcc (-T) T,
      f ((c : ℂ) + (t : ℂ) * Complex.I) = g ((c : ℂ) + (t : ℂ) * Complex.I)) :
    boundaryIntegral f l r T = boundaryIntegral g l r T := by
  have hb : horizontal f l r (-T) = horizontal g l r (-T) :=
    intervalIntegral.integral_congr (hh (-T) (by simp [abs_of_nonneg hT]))
  have hu : horizontal f l r T = horizontal g l r T :=
    intervalIntegral.integral_congr (hh T (abs_of_nonneg hT))
  have hr : vertical f r T = vertical g r T :=
    intervalIntegral.integral_congr (hv r (Or.inr rfl))
  have hl : vertical f l T = vertical g l T :=
    intervalIntegral.integral_congr (hv l (Or.inl rfl))
  simp only [boundaryIntegral, hb, hu, hr, hl]

/-- Cauchy-Goursat is applied to the analytically extended remainder on the filled rectangle. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/ComplexAnalysis/RectangularPoleReduction.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Complex/RectangularPoleReduction.lean#L64).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7e21eb584148f5bfbc9c959330c5578f2452ae79` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
