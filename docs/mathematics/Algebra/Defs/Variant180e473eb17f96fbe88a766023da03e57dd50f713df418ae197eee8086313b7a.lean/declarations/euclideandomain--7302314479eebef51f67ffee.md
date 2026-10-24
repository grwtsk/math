# EuclideanDomain

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b9e416861767cedcb08429c5e9c37febb53b21aa45a069af1c08ca8f32e00de5",
  "kind": "class",
  "lexical_name": "EuclideanDomain",
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
  "slug": "euclideandomain--7302314479eebef51f67ffee",
  "source": {
    "blob": "f94fea45a17181902b9f504edcfaf75629fdd6ee",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 122,
    "line": 82,
    "path": "GRWTSK/Algebra/Defs/Variant180e473eb17f96fbe88a766023da03e57dd50f713df418ae197eee8086313b7a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7302314479eebef51f67ffeed0646fd0549ef664fbad33c2fb3c74bd4fef8997",
  "verification": {
    "reference": "docs/verification/Algebra/Defs/Variant180e473eb17f96fbe88a766023da03e57dd50f713df418ae197eee8086313b7a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `class` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b9e416861767cedcb08429c5e9c37febb53b21aa45a069af1c08ca8f32e00de5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 82–122.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
class EuclideanDomain (R : Type u) extends CommRing R, Nontrivial R where
  /-- A division function (denoted `/`) on `R`.
    This satisfies the property `b * (a / b) + a % b = a`, where `%` denotes `remainder`. -/
  protected quotient : R → R → R
  /-- Division by zero should always give zero by convention. -/
  protected quotient_zero : ∀ a, quotient a 0 = 0
  /-- A remainder function (denoted `%`) on `R`.
    This satisfies the property `b * (a / b) + a % b = a`, where `/` denotes `quotient`. -/
  protected remainder : R → R → R
  /-- The property that links the quotient and remainder functions.
    This allows us to compute GCDs and LCMs. -/
  protected quotient_mul_add_remainder_eq : ∀ a b, b * quotient a b + remainder a b = a
  /-- A well-founded relation on `R`, satisfying `r (a % b) b`.
    This ensures that the GCD algorithm always terminates. -/
  protected r : R → R → Prop
  /-- The relation `r` must be well-founded.
    This ensures that the GCD algorithm always terminates. -/
  [r_wellFounded : WellFounded r]
  /-- The relation `r` satisfies `r (a % b) b`. -/
  protected remainder_lt : ∀ (a) {b}, b ≠ 0 → r (remainder a b) b
  /-- An additional constraint on `r`. -/
  mul_left_not_lt : ∀ (a) {b}, b ≠ 0 → ¬r (a * b) a

/-
Lean has far more theorems about fields than about Euclidean domains. We thus
lower the priority of `Euclideandomain.toCommRing`, encouraging typeclass inference
to try `Field.toCommRing` first. Without this priority-lowering, typeclass inference
finds the more inefficient path `Field.toEuclideanDomain.toCommRing` by default. This
priority change saves over 500G instructions across mathlib. See
https://leanprover.zulipchat.com/#narrow/channel/287929-mathlib4/topic/We.20need.20to.20talk.20about.20Euclidean.20Domains/near/594655420
-/
-- see Note [lower instance priority]
attribute [instance 100] EuclideanDomain.toCommRing

namespace EuclideanDomain

variable {R : Type u} [EuclideanDomain R]

/-- Abbreviated notation for the well-founded relation `r` in a Euclidean domain. -/
local infixl:50 " ≺ " => EuclideanDomain.r

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Defs/Variant180e473eb17f96fbe88a766023da03e57dd50f713df418ae197eee8086313b7a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Defs/Variant180e473eb17f96fbe88a766023da03e57dd50f713df418ae197eee8086313b7a.lean#L82).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f94fea45a17181902b9f504edcfaf75629fdd6ee` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
