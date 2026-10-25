# PrimitiveExplicitFormulaBounds

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:dad8b1fa89c7f50510464eadc9741295897229bb14401085df6ce453f33204d4",
  "kind": "def",
  "lexical_name": "PrimitiveExplicitFormulaBounds",
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
  "slug": "primitiveexplicitformulabounds--a800bcade2c8f0b56b6849c1",
  "source": {
    "blob": "f015e38ec874784e589a32f7d68433f3504e6e0d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 164,
    "line": 151,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExplicitFormula/Variant4fc7f04fe56234604b9be02dc59d52159ebc1f8dd7a7ceb2bf7958de8bebf3c6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a800bcade2c8f0b56b6849c1f832c542d101c97fce007223db7387e49915b69b",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExplicitFormula/Variant4fc7f04fe56234604b9be02dc59d52159ebc1f8dd7a7ceb2bf7958de8bebf3c6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:dad8b1fa89c7f50510464eadc9741295897229bb14401085df6ce453f33204d4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 151–164.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def PrimitiveExplicitFormulaBounds
    {q : ℕ} [NeZero q] {χ : DirichletCharacter ℂ q}
    (square : PrimitiveExplicitFormulaSquare χ) : Prop :=
  (GRHForPrimitiveCharacter χ →
      IsCenteredCriticalRateBound q square.zeroContribution) ∧
    IsCenteredCriticalRateBound q square.gammaContribution ∧
    IsCenteredCriticalRateBound q square.trivialZeroContribution ∧
    IsCenteredCriticalRateBound q square.contourError ∧
    IsCenteredCriticalRateBound q square.desmoothingError

/-- The exact formula plus its five separately visible estimates derives the
sharp centered twisted-Chebyshev bound. -/

@[surface_novel, surface_published]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExplicitFormula/Variant4fc7f04fe56234604b9be02dc59d52159ebc1f8dd7a7ceb2bf7958de8bebf3c6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExplicitFormula/Variant4fc7f04fe56234604b9be02dc59d52159ebc1f8dd7a7ceb2bf7958de8bebf3c6.lean#L151).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f015e38ec874784e589a32f7d68433f3504e6e0d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
