# complete_pairing_sub_psi_floor_tendsto_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6cbad73e-714e-a647-f097-cc14393d1eed",
  "kind": "theorem",
  "lexical_name": "complete_pairing_sub_psi_floor_tendsto_zero",
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
  "slug": "complete-pairing-sub-psi-floor-tendsto-zero--8f1374ff61ef4958402cbbe7",
  "source": {
    "blob": "43f15a7c33abf0cd70e1bc4d84d7306cc3084c1b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 82,
    "line": 69,
    "path": "GRWTSK/Topology/GeneralTopology/SourceActualPsiFloorConsumer/Variant636c1f56b20e8bb71130e07d17164b73fea5714a7a4185cded126c5371856487.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8f1374ff61ef4958402cbbe76ca57499db81fb00aabda4ed87acb12d2aa4e796",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/SourceActualPsiFloorConsumer/Variant636c1f56b20e8bb71130e07d17164b73fea5714a7a4185cded126c5371856487.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6cbad73e-714e-a647-f097-cc14393d1eed`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 69–82.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem complete_pairing_sub_psi_floor_tendsto_zero :
    Tendsto (fun A : ℝ => completeCorrectedAbelPairing A - actualPsiFloorPairing A)
      atTop (𝓝 (0 : ℝ)) := by
  have hh : Tendsto (fun A : ℝ => actualCancelledFactorialWork A +
      (renormalizedActualSignedTail A - actualLeadingRenormalizedTail A))
      atTop (𝓝 (0 : ℝ)) := by
    simpa only [add_zero] using actualCancelledFactorialWork_tendsto_zero.add
      renormalized_sub_actual_leading_tendsto_zero
  apply hh.congr'
  filter_upwards [eventually_ge_atTop (91 : ℝ)] with A hA
  have he := complete_pairing_eq_psi_floor_add_actual_errors hA
  linarith

/-- The original residual retains its independent zeta calibration and all genuine errors. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/SourceActualPsiFloorConsumer/Variant636c1f56b20e8bb71130e07d17164b73fea5714a7a4185cded126c5371856487.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/SourceActualPsiFloorConsumer/Variant636c1f56b20e8bb71130e07d17164b73fea5714a7a4185cded126c5371856487.lean#L69).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `43f15a7c33abf0cd70e1bc4d84d7306cc3084c1b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
