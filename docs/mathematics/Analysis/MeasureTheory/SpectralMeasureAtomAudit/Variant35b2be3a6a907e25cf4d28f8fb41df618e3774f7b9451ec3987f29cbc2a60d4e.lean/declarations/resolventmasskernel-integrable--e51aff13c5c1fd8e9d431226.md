# resolventMassKernel_integrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "bb4267aa789c6816f773b35545f73c2f4b681f25",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 36,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/35/35b2be3a6a907e25cf4d28f8fb41df618e3774f7b9451ec3987f29cbc2a60d4e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:775c0538-7555-3b98-9c41-4b1e0984f9df",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2c91c32a-a574-e3cb-644f-4084ad59a048",
  "kind": "theorem",
  "lexical_name": "resolventMassKernel_integrable",
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
  "slug": "resolventmasskernel-integrable--e51aff13c5c1fd8e9d431226",
  "source": {
    "blob": "bb4267aa789c6816f773b35545f73c2f4b681f25",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 43,
    "line": 36,
    "path": "GRWTSK/Analysis/MeasureTheory/SpectralMeasureAtomAudit/Variant35b2be3a6a907e25cf4d28f8fb41df618e3774f7b9451ec3987f29cbc2a60d4e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e51aff13c5c1fd8e9d4312268890ebdb691182dbad29e5fb009dbc2030d7e1cf",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/SpectralMeasureAtomAudit/Variant35b2be3a6a907e25cf4d28f8fb41df618e3774f7b9451ec3987f29cbc2a60d4e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2c91c32a-a574-e3cb-644f-4084ad59a048`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 36–43.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem resolventMassKernel_integrable (ν : Measure ℝ≥0) [IsFiniteMeasure ν]
    (α : ℝ) (hα : 0 < α) : Integrable (resolventMassKernel α) ν := by
  refine (integrable_const (1 : ℝ)).mono'
    (resolventMassKernel_measurable α).aestronglyMeasurable ?_
  filter_upwards [] with x
  rw [Real.norm_eq_abs, abs_of_nonneg (resolventMassKernel_nonneg_le_one α hα x).1]
  exact (resolventMassKernel_nonneg_le_one α hα x).2

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/SpectralMeasureAtomAudit/Variant35b2be3a6a907e25cf4d28f8fb41df618e3774f7b9451ec3987f29cbc2a60d4e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/SpectralMeasureAtomAudit/Variant35b2be3a6a907e25cf4d28f8fb41df618e3774f7b9451ec3987f29cbc2a60d4e.lean#L36).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bb4267aa789c6816f773b35545f73c2f4b681f25` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
