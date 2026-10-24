# toMap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:27c9c339de446f33a385f13de59f4b43b9ec08ee5450ca9673725b38c4ab7670",
  "kind": "abbrev",
  "lexical_name": "toMap",
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
  "slug": "tomap--d47dad54e90902fbeaa3b035",
  "source": {
    "blob": "b6ad4d45fb75bf6e2fb813747fdaf3b4f3d74e39",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 392,
    "line": 390,
    "path": "GRWTSK/Algebra/GroupTheory/Basic/Variantff34d48a26daf5afbb41a63d4c9d105bfa38cdd636611e0cffad98779380778c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d47dad54e90902fbeaa3b035feecb21bcd6a48f66d30e0e577f72c814e26fe49",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Basic/Variantff34d48a26daf5afbb41a63d4c9d105bfa38cdd636611e0cffad98779380778c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `abbrev` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:27c9c339de446f33a385f13de59f4b43b9ec08ee5450ca9673725b38c4ab7670`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 390–392.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
abbrev toMap (f : LocalizationMap S N) := f.toMonoidHom

@[to_additive (attr := ext)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Basic/Variantff34d48a26daf5afbb41a63d4c9d105bfa38cdd636611e0cffad98779380778c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Basic/Variantff34d48a26daf5afbb41a63d4c9d105bfa38cdd636611e0cffad98779380778c.lean#L390).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b6ad4d45fb75bf6e2fb813747fdaf3b4f3d74e39` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
