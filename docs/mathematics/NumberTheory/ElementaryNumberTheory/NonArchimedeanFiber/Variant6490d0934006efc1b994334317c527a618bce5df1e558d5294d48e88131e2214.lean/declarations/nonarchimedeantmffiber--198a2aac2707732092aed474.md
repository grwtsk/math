# NonArchimedeanTMFFiber

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:842c4e046d8285cf83382934b8da125091ed2fd8a29e575784e16c99439a7dfb",
  "kind": "structure",
  "lexical_name": "NonArchimedeanTMFFiber",
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
  "slug": "nonarchimedeantmffiber--198a2aac2707732092aed474",
  "source": {
    "blob": "1a66fce3f5a3b6edb7aea8127abef7e3a1aae523",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 44,
    "line": 35,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/NonArchimedeanFiber/Variant6490d0934006efc1b994334317c527a618bce5df1e558d5294d48e88131e2214.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:198a2aac2707732092aed474bb5a2b71a20ec68c4a1edaebc621f9c30885bfe5",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/NonArchimedeanFiber/Variant6490d0934006efc1b994334317c527a618bce5df1e558d5294d48e88131e2214.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:842c4e046d8285cf83382934b8da125091ed2fd8a29e575784e16c99439a7dfb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 35–44.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure NonArchimedeanTMFFiber where
  place : Place
  finitePrime : IsFinitePrimePlace place
  tmfLocalization? : Option BadPrimeTMFLocalization
  moravaLocal? : Option MoravaLocalContract
  spectrumObject : SpectrumObject
  localTorsionData : Prop
  localModularCompatibility : Prop
  localModularCompatibility_certified : localModularCompatibility

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/NonArchimedeanFiber/Variant6490d0934006efc1b994334317c527a618bce5df1e558d5294d48e88131e2214.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/NonArchimedeanFiber/Variant6490d0934006efc1b994334317c527a618bce5df1e558d5294d48e88131e2214.lean#L35).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1a66fce3f5a3b6edb7aea8127abef7e3a1aae523` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
