# nhdsLT_neBot

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:624caefcd8c3bf764ba0cae13db50a9e47e4c721bffe6511fc7f4ba40e96c000",
  "kind": "instance",
  "lexical_name": "nhdsLT_neBot",
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
  "slug": "nhdslt-nebot--8f065cffe56e4816540d1f9b",
  "source": {
    "blob": "38c3e22d1ac41c38fa67e148255859fe54a5c0d4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 208,
    "line": 206,
    "path": "GRWTSK/Topology/GeneralTopology/DenselyOrdered/Variant4d8097e15684fa9ab3858dc5274606b81e2246d471e8fcb27bcd94969da92546.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8f065cffe56e4816540d1f9baa6a0777ce70eeaeb05113c82558d2fdb946b0c4",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/DenselyOrdered/Variant4d8097e15684fa9ab3858dc5274606b81e2246d471e8fcb27bcd94969da92546.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:624caefcd8c3bf764ba0cae13db50a9e47e4c721bffe6511fc7f4ba40e96c000`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 206–208.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance nhdsLT_neBot [NoMinOrder α] (a : α) : NeBot (𝓝[<] a) := nhdsWithin_Iio_neBot (le_refl a)

@[deprecated nhdsLT_neBot (since := "2024-12-22")]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/DenselyOrdered/Variant4d8097e15684fa9ab3858dc5274606b81e2246d471e8fcb27bcd94969da92546.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/DenselyOrdered/Variant4d8097e15684fa9ab3858dc5274606b81e2246d471e8fcb27bcd94969da92546.lean#L206).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `38c3e22d1ac41c38fa67e148255859fe54a5c0d4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
