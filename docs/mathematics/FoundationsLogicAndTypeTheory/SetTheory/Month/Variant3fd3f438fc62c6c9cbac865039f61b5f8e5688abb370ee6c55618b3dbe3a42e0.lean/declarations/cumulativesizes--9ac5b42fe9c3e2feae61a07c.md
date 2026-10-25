# cumulativeSizes

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:136add8050b77d6f4a1ee41fb6d8cd38c496debdfe2ab45f6bd4afce4c176009",
  "kind": "def",
  "lexical_name": "cumulativeSizes",
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
  "slug": "cumulativesizes--9ac5b42fe9c3e2feae61a07c",
  "source": {
    "blob": "a2e6c8609abed808750c405ad305e85289e31aef",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 270,
    "line": 265,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Month/Variant3fd3f438fc62c6c9cbac865039f61b5f8e5688abb370ee6c55618b3dbe3a42e0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9ac5b42fe9c3e2feae61a07c0c9730e36fd5479c418d6e6dbc8f7d0b0ea301c5",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/SetTheory/Month/Variant3fd3f438fc62c6c9cbac865039f61b5f8e5688abb370ee6c55618b3dbe3a42e0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:136add8050b77d6f4a1ee41fb6d8cd38c496debdfe2ab45f6bd4afce4c176009`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 265–270.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def cumulativeSizes : { val : Array Day.Offset // val.size = 12 } :=
  ⟨#[0, 31, 59, 90, 120, 151, 181, 212, 243, 273, 304, 334], by decide⟩

/--
Gets the number of days in a month.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/SetTheory/Month/Variant3fd3f438fc62c6c9cbac865039f61b5f8e5688abb370ee6c55618b3dbe3a42e0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Month/Variant3fd3f438fc62c6c9cbac865039f61b5f8e5688abb370ee6c55618b3dbe3a42e0.lean#L265).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a2e6c8609abed808750c405ad305e85289e31aef` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
