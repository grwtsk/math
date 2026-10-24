# integrable_line

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3545b59f-4f45-c010-34c5-a682a241ae3b",
  "kind": "lemma",
  "lexical_name": "integrable_line",
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
  "slug": "integrable-line--ff378e91c8f9307289f64be0",
  "source": {
    "blob": "d46f9e1c7eddbb2134e8f3c282dcf3ff9334f8c9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 434,
    "line": 422,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/VerticalLine/Variant516baed114065c665177653efcbc3155ed859af646ab544a261ea1b0f615aae6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ff378e91c8f9307289f64be07c35acb592cd9ce0782835d6ba0427017924bd6b",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/VerticalLine/Variant516baed114065c665177653efcbc3155ed859af646ab544a261ea1b0f615aae6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3545b59f-4f45-c010-34c5-a682a241ae3b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 422–434.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma integrable_line {f : ℂ → ℂ} {σ : ℝ} (hf : ∀ t : ℝ, DifferentiableAt ℂ f (σ + t * I))
    {φ : ℝ → ℝ} (hφ : Integrable φ) (hb : ∀ t : ℝ, ‖f (σ + t * I)‖ ≤ φ t) :
    Integrable (fun t : ℝ => f (σ + t * I)) := by
  have hc : Continuous (fun t : ℝ => f (σ + t * I)) := by
    refine continuous_iff_continuousAt.mpr fun t => ?_
    have hg : Continuous (fun t : ℝ => (σ : ℂ) + t * I) := by fun_prop
    show ContinuousAt (f ∘ fun t : ℝ => (σ : ℂ) + t * I) t
    exact ContinuousAt.comp_of_eq (hf t).continuousAt hg.continuousAt rfl
  exact hφ.mono' hc.aestronglyMeasurable (Filter.Eventually.of_forall hb)

/-- General vertical-line shift for an analytic function with an integrable, uniformly-decaying
majorant on a closed strip (Cauchy on rectangles + horizontal vanishing + dominated limits).
Proof route: RectangleIntegral machinery (HolomorphicOn.vanishesOnRectangle). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/VerticalLine/Variant516baed114065c665177653efcbc3155ed859af646ab544a261ea1b0f615aae6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/VerticalLine/Variant516baed114065c665177653efcbc3155ed859af646ab544a261ea1b0f615aae6.lean#L422).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d46f9e1c7eddbb2134e8f3c282dcf3ff9334f8c9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
