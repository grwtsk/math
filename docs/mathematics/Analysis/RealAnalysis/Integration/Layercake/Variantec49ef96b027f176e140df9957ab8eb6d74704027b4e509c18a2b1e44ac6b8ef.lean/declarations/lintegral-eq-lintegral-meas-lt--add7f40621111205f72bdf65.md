# lintegral_eq_lintegral_meas_lt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8102f692-ecf2-01ec-e121-2562177a52c5",
  "kind": "theorem",
  "lexical_name": "lintegral_eq_lintegral_meas_lt",
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
  "slug": "lintegral-eq-lintegral-meas-lt--add7f40621111205f72bdf65",
  "source": {
    "blob": "18de3077a108c790d2b6c8addb314de87d5fb025",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 525,
    "line": 504,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Layercake/Variantec49ef96b027f176e140df9957ab8eb6d74704027b4e509c18a2b1e44ac6b8ef.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:add7f40621111205f72bdf6539d1e749027cf46c9205938178651a86ee4eaed3",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Layercake/Variantec49ef96b027f176e140df9957ab8eb6d74704027b4e509c18a2b1e44ac6b8ef.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8102f692-ecf2-01ec-e121-2562177a52c5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 504–525.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem lintegral_eq_lintegral_meas_lt (μ : Measure α)
    (f_nn : 0 ≤ᵐ[μ] f) (f_mble : AEMeasurable f μ) :
    ∫⁻ ω, ENNReal.ofReal (f ω) ∂μ = ∫⁻ t in Ioi 0, μ {a : α | t < f a} := by
  rw [lintegral_eq_lintegral_meas_le μ f_nn f_mble]
  apply lintegral_congr_ae
  filter_upwards [meas_le_ae_eq_meas_lt μ (volume.restrict (Ioi 0)) f]
    with t ht
  rw [ht]

end LayercakeLT

section LayercakeIntegral

variable {α : Type*} [MeasurableSpace α] {μ : Measure α} {f : α → ℝ}

/-- The standard case of the layer cake formula / Cavalieri's principle / tail probability formula:

For an integrable a.e.-nonnegative real-valued function `f`, the Bochner integral of `f` can be
written (roughly speaking) as: `∫ f ∂μ = ∫ t in 0..∞, μ {ω | f(ω) > t}`.

See `MeasureTheory.lintegral_eq_lintegral_meas_lt` for a version with Lebesgue integral `∫⁻`
instead. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Layercake/Variantec49ef96b027f176e140df9957ab8eb6d74704027b4e509c18a2b1e44ac6b8ef.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Layercake/Variantec49ef96b027f176e140df9957ab8eb6d74704027b4e509c18a2b1e44ac6b8ef.lean#L504).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `18de3077a108c790d2b6c8addb314de87d5fb025` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
