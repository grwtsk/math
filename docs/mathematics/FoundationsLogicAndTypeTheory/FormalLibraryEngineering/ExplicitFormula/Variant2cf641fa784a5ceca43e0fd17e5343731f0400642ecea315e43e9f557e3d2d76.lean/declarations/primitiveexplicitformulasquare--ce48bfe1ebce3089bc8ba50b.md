# PrimitiveExplicitFormulaSquare

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b97a8bb5ec83d178dae6ff5664e6a1444c5f299de05c41f2f8c00f5787822aa9",
  "kind": "structure",
  "lexical_name": "PrimitiveExplicitFormulaSquare",
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
  "slug": "primitiveexplicitformulasquare--ce48bfe1ebce3089bc8ba50b",
  "source": {
    "blob": "c92d30bafa5ada82dd8e51808c1d0c2f064c2aad",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 141,
    "line": 121,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExplicitFormula/Variant2cf641fa784a5ceca43e0fd17e5343731f0400642ecea315e43e9f557e3d2d76.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ce48bfe1ebce3089bc8ba50b2dd0b8335c8ccd9601c86d1a5de14abf595bb31c",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExplicitFormula/Variant2cf641fa784a5ceca43e0fd17e5343731f0400642ecea315e43e9f557e3d2d76.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b97a8bb5ec83d178dae6ff5664e6a1444c5f299de05c41f2f8c00f5787822aa9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 121–141.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure PrimitiveExplicitFormulaSquare
    {q : ℕ} [NeZero q] (χ : DirichletCharacter ℂ q) where
  smoothedPsi : ℕ → ℂ
  zeroContribution : ℕ → ℂ
  gammaContribution : ℕ → ℂ
  trivialZeroContribution : ℕ → ℂ
  contourError : ℕ → ℂ
  desmoothingError : ℕ → ℂ

  smoothedExplicitFormula :
    ∀ x,
      smoothedPsi x =
        zeroContribution x + gammaContribution x +
          trivialZeroContribution x + contourError x

  desmoothingIdentity :
    ∀ x,
      centeredTwistedPsi χ x = smoothedPsi x + desmoothingError x

/-- One function is bounded by the conductor/modulus critical rate. -/
@[expose]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExplicitFormula/Variant2cf641fa784a5ceca43e0fd17e5343731f0400642ecea315e43e9f557e3d2d76.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExplicitFormula/Variant2cf641fa784a5ceca43e0fd17e5343731f0400642ecea315e43e9f557e3d2d76.lean#L121).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c92d30bafa5ada82dd8e51808c1d0c2f064c2aad` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
