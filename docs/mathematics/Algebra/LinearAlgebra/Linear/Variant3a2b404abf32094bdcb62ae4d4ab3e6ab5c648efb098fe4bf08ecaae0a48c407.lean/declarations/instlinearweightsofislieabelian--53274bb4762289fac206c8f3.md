# instLinearWeightsOfIsLieAbelian

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:029441936b7d902891382747a3d4db55701a05a17a40af5186e639680656fcfd",
  "kind": "instance",
  "lexical_name": "instLinearWeightsOfIsLieAbelian",
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
  "slug": "instlinearweightsofislieabelian--53274bb4762289fac206c8f3",
  "source": {
    "blob": "81ce9dfd398bccea98a343c5e1cd55f89e7e6653",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 127,
    "line": 102,
    "path": "GRWTSK/Algebra/LinearAlgebra/Linear/Variant3a2b404abf32094bdcb62ae4d4ab3e6ab5c648efb098fe4bf08ecaae0a48c407.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:53274bb4762289fac206c8f373cb1c137bbc49ed06cf51ac1332ec78ae7ac494",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Linear/Variant3a2b404abf32094bdcb62ae4d4ab3e6ab5c648efb098fe4bf08ecaae0a48c407.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:029441936b7d902891382747a3d4db55701a05a17a40af5186e639680656fcfd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 102–127.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance instLinearWeightsOfIsLieAbelian [IsLieAbelian L] [NoZeroSMulDivisors R M] :
    LinearWeights R L M :=
  have aux : ∀ (χ : L → R), genWeightSpace M χ ≠ ⊥ → ∀ (x y : L), χ (x + y) = χ x + χ y := by
    have h : ∀ x y, Commute (toEnd R L M x) (toEnd R L M y) := fun x y ↦ by
      rw [commute_iff_lie_eq, ← LieHom.map_lie, trivial_lie_zero, LieHom.map_zero]
    intro χ hχ x y
    simp_rw [Ne, ← LieSubmodule.toSubmodule_inj, genWeightSpace, genWeightSpaceOf,
      LieSubmodule.iInf_toSubmodule, LieSubmodule.bot_toSubmodule] at hχ
    exact Module.End.map_add_of_iInf_genEigenspace_ne_bot_of_commute
      (toEnd R L M).toLinearMap χ _ hχ h x y
  { map_add := aux
    map_smul := fun χ hχ t x ↦ by
      simp_rw [Ne, ← LieSubmodule.toSubmodule_inj, genWeightSpace, genWeightSpaceOf,
        LieSubmodule.iInf_toSubmodule, LieSubmodule.bot_toSubmodule] at hχ
      exact Module.End.map_smul_of_iInf_genEigenspace_ne_bot
        (toEnd R L M).toLinearMap χ _ hχ t x
    map_lie := fun χ hχ t x ↦ by
      rw [trivial_lie_zero, ← add_left_inj (χ 0), ← aux χ hχ, zero_add, zero_add] }

section FiniteDimensional

open Module

variable [IsDomain R] [IsPrincipalIdealRing R] [Module.Free R M] [Module.Finite R M]
  [LieRing.IsNilpotent L]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Linear/Variant3a2b404abf32094bdcb62ae4d4ab3e6ab5c648efb098fe4bf08ecaae0a48c407.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Linear/Variant3a2b404abf32094bdcb62ae4d4ab3e6ab5c648efb098fe4bf08ecaae0a48c407.lean#L102).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `81ce9dfd398bccea98a343c5e1cd55f89e7e6653` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
