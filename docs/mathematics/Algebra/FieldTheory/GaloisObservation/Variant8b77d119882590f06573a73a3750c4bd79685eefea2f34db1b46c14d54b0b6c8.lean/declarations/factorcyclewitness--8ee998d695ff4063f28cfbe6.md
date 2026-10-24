# FactorCycleWitness

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8c17eed040e2dcfad747a41dfde91b3511d60ae8b31c78684f9b1fda78fe8490",
  "kind": "structure",
  "lexical_name": "FactorCycleWitness",
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
  "slug": "factorcyclewitness--8ee998d695ff4063f28cfbe6",
  "source": {
    "blob": "d321ae382b2d27382c0d0154638a8b2226128008",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 98,
    "line": 77,
    "path": "GRWTSK/Algebra/FieldTheory/GaloisObservation/Variant8b77d119882590f06573a73a3750c4bd79685eefea2f34db1b46c14d54b0b6c8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8ee998d695ff4063f28cfbe6b7f0dd0e039d42dfdad3af6ffaee50227845b0f1",
  "verification": {
    "reference": "docs/verification/Algebra/FieldTheory/GaloisObservation/Variant8b77d119882590f06573a73a3750c4bd79685eefea2f34db1b46c14d54b0b6c8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8c17eed040e2dcfad747a41dfde91b3511d60ae8b31c78684f9b1fda78fe8490`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 77–98.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure FactorCycleWitness {source : Observation.PolynomialSource} {p : ℕ} [Fact p.Prime]
    (f : GoodPrimeFactorization source p) (E : Type*) [Field E] [Algebra (ZMod p) E]
    (α : Type*) [Fintype α] [DecidableEq α] where
  /-- Permutation of a declared root inventory. -/
  frobenius : Perm α
  /-- Actual roots in one declared extension field, not arbitrary labels. -/
  rootValue : α → E
  /-- Distinct labels identify distinct roots. -/
  roots_injective : Function.Injective rootValue
  /-- Every listed point is a root of the exact reduced source polynomial. -/
  roots_valid : ∀ a, (reduction source p).eval₂ (algebraMap (ZMod p) E) (rootValue a) = 0
  /-- Every root in the declared splitting field is represented. -/
  roots_complete : ∀ z, (reduction source p).eval₂ (algebraMap (ZMod p) E) z = 0 →
    ∃ a, rootValue a = z
  /-- The permutation actually acts by the prime-power Frobenius on these roots. -/
  frobenius_action : ∀ a, rootValue (frobenius a) = rootValue a ^ p
  /-- Root inventory has the source degree, with no dropped roots. -/
  root_count : Fintype.card α = source.polynomial.natDegree
  /-- Explicitly proved factor/Frobenius correspondence; it is not a group identification. -/
  correspondence : factorDegrees f = fullCycleType frobenius

/-- Complete factor data with the separate correspondence witness proves only cycle type. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/FieldTheory/GaloisObservation/Variant8b77d119882590f06573a73a3750c4bd79685eefea2f34db1b46c14d54b0b6c8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/FieldTheory/GaloisObservation/Variant8b77d119882590f06573a73a3750c4bd79685eefea2f34db1b46c14d54b0b6c8.lean#L77).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d321ae382b2d27382c0d0154638a8b2226128008` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
