# module'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:70f0ec846a4b9df5141eb0d0e955cae77905e2a2671d13dad29cecb955cf5013",
  "kind": "instance",
  "lexical_name": "module'",
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
  "slug": "module--c241cde6dce4dad7cae89276",
  "source": {
    "blob": "771d9f10602096033aaea54e48b2e114c0a6007c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 914,
    "line": 883,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/Algebra/Variant93aa45e1eb9f475cd9abb73a3841fcd4483067507e9658f6f5bb51702ffb5474.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c241cde6dce4dad7cae89276082f78e5692d2369755b49506327fd97d7d6c340",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/Algebra/Variant93aa45e1eb9f475cd9abb73a3841fcd4483067507e9658f6f5bb51702ffb5474.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:70f0ec846a4b9df5141eb0d0e955cae77905e2a2671d13dad29cecb955cf5013`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 883–914.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance module' {α : Type*} [TopologicalSpace α] (R : Type*) [Semiring R] [TopologicalSpace R]
    [TopologicalSemiring R] (M : Type*) [TopologicalSpace M] [AddCommMonoid M] [ContinuousAdd M]
    [Module R M] [ContinuousSMul R M] : Module C(α, R) C(α, M) where
  smul := (· • ·)
  smul_add c f g := by ext x; exact smul_add (c x) (f x) (g x)
  add_smul c₁ c₂ f := by ext x; exact add_smul (c₁ x) (c₂ x) (f x)
  mul_smul c₁ c₂ f := by ext x; exact mul_smul (c₁ x) (c₂ x) (f x)
  one_smul f := by ext x; exact one_smul R (f x)
  zero_smul f := by ext x; exact zero_smul _ _
  smul_zero r := by ext x; exact smul_zero _
#align continuous_map.module' ContinuousMap.module'

end ContinuousMap

end ModuleOverContinuousFunctions

/-!
We now provide formulas for `f ⊓ g` and `f ⊔ g`, where `f g : C(α, β)`,
in terms of `ContinuousMap.abs`.
-/

namespace ContinuousMap

section Lattice

variable {α : Type*} [TopologicalSpace α]

variable {β : Type*} [TopologicalSpace β]

/-! `C(α, β)`is a lattice ordered group -/

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/Algebra/Variant93aa45e1eb9f475cd9abb73a3841fcd4483067507e9658f6f5bb51702ffb5474.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/Algebra/Variant93aa45e1eb9f475cd9abb73a3841fcd4483067507e9658f6f5bb51702ffb5474.lean#L883).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `771d9f10602096033aaea54e48b2e114c0a6007c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
