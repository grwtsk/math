# extremallyDisconnected_pullback

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:33087969-c63e-9891-78d9-10a2fedca3e0",
  "kind": "lemma",
  "lexical_name": "extremallyDisconnected_pullback",
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
  "slug": "extremallydisconnected-pullback--12f3b5ee2512ab17020de747",
  "source": {
    "blob": "7d1c465cf1145916d4d1e38cdad57c527c569b30",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 54,
    "line": 46,
    "path": "GRWTSK/Topology/GeneralTopology/Limits/Variant08c5553692a1a0b85d41bd69f0ee0a897ccc2b911ead25f1ffd6211fe6459baf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:12f3b5ee2512ab17020de747c2b303ae637c99773cc25717a9a2a59ca019bde9",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Limits/Variant08c5553692a1a0b85d41bd69f0ee0a897ccc2b911ead25f1ffd6211fe6459baf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:33087969-c63e-9891-78d9-10a2fedca3e0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 46–54.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma extremallyDisconnected_pullback : ExtremallyDisconnected {xy : X × Y | f xy.1 = i xy.2} :=
  have := extremallyDisconnected_preimage i hi
  let e := (TopCat.pullbackHomeoPreimage i i.hom.2 f hi.isEmbedding).symm
  let e' : {xy : X × Y | f xy.1 = i xy.2} ≃ₜ {xy : Y × X | i xy.1 = f xy.2} := by
    exact TopCat.homeoOfIso
      ((TopCat.pullbackIsoProdSubtype f i).symm ≪≫ pullbackSymmetry _ _ ≪≫
        (TopCat.pullbackIsoProdSubtype i f))
  extremallyDisconnected_of_homeo (e.trans e'.symm)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Limits/Variant08c5553692a1a0b85d41bd69f0ee0a897ccc2b911ead25f1ffd6211fe6459baf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Limits/Variant08c5553692a1a0b85d41bd69f0ee0a897ccc2b911ead25f1ffd6211fe6459baf.lean#L46).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7d1c465cf1145916d4d1e38cdad57c527c569b30` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
