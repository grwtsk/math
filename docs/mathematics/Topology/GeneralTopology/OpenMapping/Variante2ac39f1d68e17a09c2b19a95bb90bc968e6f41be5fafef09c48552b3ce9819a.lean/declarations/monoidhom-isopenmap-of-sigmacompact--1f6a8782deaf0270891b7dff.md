# MonoidHom.isOpenMap_of_sigmaCompact

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ff43812d-3912-2c66-ac57-83b4df4065e7",
  "kind": "theorem",
  "lexical_name": "MonoidHom.isOpenMap_of_sigmaCompact",
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
  "slug": "monoidhom-isopenmap-of-sigmacompact--1f6a8782deaf0270891b7dff",
  "source": {
    "blob": "f5d8f77dfd31be7ac714d228931b64bd564c49d4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 132,
    "line": 123,
    "path": "GRWTSK/Topology/GeneralTopology/OpenMapping/Variante2ac39f1d68e17a09c2b19a95bb90bc968e6f41be5fafef09c48552b3ce9819a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1f6a8782deaf0270891b7dffc52bb9603b72074b499dc20e5a0286175fcd9e21",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/OpenMapping/Variante2ac39f1d68e17a09c2b19a95bb90bc968e6f41be5fafef09c48552b3ce9819a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ff43812d-3912-2c66-ac57-83b4df4065e7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 123–132.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem MonoidHom.isOpenMap_of_sigmaCompact
    {H : Type*} [Group H] [TopologicalSpace H] [BaireSpace H] [T2Space H] [ContinuousMul H]
    (f : G →* H) (hf : Function.Surjective f) (h'f : Continuous f) :
    IsOpenMap f := by
  let A : MulAction G H := MulAction.compHom _ f
  have : ContinuousSMul G H := continuousSMul_compHom h'f
  have : IsPretransitive G H := isPretransitive_compHom hf
  have : f = (fun (g : G) ↦ g • (1 : H)) := by simp [A, MulAction.compHom_smul_def]
  rw [this]
  exact isOpenMap_smul_of_sigmaCompact _
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/OpenMapping/Variante2ac39f1d68e17a09c2b19a95bb90bc968e6f41be5fafef09c48552b3ce9819a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/OpenMapping/Variante2ac39f1d68e17a09c2b19a95bb90bc968e6f41be5fafef09c48552b3ce9819a.lean#L123).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f5d8f77dfd31be7ac714d228931b64bd564c49d4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
