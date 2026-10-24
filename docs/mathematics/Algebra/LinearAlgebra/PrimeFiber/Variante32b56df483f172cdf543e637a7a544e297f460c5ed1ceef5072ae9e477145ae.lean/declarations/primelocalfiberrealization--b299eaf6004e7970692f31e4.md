# PrimeLocalFiberRealization

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c7a3238c31479e10ac42b2da958392a6e814de8993318fe1c4b50f9151ef30e6",
  "kind": "structure",
  "lexical_name": "PrimeLocalFiberRealization",
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
  "slug": "primelocalfiberrealization--b299eaf6004e7970692f31e4",
  "source": {
    "blob": "2e3d2c4612e073053444efa5f79f38c09cbf2203",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 122,
    "line": 103,
    "path": "GRWTSK/Algebra/LinearAlgebra/PrimeFiber/Variante32b56df483f172cdf543e637a7a544e297f460c5ed1ceef5072ae9e477145ae.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b299eaf6004e7970692f31e4c3b673c631f47db3e9349bf8b82b9b3152026425",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/PrimeFiber/Variante32b56df483f172cdf543e637a7a544e297f460c5ed1ceef5072ae9e477145ae.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c7a3238c31479e10ac42b2da958392a6e814de8993318fe1c4b50f9151ef30e6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 103–122.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure PrimeLocalFiberRealization
    (prime : CertifiedPrime) where
  Coefficient : Type u
  Cohomology : Type u
  Level : Nat → Type u
  coefficientRing : CommRing Coefficient
  cohomologyGroup : AddCommGroup Cohomology
  cohomologyModule :
    @Module Coefficient Cohomology
      coefficientRing.toSemiring cohomologyGroup.toAddCommMonoid
  levelGroup : ∀ level, AddCommGroup (Level level)
  levelFintype : ∀ level, Fintype (Level level)
  candidate :
    @PrimeLocalFiberCandidate
      prime Coefficient Cohomology Level
      coefficientRing cohomologyGroup cohomologyModule
      levelGroup levelFintype

namespace PrimeLocalFiberRealization

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/PrimeFiber/Variante32b56df483f172cdf543e637a7a544e297f460c5ed1ceef5072ae9e477145ae.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/PrimeFiber/Variante32b56df483f172cdf543e637a7a544e297f460c5ed1ceef5072ae9e477145ae.lean#L103).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2e3d2c4612e073053444efa5f79f38c09cbf2203` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
