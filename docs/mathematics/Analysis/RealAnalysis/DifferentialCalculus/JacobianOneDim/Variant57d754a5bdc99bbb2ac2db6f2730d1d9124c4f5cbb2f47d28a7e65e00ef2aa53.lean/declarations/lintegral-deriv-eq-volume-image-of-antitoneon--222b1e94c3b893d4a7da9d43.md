# lintegral_deriv_eq_volume_image_of_antitoneOn

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:aee0a32b-800c-c9b4-0228-be96be1f340d",
  "kind": "theorem",
  "lexical_name": "lintegral_deriv_eq_volume_image_of_antitoneOn",
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
  "slug": "lintegral-deriv-eq-volume-image-of-antitoneon--222b1e94c3b893d4a7da9d43",
  "source": {
    "blob": "0f448cc8a62dc92b1f9164768532218eebaa4aab",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 395,
    "line": 388,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/JacobianOneDim/Variant57d754a5bdc99bbb2ac2db6f2730d1d9124c4f5cbb2f47d28a7e65e00ef2aa53.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:222b1e94c3b893d4a7da9d4376877fea231d7fcecaab87adc31501c5600abe1f",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/JacobianOneDim/Variant57d754a5bdc99bbb2ac2db6f2730d1d9124c4f5cbb2f47d28a7e65e00ef2aa53.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:aee0a32b-800c-c9b4-0228-be96be1f340d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 388–395.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem lintegral_deriv_eq_volume_image_of_antitoneOn (hs : MeasurableSet s)
    (hf' : ∀ x ∈ s, HasDerivWithinAt f (f' x) s x) (hf : AntitoneOn f s) :
    (∫⁻ x in s, ENNReal.ofReal (-f' x)) = volume (f '' s) := by
  simpa using (lintegral_image_eq_lintegral_deriv_mul_of_antitoneOn hs hf' hf 1).symm

/-- Integrability in the change of variable formula for differentiable functions: if a real
function `f` is antitone and differentiable on a measurable set `s`, then a function
`g : ℝ → F` is integrable on `f '' s` if and only if `-f' x • g ∘ f` is integrable on `s` . -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/JacobianOneDim/Variant57d754a5bdc99bbb2ac2db6f2730d1d9124c4f5cbb2f47d28a7e65e00ef2aa53.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/JacobianOneDim/Variant57d754a5bdc99bbb2ac2db6f2730d1d9124c4f5cbb2f47d28a7e65e00ef2aa53.lean#L388).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0f448cc8a62dc92b1f9164768532218eebaa4aab` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
