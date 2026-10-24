# toMatrixTheoremFrame

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7d21133f0a23b0c95605351ac5d298c1103fcda935dea7ce50e9d4459b370615",
  "kind": "def",
  "lexical_name": "toMatrixTheoremFrame",
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
  "slug": "tomatrixtheoremframe--a92fe227a148ccee06450a65",
  "source": {
    "blob": "72b79af351919a94ca3ecee99d3c6b57a56ef438",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 319,
    "line": 304,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BinaryMatrixStream/Variant471c52b83305ee1641fed73c59d887e14c38998e4abb91dc150fcb2e092a8f86.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a92fe227a148ccee06450a659def4eb40961648462f611d0661ecd72f8cd5de9",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BinaryMatrixStream/Variant471c52b83305ee1641fed73c59d887e14c38998e4abb91dc150fcb2e092a8f86.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7d21133f0a23b0c95605351ac5d298c1103fcda935dea7ce50e9d4459b370615`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 304–319.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def toMatrixTheoremFrame (F : MatrixProofFrame) : MatrixTheoremFrame where
  theoremId := F.theoremId
  statementFrame := F.statementFrame
  hypothesisFrame := F.hypothesisFrame
  conclusionFrame := F.conclusionFrame
  sizeFrame := F.sizeFrame
  determinantFrame := F.determinantFrame

end MatrixProofFrame

/--
A theorem proof is a temporal `BinaryMatrixStream`.

The stream is the proof trace. Its first frame is the theorem statement; its
last frame is the conclusion, with any padding or budget frames included.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BinaryMatrixStream/Variant471c52b83305ee1641fed73c59d887e14c38998e4abb91dc150fcb2e092a8f86.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BinaryMatrixStream/Variant471c52b83305ee1641fed73c59d887e14c38998e4abb91dc150fcb2e092a8f86.lean#L304).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `72b79af351919a94ca3ecee99d3c6b57a56ef438` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
