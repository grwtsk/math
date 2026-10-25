# WellFormed

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:697cd130b0b058a6ec2cb7ae4e319bfb0e1e75df8e1e3871b987dbe27247f182",
  "kind": "inductive",
  "lexical_name": "WellFormed",
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
  "slug": "wellformed--ae7b1fff39b2808684a30c3d",
  "source": {
    "blob": "5bd811926a4cc780b1aa45a3852c81aaff54b3b0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 63,
    "line": 47,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Syntax/Variant65b9cbe73e4fb0bd4b64af31e7cf350693b510fd2d3cfd598e3c7a7d257ea457.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ae7b1fff39b2808684a30c3d860b9d007ef1b456db296d3b96c1b7ffaea450d2",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Syntax/Variant65b9cbe73e4fb0bd4b64af31e7cf350693b510fd2d3cfd598e3c7a7d257ea457.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `inductive` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:697cd130b0b058a6ec2cb7ae4e319bfb0e1e75df8e1e3871b987dbe27247f182`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 47–63.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
inductive WellFormed {α : Type} : RawCompressedString α → Prop
  | nil :
      WellFormed .nil
  | atom :
      ∀ x, WellFormed (.atom x)
  | concat :
      ∀ {left right},
        WellFormed left →
        WellFormed right →
        BoundaryCompatible left right →
        WellFormed (.concat left right)
  | macroPlaceholder :
      ∀ {label parts},
        MacroPlaceholderAdmissible label parts →
        (∀ part, part ∈ parts → WellFormed part) →
        WellFormed (.macroPlaceholder label parts)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Syntax/Variant65b9cbe73e4fb0bd4b64af31e7cf350693b510fd2d3cfd598e3c7a7d257ea457.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Syntax/Variant65b9cbe73e4fb0bd4b64af31e7cf350693b510fd2d3cfd598e3c7a7d257ea457.lean#L47).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5bd811926a4cc780b1aa45a3852c81aaff54b3b0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
