# zeroCountMain

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:bbcd27f1ebd6f58e8b6e99b1e7b448f4962271afce8b0ba123259c904217f567",
  "kind": "def",
  "lexical_name": "zeroCountMain",
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
  "slug": "zerocountmain--28a8c7d3e59e59945c26cb42",
  "source": {
    "blob": "713a2b0119e58df42625a3ab77bd4b0ded863b06",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 37,
    "line": 34,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/FiveModeZeroTailInputs/Variantd78685544e84047f80ac63cadf06d4f8d88084db73a1f4b405266db3e4eecade.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:28a8c7d3e59e59945c26cb42e67fdd9806d796015b757571afdaf522b9be1f43",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/FiveModeZeroTailInputs/Variantd78685544e84047f80ac63cadf06d4f8d88084db73a1f4b405266db3e4eecade.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:bbcd27f1ebd6f58e8b6e99b1e7b448f4962271afce8b0ba123259c904217f567`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 34–37.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def zeroCountMain (t : ℝ) : ℝ :=
  t / (2 * Real.pi) * Real.log (t / (2 * Real.pi * Real.exp 1))

/-- Literal corrected v2 second branch, with exact terminating rationals. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/FiveModeZeroTailInputs/Variantd78685544e84047f80ac63cadf06d4f8d88084db73a1f4b405266db3e4eecade.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/FiveModeZeroTailInputs/Variantd78685544e84047f80ac63cadf06d4f8d88084db73a1f4b405266db3e4eecade.lean#L34).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `713a2b0119e58df42625a3ab77bd4b0ded863b06` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
