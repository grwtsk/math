# classifySurgeryCell

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8628cc6124c4b586f48f2fffc58c45bd8cad9353c4be31ed07e22062328b16f3",
  "kind": "def",
  "lexical_name": "classifySurgeryCell",
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
  "slug": "classifysurgerycell--2a4a4bfa790cd4d012d8a6f8",
  "source": {
    "blob": "fc4a9a1ad9d490a58fb0fdad69cc5442db044a99",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 49,
    "line": 43,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PerelmanBitMatrixSurgerySheaf/Variant8d6e1b18367f5789e0d6b32d2784e78bee38d17ef4531ef810e37356e9c5f353.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2a4a4bfa790cd4d012d8a6f8f4c715a500c2b3b6ac5f9756036cd453e8cec85d",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PerelmanBitMatrixSurgerySheaf/Variant8d6e1b18367f5789e0d6b32d2784e78bee38d17ef4531ef810e37356e9c5f353.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8628cc6124c4b586f48f2fffc58c45bd8cad9353c4be31ed07e22062328b16f3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 43–49.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def classifySurgeryCell :
    RankIdentityBucket → SurgerySheafClass
  | .zero => .collapseResidue
  | .identity => .locallySmoothWitness
  | .rankOneSingular => .neckSurgeryCandidate
  | .nonIdentityInvertible => .locallySmoothWitness

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PerelmanBitMatrixSurgerySheaf/Variant8d6e1b18367f5789e0d6b32d2784e78bee38d17ef4531ef810e37356e9c5f353.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PerelmanBitMatrixSurgerySheaf/Variant8d6e1b18367f5789e0d6b32d2784e78bee38d17ef4531ef810e37356e9c5f353.lean#L43).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fc4a9a1ad9d490a58fb0fdad69cc5442db044a99` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
