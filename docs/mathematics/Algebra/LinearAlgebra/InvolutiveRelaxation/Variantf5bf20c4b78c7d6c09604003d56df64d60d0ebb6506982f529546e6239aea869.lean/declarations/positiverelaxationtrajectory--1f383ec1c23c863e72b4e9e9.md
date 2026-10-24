# PositiveRelaxationTrajectory

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2dac8d0e4145bd812c6d55a953d1b4812b1297aa831d27646ef76222be3ca4d2",
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
  "slug": "positiverelaxationtrajectory--1f383ec1c23c863e72b4e9e9",
  "source": {
    "blob": "bd8108b85598229273c7eabd964a6b9ecfd0be11",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 191,
    "line": 169,
    "path": "GRWTSK/Algebra/LinearAlgebra/InvolutiveRelaxation/Variantf5bf20c4b78c7d6c09604003d56df64d60d0ebb6506982f529546e6239aea869.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1f383ec1c23c863e72b4e9e9acdedb0f8573e9ac1f9650232dfa3715adfbf0e9",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/InvolutiveRelaxation/Variantf5bf20c4b78c7d6c09604003d56df64d60d0ebb6506982f529546e6239aea869.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2dac8d0e4145bd812c6d55a953d1b4812b1297aa831d27646ef76222be3ca4d2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 169–191.

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

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/InvolutiveRelaxation/Variantf5bf20c4b78c7d6c09604003d56df64d60d0ebb6506982f529546e6239aea869.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/InvolutiveRelaxation/Variantf5bf20c4b78c7d6c09604003d56df64d60d0ebb6506982f529546e6239aea869.lean#L169).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bd8108b85598229273c7eabd964a6b9ecfd0be11` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
