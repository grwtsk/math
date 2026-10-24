# BombieriScaledCanonicalTentRealization

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:08a421ed410d70220df30760a9d87aa3131148c0680d269d35788c9aede281f0",
  "kind": "structure",
  "lexical_name": "BombieriScaledCanonicalTentRealization",
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
  "slug": "bombieriscaledcanonicaltentrealization--943852617338c07835931709",
  "source": {
    "blob": "6e995ace41d3a4074bfb63ddde0eda2d7df4d779",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 188,
    "line": 175,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/CanonicalSquareTentBombieriMomentObstruction.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:943852617338c07835931709e7b22442551a9ea33d44ab98f90a28ba967e5de5",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/CanonicalSquareTentBombieriMomentObstruction.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:08a421ed410d70220df30760a9d87aa3131148c0680d269d35788c9aede281f0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 175–188.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure BombieriScaledCanonicalTentRealization (M : ℕ) where
  model : GuinandWeilCompactSupportModel M (ℝ → ℂ)
  all_vectors_zero_moments :
    ∀ f : model.space.Vector, BombieriZeroMomentConditions f.1
  basisScale : Fin (M + 1) → ℂ
  basisScale_ne_zero : ∀ i, basisScale i ≠ 0
  basis_function_eq : ∀ i : Fin (M + 1),
    (model.realization (basisCombination i)).1 =
      fun x => basisScale i * canonicalTentComplex i.1 x
  sourcePublication_eq : model.sourcePublication = bombieriSourcePublication
  sourceTheorem_eq : model.sourceTheorem = bombieriSourceStatement

/-- No direct realization by nonzero scalar multiples of the actual canonical tents
can inhabit Bombieri's zero-moment class. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/CanonicalSquareTentBombieriMomentObstruction.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/CanonicalSquareTentBombieriMomentObstruction.lean#L175).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6e995ace41d3a4074bfb63ddde0eda2d7df4d779` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
