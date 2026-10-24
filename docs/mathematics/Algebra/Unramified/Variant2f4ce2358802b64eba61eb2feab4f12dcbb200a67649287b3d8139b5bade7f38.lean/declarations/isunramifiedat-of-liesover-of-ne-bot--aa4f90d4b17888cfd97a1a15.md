# IsUnramifiedAt.of_liesOver_of_ne_bot

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:08b7798e-a608-3e0d-c6c0-4b737aff1dd1",
  "kind": "lemma",
  "lexical_name": "IsUnramifiedAt.of_liesOver_of_ne_bot",
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
  "slug": "isunramifiedat-of-liesover-of-ne-bot--aa4f90d4b17888cfd97a1a15",
  "source": {
    "blob": "8b003f3884485b10a57f3939c6a1ea0f2730251c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 90,
    "line": 49,
    "path": "GRWTSK/Algebra/Unramified/Variant2f4ce2358802b64eba61eb2feab4f12dcbb200a67649287b3d8139b5bade7f38.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:aa4f90d4b17888cfd97a1a1593f5faa2d957f131f348a3df0808ab6e3494f611",
  "verification": {
    "reference": "docs/verification/Algebra/Unramified/Variant2f4ce2358802b64eba61eb2feab4f12dcbb200a67649287b3d8139b5bade7f38.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:08b7798e-a608-3e0d-c6c0-4b737aff1dd1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 49–90.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma IsUnramifiedAt.of_liesOver_of_ne_bot
    (p : Ideal S) (P : Ideal T) [P.LiesOver p] [p.IsPrime] [P.IsPrime]
    [IsUnramifiedAt R P] [EssFiniteType R S] [EssFiniteType R T]
    [IsDedekindDomain S] (hP₁ : P.primeCompl ≤ nonZeroDivisors T) (hP₂ : p ≠ ⊥ → P ≠ ⊥) :
    IsUnramifiedAt R p := by
  let p₀ : Ideal R := p.under R
  have : P.LiesOver p₀ := .trans P p p₀
  let := Localization.AtPrime.algebraOfLiesOver p₀ p
  let := Localization.AtPrime.algebraOfLiesOver p P
  let := Localization.AtPrime.algebraOfLiesOver p₀ P
  have hp₀ : p₀ = P.under R := Ideal.LiesOver.over
  have : EssFiniteType S T := .of_comp R S T
  have := Algebra.EssFiniteType.isNoetherianRing S T
  rw [isUnramifiedAt_iff_map_eq R p₀ p]
  have ⟨h₁, h₂⟩ := (isUnramifiedAt_iff_map_eq R p₀ P).mp ‹_›
  refine ⟨Algebra.isSeparable_tower_bot_of_isSeparable _ _ P.ResidueField, ?_⟩
  by_cases hp : p = ⊥
  · have : p₀.map (algebraMap R S) = p := by
      subst hp
      exact le_bot_iff.mp (Ideal.map_comap_le)
    rw [IsScalarTower.algebraMap_eq _ S, ← Ideal.map_map, this,
      Localization.AtPrime.map_eq_maximalIdeal]
  rw [← Ideal.IsDedekindDomain.ramificationIdx'_eq_one_iff hp Ideal.map_comap_le,
    ← not_ne_iff, Ideal.ramificationIdx'_ne_one_iff Ideal.map_comap_le]
  intro H
  have := Ideal.ramificationIdx'_eq_one_of_map_localization
    (hp₀ ▸ Ideal.map_comap_le) (hP₂ hp) hP₁ h₂
  rw [← not_ne_iff, Ideal.ramificationIdx'_ne_one_iff (hp₀ ▸ Ideal.map_comap_le)] at this
  replace H := Ideal.map_mono (f := algebraMap S T) H
  rw [Ideal.map_map, ← IsScalarTower.algebraMap_eq, Ideal.map_pow] at H
  refine this (H.trans (Ideal.pow_right_mono ?_ _))
  exact Ideal.map_le_iff_le_comap.mpr Ideal.LiesOver.over.le

section IsUnramifiedIn

namespace Algebra

variable (R) in
/--
Up to technical conditions, If `T/S/R` is a tower of algebras, `P` is a prime of `T` unramified
in `R`, then `P ∩ S` (as a prime of `S`) is also unramified in `R`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Unramified/Variant2f4ce2358802b64eba61eb2feab4f12dcbb200a67649287b3d8139b5bade7f38.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Unramified/Variant2f4ce2358802b64eba61eb2feab4f12dcbb200a67649287b3d8139b5bade7f38.lean#L49).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8b003f3884485b10a57f3939c6a1ea0f2730251c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
