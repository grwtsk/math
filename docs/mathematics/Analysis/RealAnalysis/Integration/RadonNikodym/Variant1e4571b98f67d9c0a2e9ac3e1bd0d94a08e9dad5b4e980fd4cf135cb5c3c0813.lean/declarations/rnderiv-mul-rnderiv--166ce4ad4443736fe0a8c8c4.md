# rnDeriv_mul_rnDeriv'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "da0a630a7a4a37e6b12adc0a38fa99e523ab9183",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 387,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/1e/1e4571b98f67d9c0a2e9ac3e1bd0d94a08e9dad5b4e980fd4cf135cb5c3c0813.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:425f559e-e6a0-a72d-378d-fed39639fd64",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:686de1f4-a4a1-b327-3bff-f2652e2c63c6",
  "kind": "lemma",
  "lexical_name": "rnDeriv_mul_rnDeriv'",
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
  "slug": "rnderiv-mul-rnderiv--166ce4ad4443736fe0a8c8c4",
  "source": {
    "blob": "da0a630a7a4a37e6b12adc0a38fa99e523ab9183",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 396,
    "line": 387,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/RadonNikodym/Variant1e4571b98f67d9c0a2e9ac3e1bd0d94a08e9dad5b4e980fd4cf135cb5c3c0813.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:166ce4ad4443736fe0a8c8c4bae6cc28d5d730299c66f0136ca1c4e8b91ade7d",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/RadonNikodym/Variant1e4571b98f67d9c0a2e9ac3e1bd0d94a08e9dad5b4e980fd4cf135cb5c3c0813.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:686de1f4-a4a1-b327-3bff-f2652e2c63c6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 387–396.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma rnDeriv_mul_rnDeriv' {κ : Measure α} [SigmaFinite μ] [SigmaFinite ν] [SigmaFinite κ]
    (hνκ : ν ≪ κ) :
    μ.rnDeriv ν * ν.rnDeriv κ =ᵐ[ν] μ.rnDeriv κ := by
  obtain ⟨h_meas, h_sing, hμν⟩ := Measure.haveLebesgueDecomposition_spec μ ν
  filter_upwards [hνκ <| Measure.rnDeriv_add' (μ.singularPart ν) (ν.withDensity (μ.rnDeriv ν)) κ,
    hνκ <| Measure.rnDeriv_withDensity_left_of_absolutelyContinuous hνκ h_meas.aemeasurable,
    Measure.rnDeriv_eq_zero_of_mutuallySingular h_sing hνκ] with x hx1 hx2 hx3
  nth_rw 2 [hμν]
  rw [hx1, Pi.add_apply, hx2, Pi.mul_apply, hx3, Pi.zero_apply, zero_add]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/RadonNikodym/Variant1e4571b98f67d9c0a2e9ac3e1bd0d94a08e9dad5b4e980fd4cf135cb5c3c0813.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/RadonNikodym/Variant1e4571b98f67d9c0a2e9ac3e1bd0d94a08e9dad5b4e980fd4cf135cb5c3c0813.lean#L387).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `da0a630a7a4a37e6b12adc0a38fa99e523ab9183` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
