# isDecidableVariant

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:24e13ad6599b24dd5f4aa3cf18e4e33fa87b1661679d3c2f63b1b322f366f03d",
  "kind": "def",
  "lexical_name": "isDecidableVariant",
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
  "slug": "isdecidablevariant--b99e177133376819902e1c91",
  "source": {
    "blob": "a241d4d25dde59108f682f0bcadbfd1f3049c513",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 276,
    "line": 267,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UnusedDecidableInType/Variante92bccf9afe813396d426aaac7102e4d9fe397eee8c0474f12cc517ea9ef051a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b99e177133376819902e1c91b7c5a001c924e9938555b04fdedb1fb1a745481b",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UnusedDecidableInType/Variante92bccf9afe813396d426aaac7102e4d9fe397eee8c0474f12cc517ea9ef051a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:24e13ad6599b24dd5f4aa3cf18e4e33fa87b1661679d3c2f63b1b322f366f03d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 267–276.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def isDecidableVariant (type : Expr) : Bool :=
  type.isAppOrForallOfConstP fun n =>
    n == ``Decidable     ||
    n == ``DecidablePred ||
    n == ``DecidableRel  ||
    n == ``DecidableEq   ||
    n == ``DecidableLE   ||
    n == ``DecidableLT

@[inherit_doc linter.extra.unusedDecidableInType]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UnusedDecidableInType/Variante92bccf9afe813396d426aaac7102e4d9fe397eee8c0474f12cc517ea9ef051a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UnusedDecidableInType/Variante92bccf9afe813396d426aaac7102e4d9fe397eee8c0474f12cc517ea9ef051a.lean#L267).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a241d4d25dde59108f682f0bcadbfd1f3049c513` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
