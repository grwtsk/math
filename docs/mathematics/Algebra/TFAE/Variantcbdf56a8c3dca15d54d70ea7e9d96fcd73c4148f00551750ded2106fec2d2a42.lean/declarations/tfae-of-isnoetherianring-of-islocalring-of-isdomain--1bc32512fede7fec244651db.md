# tfae_of_isNoetherianRing_of_isLocalRing_of_isDomain

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8045f987-8564-689c-cc53-9f4ff8c4a772",
  "kind": "theorem",
  "lexical_name": "tfae_of_isNoetherianRing_of_isLocalRing_of_isDomain",
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
  "slug": "tfae-of-isnoetherianring-of-islocalring-of-isdomain--1bc32512fede7fec244651db",
  "source": {
    "blob": "2fa9d6e7743e3db96a5cbea729f5e60dfde748a8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 212,
    "line": 171,
    "path": "GRWTSK/Algebra/TFAE/Variantcbdf56a8c3dca15d54d70ea7e9d96fcd73c4148f00551750ded2106fec2d2a42.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1bc32512fede7fec244651db5e38e133f87f71cf26f4e03bb69dff5e8e06f152",
  "verification": {
    "reference": "docs/verification/Algebra/TFAE/Variantcbdf56a8c3dca15d54d70ea7e9d96fcd73c4148f00551750ded2106fec2d2a42.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8045f987-8564-689c-cc53-9f4ff8c4a772`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 171–212.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tfae_of_isNoetherianRing_of_isLocalRing_of_isDomain
    [IsNoetherianRing R] [IsLocalRing R] [IsDomain R] :
    List.TFAE
      [IsPrincipalIdealRing R, ValuationRing R, IsDedekindDomain R,
        IsIntegrallyClosed R ∧ ∀ P : Ideal R, P ≠ ⊥ → P.IsPrime → P = maximalIdeal R,
        (maximalIdeal R).IsPrincipal,
        finrank (ResidueField R) (CotangentSpace R) ≤ 1,
        ∀ I ≠ ⊥, ∃ n : ℕ, I = maximalIdeal R ^ n] := by
  tfae_have 1 → 2 := fun _ ↦ inferInstance
  tfae_have 2 → 1 := fun _ ↦ ((IsBezout.TFAE (R := R)).out 0 1).mp ‹_›
  tfae_have 1 → 4
  | H => ⟨inferInstance, fun P hP hP' ↦ eq_maximalIdeal (hP'.isMaximal hP)⟩
  tfae_have 4 → 3 :=
    fun ⟨h₁, h₂⟩ ↦ { h₁ with maximalOfPrime := (h₂ _ · · ▸ maximalIdeal.isMaximal R) }
  tfae_have 3 → 5 := fun h ↦ maximalIdeal_isPrincipal_of_isDedekindDomain R
  tfae_have 6 ↔ 5 := finrank_cotangentSpace_le_one_iff
  tfae_have 5 → 7 := exists_maximalIdeal_pow_eq_of_principal R
  tfae_have 7 → 2 := by
    rw [ValuationRing.iff_ideal_total]
    intro H
    constructor
    intro I J
    by_cases hI : I = ⊥; · subst hI; left; exact bot_le
    by_cases hJ : J = ⊥; · subst hJ; right; exact bot_le
    obtain ⟨n, rfl⟩ := H I hI
    obtain ⟨m, rfl⟩ := H J hJ
    exact (le_total m n).imp Ideal.pow_le_pow_right Ideal.pow_le_pow_right
  tfae_finish

/--
The following are equivalent for a
noetherian local domain that is not a field `(R, m, k)`:
0. `R` is a discrete valuation ring
1. `R` is a valuation ring
2. `R` is a dedekind domain
3. `R` is integrally closed with a unique non-zero prime ideal
4. `m` is principal
5. `dimₖ m/m² = 1`
6. Every nonzero ideal is a power of `m`.

Also see `tfae_of_isNoetherianRing_of_isLocalRing_of_isDomain` for a version without `¬ IsField R`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/TFAE/Variantcbdf56a8c3dca15d54d70ea7e9d96fcd73c4148f00551750ded2106fec2d2a42.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/TFAE/Variantcbdf56a8c3dca15d54d70ea7e9d96fcd73c4148f00551750ded2106fec2d2a42.lean#L171).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2fa9d6e7743e3db96a5cbea729f5e60dfde748a8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
