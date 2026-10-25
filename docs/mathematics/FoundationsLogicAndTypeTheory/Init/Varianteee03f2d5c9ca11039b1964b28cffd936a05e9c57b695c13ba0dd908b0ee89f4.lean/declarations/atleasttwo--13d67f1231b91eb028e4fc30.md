# AtLeastTwo

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e99802d1d7635b0953da83beef548222a4834ce30c39fb8bbce9a02b7e3553de",
  "kind": "class",
  "lexical_name": "AtLeastTwo",
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
  "slug": "atleasttwo--13d67f1231b91eb028e4fc30",
  "source": {
    "blob": "15d2ffea4afe33313548a7f6045a38e2e1bb9644",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 427,
    "line": 423,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/Init/Varianteee03f2d5c9ca11039b1964b28cffd936a05e9c57b695c13ba0dd908b0ee89f4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:13d67f1231b91eb028e4fc30379d7e2d13b56090ee96adcb5f2adcf07138b00b",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/Init/Varianteee03f2d5c9ca11039b1964b28cffd936a05e9c57b695c13ba0dd908b0ee89f4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `class` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e99802d1d7635b0953da83beef548222a4834ce30c39fb8bbce9a02b7e3553de`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 423–427.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
class AtLeastTwo (n : ℕ) : Prop where
  prop : 2 ≤ n

-- Note: the following should stay axiom-free, since it is used whenever one writes the symbol
-- `2` in an abstract additive monoid...
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/FoundationsLogicAndTypeTheory/Init/Varianteee03f2d5c9ca11039b1964b28cffd936a05e9c57b695c13ba0dd908b0ee89f4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/Init/Varianteee03f2d5c9ca11039b1964b28cffd936a05e9c57b695c13ba0dd908b0ee89f4.lean#L423).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `15d2ffea4afe33313548a7f6045a38e2e1bb9644` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
