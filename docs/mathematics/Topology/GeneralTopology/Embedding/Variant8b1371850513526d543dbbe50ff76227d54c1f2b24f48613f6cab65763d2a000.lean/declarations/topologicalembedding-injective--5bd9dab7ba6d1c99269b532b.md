# TopologicalEmbedding.injective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e1b912a94eff37c06968a93b3fe0c9c04c983dc1",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 60,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/8b/8b1371850513526d543dbbe50ff76227d54c1f2b24f48613f6cab65763d2a000.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4244c390-074d-ef40-c376-a1a5b4020ece",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:4a98ea6a-a6c2-2519-b8ee-43040f4283d9",
  "kind": "theorem",
  "lexical_name": "TopologicalEmbedding.injective",
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
  "slug": "topologicalembedding-injective--5bd9dab7ba6d1c99269b532b",
  "source": {
    "blob": "e1b912a94eff37c06968a93b3fe0c9c04c983dc1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 77,
    "line": 60,
    "path": "GRWTSK/Topology/GeneralTopology/Embedding/Variant8b1371850513526d543dbbe50ff76227d54c1f2b24f48613f6cab65763d2a000.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5bd9dab7ba6d1c99269b532b46ea671bd5b81d5357ddbdac933e18868abc22a1",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Embedding/Variant8b1371850513526d543dbbe50ff76227d54c1f2b24f48613f6cab65763d2a000.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4a98ea6a-a6c2-2519-b8ee-43040f4283d9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 60–77.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem TopologicalEmbedding.injective
    {X : Type u} {Y : Type v}
    {TX : TopologicalSpaceLike X}
    {TY : TopologicalSpaceLike Y}
    (E : TopologicalEmbedding X Y TX TY) : Function.Injective E.toFun := by
  intro x y hxy
  have himage : E.imageHomeomorphism.toFun x =
      E.imageHomeomorphism.toFun y := by
    apply Subtype.ext
    calc
      (E.imageHomeomorphism.toFun x).val = E.toFun x :=
        E.imageHomeomorphism_toFun x
      _ = E.toFun y := hxy
      _ = (E.imageHomeomorphism.toFun y).val :=
        (E.imageHomeomorphism_toFun y).symm
  exact E.imageHomeomorphism.injective himage

/-- Ambient continuity follows by composing with the continuous image inclusion. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Embedding/Variant8b1371850513526d543dbbe50ff76227d54c1f2b24f48613f6cab65763d2a000.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Embedding/Variant8b1371850513526d543dbbe50ff76227d54c1f2b24f48613f6cab65763d2a000.lean#L60).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e1b912a94eff37c06968a93b3fe0c9c04c983dc1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
