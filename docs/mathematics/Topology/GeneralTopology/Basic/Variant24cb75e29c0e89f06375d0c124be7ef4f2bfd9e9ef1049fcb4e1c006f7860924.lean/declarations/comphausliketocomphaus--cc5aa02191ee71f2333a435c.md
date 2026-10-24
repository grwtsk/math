# compHausLikeToCompHaus

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:992bf3d112a187f067fc1c3eaa99a3f9f73734b5edd6efddb8ebf5976cb80c61",
  "kind": "abbrev",
  "lexical_name": "compHausLikeToCompHaus",
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
  "slug": "comphausliketocomphaus--cc5aa02191ee71f2333a435c",
  "source": {
    "blob": "cd447770f4719f122b9a505735c7166d27100cef",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 231,
    "line": 230,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variant24cb75e29c0e89f06375d0c124be7ef4f2bfd9e9ef1049fcb4e1c006f7860924.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:cc5aa02191ee71f2333a435c26c5efe3cb3c5523a793c889608735bca6f80235",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variant24cb75e29c0e89f06375d0c124be7ef4f2bfd9e9ef1049fcb4e1c006f7860924.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `abbrev` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:992bf3d112a187f067fc1c3eaa99a3f9f73734b5edd6efddb8ebf5976cb80c61`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 230–231.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
abbrev compHausLikeToCompHaus (P : TopCat → Prop) : CompHausLike P ⥤ CompHaus :=
  CompHausLike.toCompHausLike (by simp only [implies_true])
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variant24cb75e29c0e89f06375d0c124be7ef4f2bfd9e9ef1049fcb4e1c006f7860924.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variant24cb75e29c0e89f06375d0c124be7ef4f2bfd9e9ef1049fcb4e1c006f7860924.lean#L230).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cd447770f4719f122b9a505735c7166d27100cef` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
