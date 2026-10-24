# sourceFourier_translate

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8d76b7e5-e4a5-3169-6903-7d28beb0a7db",
  "kind": "theorem",
  "lexical_name": "sourceFourier_translate",
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
  "slug": "sourcefourier-translate--33bdbff9249846414e29e588",
  "source": {
    "blob": "fefebd895499baf4eb4abb5e5592018bb8b0702b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 47,
    "line": 29,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/WeightedSourceSpectrum/Varianteaf6942d09b98bffa1efcd328aaa743ac1a0ba77bfbd9694947a35b7fb5f7ec1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:33bdbff9249846414e29e588c07d2f45ffacd31b4b39456b7e50907f53a33042",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/WeightedSourceSpectrum/Varianteaf6942d09b98bffa1efcd328aaa743ac1a0ba77bfbd9694947a35b7fb5f7ec1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8d76b7e5-e4a5-3169-6903-7d28beb0a7db`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 29–47.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sourceFourier_translate (f : ℝ → ℝ) (y ξ : ℝ) :
    sourceFourier (fun x ↦ f (x - y)) ξ =
      Complex.exp (Complex.I * (ξ : ℂ) * (y : ℂ)) * sourceFourier f ξ := by
  unfold sourceFourier
  calc
    _ = ∫ x : ℝ, (f x : ℂ) * Complex.exp (Complex.I * (ξ : ℂ) * ((x + y : ℝ) : ℂ)) := by
      rw [← integral_add_right_eq_self
        (fun x : ℝ ↦ (f (x - y) : ℂ) * Complex.exp (Complex.I * (ξ : ℂ) * (x : ℂ))) y]
      simp only [add_sub_cancel_right]
    _ = _ := by
      rw [← integral_const_mul]
      apply integral_congr_ae
      filter_upwards [] with x
      push_cast
      rw [show Complex.I * (ξ : ℂ) * ((x : ℂ) + (y : ℂ)) =
        Complex.I * (ξ : ℂ) * (y : ℂ) + Complex.I * (ξ : ℂ) * (x : ℂ) by ring,
        Complex.exp_add]
      ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/WeightedSourceSpectrum/Varianteaf6942d09b98bffa1efcd328aaa743ac1a0ba77bfbd9694947a35b7fb5f7ec1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/WeightedSourceSpectrum/Varianteaf6942d09b98bffa1efcd328aaa743ac1a0ba77bfbd9694947a35b7fb5f7ec1.lean#L29).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fefebd895499baf4eb4abb5e5592018bb8b0702b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
