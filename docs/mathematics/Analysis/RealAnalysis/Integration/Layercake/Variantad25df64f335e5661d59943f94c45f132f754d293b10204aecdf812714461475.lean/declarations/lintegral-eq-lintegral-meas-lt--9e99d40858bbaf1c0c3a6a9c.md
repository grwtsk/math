# lintegral_eq_lintegral_meas_lt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c9aeb10ce211de0ececd83a30212e61be39f0b41",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 340,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ad/ad25df64f335e5661d59943f94c45f132f754d293b10204aecdf812714461475.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f1b72927-2bfa-2819-4d49-9b35e0365056",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:842ab8e9-9d82-4d18-0380-afdecffa2fb2",
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
  "slug": "lintegral-eq-lintegral-meas-lt--9e99d40858bbaf1c0c3a6a9c",
  "source": {
    "blob": "c9aeb10ce211de0ececd83a30212e61be39f0b41",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 355,
    "line": 340,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Layercake/Variantad25df64f335e5661d59943f94c45f132f754d293b10204aecdf812714461475.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9e99d40858bbaf1c0c3a6a9cb4ac3328dc08c40c7eb1ec2e1e20eac5b3332c80",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Layercake/Variantad25df64f335e5661d59943f94c45f132f754d293b10204aecdf812714461475.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:842ab8e9-9d82-4d18-0380-afdecffa2fb2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 340–355.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem lintegral_eq_lintegral_meas_lt (μ : Measure α) [SigmaFinite μ] (f_nn : 0 ≤ f)
    (f_mble : Measurable f) :
    (∫⁻ ω, ENNReal.ofReal (f ω) ∂μ) = ∫⁻ t in Ioi 0, μ {a : α | t < f a} := by
  rw [lintegral_eq_lintegral_meas_le μ f_nn f_mble]
  apply lintegral_congr_ae
  filter_upwards [Measure.meas_le_ae_eq_meas_lt μ (volume.restrict (Ioi 0)) f_mble] with t ht
  rw [ht]
#align lintegral_eq_lintegral_meas_lt lintegral_eq_lintegral_meas_lt

/-- An application of the layer cake formula / Cavalieri's principle / tail probability formula:

For a nonnegative function `f` on a sigma-finite measure space, the Lebesgue integral of `f` can
be written (roughly speaking) as: `∫⁻ f^p ∂μ = p * ∫⁻ t in (0).. ∞, t^(p-1) * μ {ω | f(ω) > t}`.

See `lintegral_rpow_eq_lintegral_meas_le_mul` for a version with sets of the form `{ω | f(ω) ≥ t}`
instead. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Layercake/Variantad25df64f335e5661d59943f94c45f132f754d293b10204aecdf812714461475.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Layercake/Variantad25df64f335e5661d59943f94c45f132f754d293b10204aecdf812714461475.lean#L340).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c9aeb10ce211de0ececd83a30212e61be39f0b41` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
