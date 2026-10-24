# tendsto_measure_Ioc_atBot

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fdbbe2b4-80df-1157-5192-4bd5524baec4",
  "kind": "theorem",
  "lexical_name": "tendsto_measure_Ioc_atBot",
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
  "slug": "tendsto-measure-ioc-atbot--41f32d5b5517f258eca22b7b",
  "source": {
    "blob": "dca30b1d758d93654e41f7211c74274b90412ce6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1348,
    "line": 1343,
    "path": "GRWTSK/Analysis/MeasureTheory/MeasureSpace/Variant11f06db20020f58942c63200d3b5f3d0e2556399e640f9bf741a6b5a871760f2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:41f32d5b5517f258eca22b7b6d2cf8a8e652080b52b05003f5e761b5e7592c10",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/MeasureSpace/Variant11f06db20020f58942c63200d3b5f3d0e2556399e640f9bf741a6b5a871760f2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fdbbe2b4-80df-1157-5192-4bd5524baec4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1343–1348.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tendsto_measure_Ioc_atBot [Preorder α] [NoMinOrder α]
    [(atBot : Filter α).IsCountablyGenerated] (μ : Measure α) (a : α) :
    Tendsto (fun x => μ (Ioc x a)) atBot (𝓝 (μ (Iic a))) := by
  rw [← iUnion_Ioc_left]
  exact tendsto_measure_iUnion_atBot (monotone_id.Ioc antitone_const)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/MeasureSpace/Variant11f06db20020f58942c63200d3b5f3d0e2556399e640f9bf741a6b5a871760f2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/MeasureSpace/Variant11f06db20020f58942c63200d3b5f3d0e2556399e640f9bf741a6b5a871760f2.lean#L1343).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dca30b1d758d93654e41f7211c74274b90412ce6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
