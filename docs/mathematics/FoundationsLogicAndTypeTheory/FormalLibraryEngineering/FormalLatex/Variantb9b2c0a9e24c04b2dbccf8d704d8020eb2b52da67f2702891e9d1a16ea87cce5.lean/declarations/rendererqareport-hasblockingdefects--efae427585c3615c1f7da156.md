# RendererQAReport.hasBlockingDefects

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:533aaff286e0320b87563212c9bb8d54d7e8e548146c9eb8b4bf5f752408cf06",
  "kind": "def",
  "lexical_name": "RendererQAReport.hasBlockingDefects",
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
  "slug": "rendererqareport-hasblockingdefects--efae427585c3615c1f7da156",
  "source": {
    "blob": "a77e149025416167ca399279d00722f3607fcf96",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 71,
    "line": 62,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FormalLatex/Variantb9b2c0a9e24c04b2dbccf8d704d8020eb2b52da67f2702891e9d1a16ea87cce5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:efae427585c3615c1f7da15643680d4af3fe901f8f857bbfabd742ffff342d77",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FormalLatex/Variantb9b2c0a9e24c04b2dbccf8d704d8020eb2b52da67f2702891e9d1a16ea87cce5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:533aaff286e0320b87563212c9bb8d54d7e8e548146c9eb8b4bf5f752408cf06`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 62–71.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def RendererQAReport.hasBlockingDefects
    (R : RendererQAReport) : Prop :=
  R.missingGlyphs ≠ 0 ∨
    R.rawUnicodeFallbacks ≠ 0 ∨
    R.overfullBoxes ≠ 0 ∨
    R.clippedTheoremSignatures ≠ 0 ∨
    R.malformedBinderBlocks ≠ 0 ∨
    R.sourcePdfTextMismatches ≠ 0 ∨
    R.paperModePass = false

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FormalLatex/Variantb9b2c0a9e24c04b2dbccf8d704d8020eb2b52da67f2702891e9d1a16ea87cce5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FormalLatex/Variantb9b2c0a9e24c04b2dbccf8d704d8020eb2b52da67f2702891e9d1a16ea87cce5.lean#L62).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a77e149025416167ca399279d00722f3607fcf96` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
