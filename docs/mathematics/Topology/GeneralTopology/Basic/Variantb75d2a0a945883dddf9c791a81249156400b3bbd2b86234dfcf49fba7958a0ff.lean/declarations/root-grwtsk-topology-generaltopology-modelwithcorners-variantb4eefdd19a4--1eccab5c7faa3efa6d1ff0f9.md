# _root_.GRWTSK.Topology.GeneralTopology.ModelWithCorners.Variantb4eefdd19a4e3e6c50a368c7c08f02212e6c989272809657df29dfed1c3f8009.Convex.convex_isRCLikeNormedField

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f6116903-32c1-0341-ea4f-9e1b00c27f36",
  "kind": "lemma",
  "lexical_name": "_root_.GRWTSK.Topology.GeneralTopology.ModelWithCorners.Variantb4eefdd19a4e3e6c50a368c7c08f02212e6c989272809657df29dfed1c3f8009.Convex.convex_isRCLikeNormedField",
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
  "slug": "root-grwtsk-topology-generaltopology-modelwithcorners-variantb4eefdd19a4--1eccab5c7faa3efa6d1ff0f9",
  "source": {
    "blob": "f0cb153a5bdcbc6cea6e97ac3f6447d88c871eee",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 327,
    "line": 314,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variantb75d2a0a945883dddf9c791a81249156400b3bbd2b86234dfcf49fba7958a0ff.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1eccab5c7faa3efa6d1ff0f990eecad203c4740d4a56c1703e4b0ad7307c49f6",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variantb75d2a0a945883dddf9c791a81249156400b3bbd2b86234dfcf49fba7958a0ff.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f6116903-32c1-0341-ea4f-9e1b00c27f36`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 314–327.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma _root_.GRWTSK.Topology.GeneralTopology.ModelWithCorners.Variantb4eefdd19a4e3e6c50a368c7c08f02212e6c989272809657df29dfed1c3f8009.Convex.convex_isRCLikeNormedField [NormedSpace ℝ E] [h : IsRCLikeNormedField 𝕜]
    {s : Set E} (hs : Convex ℝ s) :
    letI := h.rclike
    letI := NormedSpace.restrictScalars ℝ 𝕜 E
    Convex ℝ s := by
  let := h.rclike
  let := NormedSpace.restrictScalars ℝ 𝕜 E
  simp only [Convex, StarConvex] at hs ⊢
  intro u hu v hv a b ha hb hab
  convert! hs hu hv ha hb hab using 2
  · rw [← @algebraMap_smul (R := ℝ) (A := 𝕜), ← @algebraMap_smul (R := ℝ) (A := 𝕜)]
  · rw [← @algebraMap_smul (R := ℝ) (A := 𝕜), ← @algebraMap_smul (R := ℝ) (A := 𝕜)]

/-- Construct a model with corners over `ℝ` from a continuous partial equiv with convex range. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variantb75d2a0a945883dddf9c791a81249156400b3bbd2b86234dfcf49fba7958a0ff.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variantb75d2a0a945883dddf9c791a81249156400b3bbd2b86234dfcf49fba7958a0ff.lean#L314).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f0cb153a5bdcbc6cea6e97ac3f6447d88c871eee` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
