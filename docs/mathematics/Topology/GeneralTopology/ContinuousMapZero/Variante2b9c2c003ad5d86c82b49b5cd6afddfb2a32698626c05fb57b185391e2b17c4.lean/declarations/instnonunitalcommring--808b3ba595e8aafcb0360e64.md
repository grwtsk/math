# instNonUnitalCommRing

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:63425b0a14129c06f16462f1243b1153b0c4477bfbf8c2eb546d46a23264f01a",
  "kind": "instance",
  "lexical_name": "instNonUnitalCommRing",
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
  "slug": "instnonunitalcommring--808b3ba595e8aafcb0360e64",
  "source": {
    "blob": "98808829c9cf37d45559bc0acaf2079c9a43c30f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 276,
    "line": 272,
    "path": "GRWTSK/Topology/GeneralTopology/ContinuousMapZero/Variante2b9c2c003ad5d86c82b49b5cd6afddfb2a32698626c05fb57b185391e2b17c4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:808b3ba595e8aafcb0360e64471434d63af8c7dc7dd0f7251a58145307bac8fc",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ContinuousMapZero/Variante2b9c2c003ad5d86c82b49b5cd6afddfb2a32698626c05fb57b185391e2b17c4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:63425b0a14129c06f16462f1243b1153b0c4477bfbf8c2eb546d46a23264f01a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 272–276.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance instNonUnitalCommRing : NonUnitalCommRing C(X, R)₀ :=
  toContinuousMap_injective.nonUnitalCommRing _ rfl
  (fun _ _ ↦ rfl) (fun _ _ ↦ rfl) (fun _ ↦ rfl) (fun _ _ ↦ rfl) (fun _ _ ↦ rfl) (fun _ _ ↦ rfl)

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ContinuousMapZero/Variante2b9c2c003ad5d86c82b49b5cd6afddfb2a32698626c05fb57b185391e2b17c4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ContinuousMapZero/Variante2b9c2c003ad5d86c82b49b5cd6afddfb2a32698626c05fb57b185391e2b17c4.lean#L272).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `98808829c9cf37d45559bc0acaf2079c9a43c30f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
