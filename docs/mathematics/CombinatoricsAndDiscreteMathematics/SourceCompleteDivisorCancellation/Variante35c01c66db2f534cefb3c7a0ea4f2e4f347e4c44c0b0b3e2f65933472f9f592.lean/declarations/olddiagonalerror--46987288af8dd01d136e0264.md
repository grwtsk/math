# oldDiagonalError

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:86c35ee3073c6b43f0307325194818bb4382d70ac2ba3d3867996b82b81217b7",
  "kind": "def",
  "lexical_name": "oldDiagonalError",
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
  "slug": "olddiagonalerror--46987288af8dd01d136e0264",
  "source": {
    "blob": "d7872da7c7ecd325307ce0a254814869e1a9dcf6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 143,
    "line": 139,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/SourceCompleteDivisorCancellation/Variante35c01c66db2f534cefb3c7a0ea4f2e4f347e4c44c0b0b3e2f65933472f9f592.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:46987288af8dd01d136e0264fb864a23f2c99842de7c3bece768f25429da2ae6",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/SourceCompleteDivisorCancellation/Variante35c01c66db2f534cefb3c7a0ea4f2e4f347e4c44c0b0b3e2f65933472f9f592.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:86c35ee3073c6b43f0307325194818bb4382d70ac2ba3d3867996b82b81217b7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 139–143.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def oldDiagonalError (A : ℝ) : ℝ :=
  typeTwoDiagonal A + SourceDiagonalMainTerm.diagonalMainCoefficient A * A -
    Real.log (vaughanCutoff A : ℝ)

/-- All retained independent main rows and the actual signed remainder form ONE block. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/SourceCompleteDivisorCancellation/Variante35c01c66db2f534cefb3c7a0ea4f2e4f347e4c44c0b0b3e2f65933472f9f592.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/SourceCompleteDivisorCancellation/Variante35c01c66db2f534cefb3c7a0ea4f2e4f347e4c44c0b0b3e2f65933472f9f592.lean#L139).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d7872da7c7ecd325307ce0a254814869e1a9dcf6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
