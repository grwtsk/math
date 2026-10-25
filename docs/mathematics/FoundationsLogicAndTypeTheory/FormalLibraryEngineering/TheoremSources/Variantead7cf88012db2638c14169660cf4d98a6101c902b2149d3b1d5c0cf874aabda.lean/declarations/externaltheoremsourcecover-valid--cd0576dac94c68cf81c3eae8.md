# ExternalTheoremSourceCover.Valid

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d13b30c31fe694bfebaa61f087cc49daaab38a51deb1b5c6c4ef40f0cd10558c",
  "kind": "def",
  "lexical_name": "ExternalTheoremSourceCover.Valid",
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
  "slug": "externaltheoremsourcecover-valid--cd0576dac94c68cf81c3eae8",
  "source": {
    "blob": "4bf542b4ff63281f9a6a7713184a914491db8727",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 181,
    "line": 170,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TheoremSources/Variantead7cf88012db2638c14169660cf4d98a6101c902b2149d3b1d5c0cf874aabda.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:cd0576dac94c68cf81c3eae86b4e97eef3c851fc21904e4b31dc04990305c051",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TheoremSources/Variantead7cf88012db2638c14169660cf4d98a6101c902b2149d3b1d5c0cf874aabda.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d13b30c31fe694bfebaa61f087cc49daaab38a51deb1b5c6c4ef40f0cd10558c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 170–181.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def ExternalTheoremSourceCover.Valid
    (cover : ExternalTheoremSourceCover) : Prop :=
  cover.riemann1859.Valid /\
  cover.zhang2014.Valid /\
  cover.polymath8a.Valid /\
  cover.maynard2015.Valid /\
  cover.polymath8b.Valid /\
  cover.dvir2009.Valid /\
  cover.fefferman2000.Valid /\
  cover.dusart2010.Valid /\
  cover.polymath2019.Valid

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TheoremSources/Variantead7cf88012db2638c14169660cf4d98a6101c902b2149d3b1d5c0cf874aabda.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TheoremSources/Variantead7cf88012db2638c14169660cf4d98a6101c902b2149d3b1d5c0cf874aabda.lean#L170).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4bf542b4ff63281f9a6a7713184a914491db8727` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
