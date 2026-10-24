# MeasCat

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:28c3209baae81521b4bef8c5774743834139d314da2a6a6a59fef92c7cfff6e8",
  "kind": "structure",
  "lexical_name": "MeasCat",
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
  "slug": "meascat--4b39c1be5f0f8571ea4ea1df",
  "source": {
    "blob": "a4ea74b2c09b9dc04cf7bc01ce2e4f596597fad3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 53,
    "line": 43,
    "path": "GRWTSK/Analysis/MeasureTheory/MeasCat/Variant8abfef6e82aac3a70c89b50dfb420886869df49817b128c30049de5385f96412.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4b39c1be5f0f8571ea4ea1df0d8440e3d721d6c99342c61a8f32f9965e4cd0b1",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/MeasCat/Variant8abfef6e82aac3a70c89b50dfb420886869df49817b128c30049de5385f96412.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:28c3209baae81521b4bef8c5774743834139d314da2a6a6a59fef92c7cfff6e8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 43–53.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure MeasCat : Type (u + 1) where
  /-- Construct a bundled `MeasCat` from the underlying type and the typeclass. -/
  of ::
  /-- The underlying measurable space. -/
  carrier : Type u
  [str : MeasurableSpace carrier]

attribute [instance] MeasCat.str

namespace MeasCat

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/MeasCat/Variant8abfef6e82aac3a70c89b50dfb420886869df49817b128c30049de5385f96412.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/MeasCat/Variant8abfef6e82aac3a70c89b50dfb420886869df49817b128c30049de5385f96412.lean#L43).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a4ea74b2c09b9dc04cf7bc01ce2e4f596597fad3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
