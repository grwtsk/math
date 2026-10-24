# PositiveRelaxationTrajectory

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:39fdd2070641b8d1fb74356377cd4879fd4dad791a0420f5335b0eae6ae087b2",
  "kind": "structure",
  "lexical_name": "PositiveRelaxationTrajectory",
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
  "slug": "positiverelaxationtrajectory--54c833d3b2eee7a04235b894",
  "source": {
    "blob": "db44350802d99a83640ad0a814be09e04e2d7f54",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 199,
    "line": 177,
    "path": "GRWTSK/Algebra/LinearAlgebra/InvolutiveRelaxation/Variant8ffdfaa0179c33e50608f412c816026b9d9338715eccd8f1bd5f3009677e29eb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:54c833d3b2eee7a04235b894cb1b4f3e3a431ac20bbff5a09750cc0289ec1bdb",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/InvolutiveRelaxation/Variant8ffdfaa0179c33e50608f412c816026b9d9338715eccd8f1bd5f3009677e29eb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:39fdd2070641b8d1fb74356377cd4879fd4dad791a0420f5335b0eae6ae087b2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 177–199.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure PositiveRelaxationTrajectory
    (State : Type u)
    [AddCommMonoid State]
    [Module ℝ State]
    (cone : PositiveCone State)
    (J : PositiveLinearInvolution State cone) where
  horizon : Nat
  weightAt : Fin horizon → RelaxationWeight
  initial : State
  initialPositive : initial ∈ cone.carrier
  state : Fin (horizon + 1) → State
  initial_eq : state 0 = initial
  step :
    ∀ time : Fin horizon,
      state time.succ = J.relax (weightAt time) (state time.castSucc)

namespace PositiveRelaxationTrajectory

variable {State : Type u} [AddCommMonoid State] [Module ℝ State]
variable {cone : PositiveCone State}
variable {J : PositiveLinearInvolution State cone}

/-- Every state in a certified relaxation trajectory remains positive. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/InvolutiveRelaxation/Variant8ffdfaa0179c33e50608f412c816026b9d9338715eccd8f1bd5f3009677e29eb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/InvolutiveRelaxation/Variant8ffdfaa0179c33e50608f412c816026b9d9338715eccd8f1bd5f3009677e29eb.lean#L177).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `db44350802d99a83640ad0a814be09e04e2d7f54` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
