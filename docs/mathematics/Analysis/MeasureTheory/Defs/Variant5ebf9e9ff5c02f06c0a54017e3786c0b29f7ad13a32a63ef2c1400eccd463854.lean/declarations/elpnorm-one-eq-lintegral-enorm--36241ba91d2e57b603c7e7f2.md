# eLpNorm_one_eq_lintegral_enorm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b57d783f82c70c0f49c85859aa0157808181237f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 128,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/5e/5ebf9e9ff5c02f06c0a54017e3786c0b29f7ad13a32a63ef2c1400eccd463854.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:0c4a1fc1-a26b-5a16-86df-6f899213c346",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a4f049f6-4563-f84b-53b8-19b66d94c073",
  "kind": "theorem",
  "lexical_name": "eLpNorm_one_eq_lintegral_enorm",
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
  "slug": "elpnorm-one-eq-lintegral-enorm--36241ba91d2e57b603c7e7f2",
  "source": {
    "blob": "b57d783f82c70c0f49c85859aa0157808181237f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 133,
    "line": 128,
    "path": "GRWTSK/Analysis/MeasureTheory/Defs/Variant5ebf9e9ff5c02f06c0a54017e3786c0b29f7ad13a32a63ef2c1400eccd463854.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:36241ba91d2e57b603c7e7f2c5dd8d2393990c8f18144ef1eecdc9deabe4319b",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Defs/Variant5ebf9e9ff5c02f06c0a54017e3786c0b29f7ad13a32a63ef2c1400eccd463854.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a4f049f6-4563-f84b-53b8-19b66d94c073`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 128–133.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem eLpNorm_one_eq_lintegral_enorm [TopologicalSpace ε] {f : α → ε}
    (hf : AEStronglyMeasurable f μ) :
    eLpNorm f 1 μ = ∫⁻ x, ‖f x‖ₑ ∂μ := by
  simp_rw [eLpNorm_eq_lintegral_rpow_enorm_toReal one_ne_zero ENNReal.coe_ne_top hf,
    ENNReal.toReal_one, one_div_one, ENNReal.rpow_one]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Defs/Variant5ebf9e9ff5c02f06c0a54017e3786c0b29f7ad13a32a63ef2c1400eccd463854.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Defs/Variant5ebf9e9ff5c02f06c0a54017e3786c0b29f7ad13a32a63ef2c1400eccd463854.lean#L128).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b57d783f82c70c0f49c85859aa0157808181237f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
