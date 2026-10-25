# PreservesBitMatrixSurgerySheaf

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5dcd58c4a9ecab0b19b11e5af438a093a52df7375f55f1094962292540f7f31c",
  "kind": "structure",
  "lexical_name": "PreservesBitMatrixSurgerySheaf",
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
  "slug": "preservesbitmatrixsurgerysheaf--4827955e96018894e5fe2fb2",
  "source": {
    "blob": "fc4a9a1ad9d490a58fb0fdad69cc5442db044a99",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 153,
    "line": 139,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PerelmanBitMatrixSurgerySheaf/Variant8d6e1b18367f5789e0d6b32d2784e78bee38d17ef4531ef810e37356e9c5f353.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4827955e96018894e5fe2fb2bf277bc4b23b245b045deaf9d3775bf2d990c225",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PerelmanBitMatrixSurgerySheaf/Variant8d6e1b18367f5789e0d6b32d2784e78bee38d17ef4531ef810e37356e9c5f353.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5dcd58c4a9ecab0b19b11e5af438a093a52df7375f55f1094962292540f7f31c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 139–153.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure PreservesBitMatrixSurgerySheaf where
  source : BitMatrixSurgeryCell
  target : BitMatrixSurgeryCell
  surface : PerelmanBitMatrixSurgerySheafSurface
  preservesMatrixPhase :
    source.phase = target.phase
  preservesBucket :
    source.bucket = target.bucket
  preservesResidueBit :
    source.residueBit = target.residueBit
  perelmanResidueRetained :
    surface.externalResidue.closed = false
  noTheoremClaim :
    surface.theoremClaim = false

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PerelmanBitMatrixSurgerySheaf/Variant8d6e1b18367f5789e0d6b32d2784e78bee38d17ef4531ef810e37356e9c5f353.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PerelmanBitMatrixSurgerySheaf/Variant8d6e1b18367f5789e0d6b32d2784e78bee38d17ef4531ef810e37356e9c5f353.lean#L139).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fc4a9a1ad9d490a58fb0fdad69cc5442db044a99` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
