# FactorCycleWitness

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c57dce3dedca4d7103afadc9e69ea2c24d9e9680d371cca92427ff61737ab6db",
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
  "slug": "factorcyclewitness--8e09bc5ed24e7177b411d5ea",
  "source": {
    "blob": "b69ddc4064e7ebcea351859ddcbffc60239dbb23",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 90,
    "line": 69,
    "path": "GRWTSK/Algebra/FieldTheory/GaloisObservation/Variant67189299f6fc4f6992cbd42f0f05851769e33f380fa254c66d4fb4aa9b590792.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8e09bc5ed24e7177b411d5eaf55d533fe5ea6e0d7aaf03be09fccbdb2e52bd0b",
  "verification": {
    "reference": "docs/verification/Algebra/FieldTheory/GaloisObservation/Variant67189299f6fc4f6992cbd42f0f05851769e33f380fa254c66d4fb4aa9b590792.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c57dce3dedca4d7103afadc9e69ea2c24d9e9680d371cca92427ff61737ab6db`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 69–90.

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

[Verification target and public status](../../../../../../verification/Algebra/FieldTheory/GaloisObservation/Variant67189299f6fc4f6992cbd42f0f05851769e33f380fa254c66d4fb4aa9b590792.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/FieldTheory/GaloisObservation/Variant67189299f6fc4f6992cbd42f0f05851769e33f380fa254c66d4fb4aa9b590792.lean#L69).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b69ddc4064e7ebcea351859ddcbffc60239dbb23` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
