# condExpIndL1_smul'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:01640f4f-5d92-5a6b-d18d-673abae415ba",
  "kind": "theorem",
  "lexical_name": "condExpIndL1_smul'",
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
  "slug": "condexpindl1-smul--57ef5aa0f6293d4f48d99f7a",
  "source": {
    "blob": "1577fd7a324034074401183366b488ba154c0ee7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 251,
    "line": 241,
    "path": "GRWTSK/Analysis/MeasureTheory/CondexpL1/Variant96eebbe29671637a8cf51b8a49b8acc18235ebba3d852de6d94f43464070ad67.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:57ef5aa0f6293d4f48d99f7a4ea89426e784d46aae97fdb31e1d43523b15f5d9",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/CondexpL1/Variant96eebbe29671637a8cf51b8a49b8acc18235ebba3d852de6d94f43464070ad67.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:01640f4f-5d92-5a6b-d18d-673abae415ba`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 241–251.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem condExpIndL1_smul' [NormedSpace ℝ F] [SMulCommClass ℝ 𝕜 F] (c : 𝕜) (x : F) :
    condExpIndL1 hm μ s (c • x) = c • condExpIndL1 hm μ s x := by
  by_cases hs : MeasurableSet s
  swap; · simp_rw [condExpIndL1_of_not_measurableSet hs]; rw [smul_zero]
  by_cases hμs : μ s = ∞
  · simp_rw [condExpIndL1_of_measure_eq_top hμs]; rw [smul_zero]
  · simp_rw [condExpIndL1_of_measurableSet_of_measure_ne_top hs hμs]
    exact condExpIndL1Fin_smul' hs hμs c x

@[deprecated (since := "2025-01-21")] alias condexpIndL1_smul' := condExpIndL1_smul'

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/CondexpL1/Variant96eebbe29671637a8cf51b8a49b8acc18235ebba3d852de6d94f43464070ad67.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/CondexpL1/Variant96eebbe29671637a8cf51b8a49b8acc18235ebba3d852de6d94f43464070ad67.lean#L241).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1577fd7a324034074401183366b488ba154c0ee7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
