# nhdsNE_coe_neBot

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e47c1a4b55f65f171e464515aff03b710ec0ea91ce7179b75035d9f8c639293f",
  "kind": "instance",
  "lexical_name": "nhdsNE_coe_neBot",
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
  "slug": "nhdsne-coe-nebot--d0d33198468f4d1df18452d4",
  "source": {
    "blob": "3b06bda08122ae49503febfe80755ec5b014be69",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 307,
    "line": 305,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variantedec62cc784e0344b8fd4912adc3790668f6f41d28370c1347105ad6be26c46e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d0d33198468f4d1df18452d441356eef5ee824c1f3cffa6fe923b52de9c99439",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variantedec62cc784e0344b8fd4912adc3790668f6f41d28370c1347105ad6be26c46e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e47c1a4b55f65f171e464515aff03b710ec0ea91ce7179b75035d9f8c639293f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 305–307.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance nhdsNE_coe_neBot (x : X) [h : NeBot (𝓝[≠] x)] : NeBot (𝓝[≠] (x : OnePoint X)) := by
  simpa [nhdsWithin_coe, preimage, coe_eq_coe] using! h.map some

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variantedec62cc784e0344b8fd4912adc3790668f6f41d28370c1347105ad6be26c46e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variantedec62cc784e0344b8fd4912adc3790668f6f41d28370c1347105ad6be26c46e.lean#L305).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3b06bda08122ae49503febfe80755ec5b014be69` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
