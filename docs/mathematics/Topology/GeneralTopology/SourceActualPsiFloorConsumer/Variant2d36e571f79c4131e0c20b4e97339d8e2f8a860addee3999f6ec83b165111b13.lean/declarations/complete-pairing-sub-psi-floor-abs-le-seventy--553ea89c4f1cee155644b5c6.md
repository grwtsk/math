# complete_pairing_sub_psi_floor_abs_le_seventy

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f79796d2-d4c5-1755-b2f3-3c7cdf2723be",
  "kind": "theorem",
  "lexical_name": "complete_pairing_sub_psi_floor_abs_le_seventy",
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
  "slug": "complete-pairing-sub-psi-floor-abs-le-seventy--553ea89c4f1cee155644b5c6",
  "source": {
    "blob": "13b26a0d699e47c360760cad517c531561871999",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 159,
    "line": 152,
    "path": "GRWTSK/Topology/GeneralTopology/SourceActualPsiFloorConsumer/Variant2d36e571f79c4131e0c20b4e97339d8e2f8a860addee3999f6ec83b165111b13.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:553ea89c4f1cee155644b5c6df775e818e82102d2dbe7d59c3b053fe4dd93515",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/SourceActualPsiFloorConsumer/Variant2d36e571f79c4131e0c20b4e97339d8e2f8a860addee3999f6ec83b165111b13.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f79796d2-d4c5-1755-b2f3-3c7cdf2723be`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 152–159.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem complete_pairing_sub_psi_floor_abs_le_seventy {A : ℝ} (hA : 25600 ≤ A) :
    |completeCorrectedAbelPairing A - actualPsiFloorPairing A| ≤ 70 := by
  have he := complete_pairing_sub_psi_floor_abs_le (by linarith : 91 ≤ A)
  have hs := fullKappaShortBudget_le_fifty_five hA
  have hf := fiveCancelledFactorialBudget_le_fifteen hA
  linarith

/-- Same real radius preserves equivalent upper witnesses for the true arithmetic pairing. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/SourceActualPsiFloorConsumer/Variant2d36e571f79c4131e0c20b4e97339d8e2f8a860addee3999f6ec83b165111b13.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/SourceActualPsiFloorConsumer/Variant2d36e571f79c4131e0c20b4e97339d8e2f8a860addee3999f6ec83b165111b13.lean#L152).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `13b26a0d699e47c360760cad517c531561871999` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
