# instLinearWeightsOfIsLieAbelian

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:48302eced13c0734b796859248eeb70e2b121b656ea4994c7038646a0b16ce4a",
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
  "slug": "instlinearweightsofislieabelian--9899ae37c9adc1781f237c54",
  "source": {
    "blob": "4b2fae72ab752283205fe21fc477051e9547fa70",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 119,
    "line": 94,
    "path": "GRWTSK/Algebra/LinearAlgebra/Linear/Variante26eb1f689d5ad4a563edd8b7d861169ea0f7ead4994e383ea01508a52e7ae55.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9899ae37c9adc1781f237c54a9ca6a9207398b6ae0ee9949723c1b4a546be721",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Linear/Variante26eb1f689d5ad4a563edd8b7d861169ea0f7ead4994e383ea01508a52e7ae55.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:48302eced13c0734b796859248eeb70e2b121b656ea4994c7038646a0b16ce4a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 94–119.

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

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Linear/Variante26eb1f689d5ad4a563edd8b7d861169ea0f7ead4994e383ea01508a52e7ae55.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Linear/Variante26eb1f689d5ad4a563edd8b7d861169ea0f7ead4994e383ea01508a52e7ae55.lean#L94).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4b2fae72ab752283205fe21fc477051e9547fa70` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
