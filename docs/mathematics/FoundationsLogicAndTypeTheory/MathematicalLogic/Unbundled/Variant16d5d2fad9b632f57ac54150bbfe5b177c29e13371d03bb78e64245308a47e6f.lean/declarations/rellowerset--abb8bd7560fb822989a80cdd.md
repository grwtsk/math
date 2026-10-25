# RelLowerSet

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b6bef5aed7737ef147b3f7d9bc5fbb322889529c2a112e410b0465fb9541f4c1",
  "kind": "structure",
  "lexical_name": "RelLowerSet",
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
  "slug": "rellowerset--abb8bd7560fb822989a80cdd",
  "source": {
    "blob": "8c7dabb7ec5e4c810a8e50279b6b75da969aef52",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 336,
    "line": 325,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Unbundled/Variant16d5d2fad9b632f57ac54150bbfe5b177c29e13371d03bb78e64245308a47e6f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:abb8bd7560fb822989a80cddfb9c4cc40766432aea6a8ca8d56ae203dc33c570",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Unbundled/Variant16d5d2fad9b632f57ac54150bbfe5b177c29e13371d03bb78e64245308a47e6f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b6bef5aed7737ef147b3f7d9bc5fbb322889529c2a112e410b0465fb9541f4c1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 325–336.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure RelLowerSet {α : Type*} [LE α] (P : α → Prop) where
  /-- The carrier of a `RelLowerSet`. -/
  carrier : Set α
  /-- The carrier of a `RelLowerSet` is a lower set relative to `P`.

  Do NOT use directly. Please use `RelLowerSet.isRelLowerSet` instead. -/
  isRelLowerSet' : IsRelLowerSet carrier P

extend_docs RelLowerSet before "The type of lower sets of an order relative to `P`."

variable {α β : Type*} {r : α → α → Prop} {s : β → β → Prop}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Unbundled/Variant16d5d2fad9b632f57ac54150bbfe5b177c29e13371d03bb78e64245308a47e6f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Unbundled/Variant16d5d2fad9b632f57ac54150bbfe5b177c29e13371d03bb78e64245308a47e6f.lean#L325).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8c7dabb7ec5e4c810a8e50279b6b75da969aef52` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
