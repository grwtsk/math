# lintegral_comp_eq_lintegral_meas_lt_mul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "347d52459d39580b09f5c0d7b367229dce817abe",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 478,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/14/140be1246c7751540407ecdc6721c9daca717243f3d11a8c1199040e98f5cbcb.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6c5767d3-69c2-797a-21b9-e01442c2decd",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:087f0484-1f29-7638-a1d5-da2fa2015888",
  "kind": "theorem",
  "lexical_name": "lintegral_comp_eq_lintegral_meas_lt_mul",
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
  "slug": "lintegral-comp-eq-lintegral-meas-lt-mul--fab954be515bc88540ae8664",
  "source": {
    "blob": "347d52459d39580b09f5c0d7b367229dce817abe",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 495,
    "line": 478,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Layercake/Variant140be1246c7751540407ecdc6721c9daca717243f3d11a8c1199040e98f5cbcb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fab954be515bc88540ae8664c03880eacbb388fd69e8fa7cca1730cccd31efb7",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Layercake/Variant140be1246c7751540407ecdc6721c9daca717243f3d11a8c1199040e98f5cbcb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:087f0484-1f29-7638-a1d5-da2fa2015888`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 478–495.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem lintegral_comp_eq_lintegral_meas_lt_mul (μ : Measure α) (f_nn : 0 ≤ᵐ[μ] f)
    (f_mble : AEMeasurable f μ) (g_intble : ∀ t > 0, IntervalIntegrable g volume 0 t)
    (g_nn : ∀ᵐ t ∂volume.restrict (Ioi 0), 0 ≤ g t) :
    ∫⁻ ω, ENNReal.ofReal (∫ t in 0..f ω, g t) ∂μ =
      ∫⁻ t in Ioi 0, μ {a : α | t < f a} * ENNReal.ofReal (g t) := by
  rw [lintegral_comp_eq_lintegral_meas_le_mul μ f_nn f_mble g_intble g_nn]
  apply lintegral_congr_ae
  filter_upwards [meas_le_ae_eq_meas_lt μ (volume.restrict (Ioi 0)) f]
    with t ht
  rw [ht]

/-- The standard case of the layer cake formula / Cavalieri's principle / tail probability formula:

For a nonnegative function `f` on a measure space, the Lebesgue integral of `f` can
be written (roughly speaking) as: `∫⁻ f ∂μ = ∫⁻ t in 0..∞, μ {ω | f(ω) > t}`.

See `lintegral_eq_lintegral_meas_le` for a version with sets of the form `{ω | f(ω) ≥ t}`
instead. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Layercake/Variant140be1246c7751540407ecdc6721c9daca717243f3d11a8c1199040e98f5cbcb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Layercake/Variant140be1246c7751540407ecdc6721c9daca717243f3d11a8c1199040e98f5cbcb.lean#L478).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `347d52459d39580b09f5c0d7b367229dce817abe` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
