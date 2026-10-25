# MonoHierarchy

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0b5b0a4bb6ec90b3f38fcc7642a54384fdd622d7d16e5ae115b251f6fb7a50dc",
  "kind": "structure",
  "lexical_name": "MonoHierarchy",
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
  "slug": "monohierarchy--bbd76d7770ad6ee0fd567034",
  "source": {
    "blob": "f3ffb25b3404c4c2cc7d301cfa2360e03c4bdcad",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 23,
    "line": 10,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AAe34367e791bf782/Variant9093830e981d15b01b920c1ebe10d79792f0e882114942d10eb1a72683d80c99.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:bbd76d7770ad6ee0fd567034429151ff0f9e1a64a95d71414c9fe2e06e037b39",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AAe34367e791bf782/Variant9093830e981d15b01b920c1ebe10d79792f0e882114942d10eb1a72683d80c99.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0b5b0a4bb6ec90b3f38fcc7642a54384fdd622d7d16e5ae115b251f6fb7a50dc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 10–23.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure MonoHierarchy (Element : Type u) where
  root : Element
  parent : Element → Option Element
  siblingBefore : Element → Element → Bool
  crossingResolution : Element → Element → Bool
  contractionRepresentative : Element → Option Element

namespace MonoHierarchy

variable {Element : Type u} {Other : Type v}

end MonoHierarchy

end Mathematics.Projection
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AAe34367e791bf782/Variant9093830e981d15b01b920c1ebe10d79792f0e882114942d10eb1a72683d80c99.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AAe34367e791bf782/Variant9093830e981d15b01b920c1ebe10d79792f0e882114942d10eb1a72683d80c99.lean#L10).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f3ffb25b3404c4c2cc7d301cfa2360e03c4bdcad` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
