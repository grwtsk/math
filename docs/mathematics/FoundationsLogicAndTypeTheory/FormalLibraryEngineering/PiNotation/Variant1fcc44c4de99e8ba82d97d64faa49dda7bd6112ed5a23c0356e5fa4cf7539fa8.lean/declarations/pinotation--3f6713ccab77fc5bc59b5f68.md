# piNotation

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2a73bb4a3a7c12e54992a32388f8e88b61013b6895eb7181be8c7252ef808652",
  "kind": "def",
  "lexical_name": "piNotation",
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
  "slug": "pinotation--3f6713ccab77fc5bc59b5f68",
  "source": {
    "blob": "18354afc9d140143dfd5b5be335b13c4c3b153df",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 32,
    "line": 25,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PiNotation/Variant1fcc44c4de99e8ba82d97d64faa49dda7bd6112ed5a23c0356e5fa4cf7539fa8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3f6713ccab77fc5bc59b5f681e34023541f8cd646348c5c72fe725bcaff00413",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PiNotation/Variant1fcc44c4de99e8ba82d97d64faa49dda7bd6112ed5a23c0356e5fa4cf7539fa8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2a73bb4a3a7c12e54992a32388f8e88b61013b6895eb7181be8c7252ef808652`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 25–32.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def piNotation := leading_parser:leadPrec
  unicodeSymbol "Π" "Pi" >>
  many1 (ppSpace >> (binderIdent <|> bracketedBinder)) >>
  optType >> ", " >> termParser

/-- Dependent function type (a "pi type"). The notation `Π x ∈ s, β x` is
short for `Π x, x ∈ s → β x`. -/
-- A copy of forall notation from `Std.Util.ExtendedBinder` for pi notation
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PiNotation/Variant1fcc44c4de99e8ba82d97d64faa49dda7bd6112ed5a23c0356e5fa4cf7539fa8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PiNotation/Variant1fcc44c4de99e8ba82d97d64faa49dda7bd6112ed5a23c0356e5fa4cf7539fa8.lean#L25).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `18354afc9d140143dfd5b5be335b13c4c3b153df` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
