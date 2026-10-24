# HodgeEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7c4ace350faaec2515425c7adc8268b793c8e77e391d28eb4688d8c400836ade",
  "kind": "structure",
  "lexical_name": "HodgeEquiv",
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
  "slug": "hodgeequiv--cddcd147a1c5c000723a8b4f",
  "source": {
    "blob": "17b6a398b5a064a77015408f3634af88e3e86789",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 38,
    "line": 22,
    "path": "GRWTSK/LinearAlgebra/HodgeEquivalence.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:cddcd147a1c5c000723a8b4fb793d49f7bcaf36841647f4ce5e335bccb505368",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/HodgeEquivalence.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7c4ace350faaec2515425c7adc8268b793c8e77e391d28eb4688d8c400836ade`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 22–38.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure HodgeEquiv
    (A : TwoTermHodgeData R A₀ A₁)
    (B : TwoTermHodgeData R B₀ B₁) where
  equiv0 : A₀ ≃ₗ[R] B₀
  equiv1 : A₁ ≃ₗ[R] B₁
  delta_comm :
    equiv1.toLinearMap.comp A.delta = B.delta.comp equiv0.toLinearMap
  deltaStar_comm :
    equiv0.toLinearMap.comp A.deltaStar = B.deltaStar.comp equiv1.toLinearMap

namespace HodgeEquiv

variable {A : TwoTermHodgeData R A₀ A₁}
variable {B : TwoTermHodgeData R B₀ B₁}
variable {C : TwoTermHodgeData R C₀ C₁}

/-- Forget an exact Hodge equivalence to its forward Hodge port. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/LinearAlgebra/HodgeEquivalence.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/LinearAlgebra/HodgeEquivalence.lean#L22).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `17b6a398b5a064a77015408f3634af88e3e86789` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
