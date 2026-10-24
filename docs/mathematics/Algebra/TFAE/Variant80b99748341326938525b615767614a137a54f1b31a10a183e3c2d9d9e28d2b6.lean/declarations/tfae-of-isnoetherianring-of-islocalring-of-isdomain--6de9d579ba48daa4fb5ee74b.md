# tfae_of_isNoetherianRing_of_isLocalRing_of_isDomain

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "56c03acf7009e6b550e52ff6b48b1bc9fb1d1666",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 168,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/80/80b99748341326938525b615767614a137a54f1b31a10a183e3c2d9d9e28d2b6.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f30ebc2e-bf90-4342-f8e5-1bafcc2aa629",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:595d47c1-c724-6441-d2a3-ee2dce563d50",
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
  "slug": "tfae-of-isnoetherianring-of-islocalring-of-isdomain--6de9d579ba48daa4fb5ee74b",
  "source": {
    "blob": "56c03acf7009e6b550e52ff6b48b1bc9fb1d1666",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 209,
    "line": 168,
    "path": "GRWTSK/Algebra/TFAE/Variant80b99748341326938525b615767614a137a54f1b31a10a183e3c2d9d9e28d2b6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6de9d579ba48daa4fb5ee74beb708df1c560de861569bb2762fba7e4ef1a1e6d",
  "verification": {
    "reference": "docs/verification/Algebra/TFAE/Variant80b99748341326938525b615767614a137a54f1b31a10a183e3c2d9d9e28d2b6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:595d47c1-c724-6441-d2a3-ee2dce563d50`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 168–209.

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
  tfae_have 2 → 1 := fun _ ↦ ((IsBezout.TFAE (R := R)).out 1 2).mp ‹_›
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
    by_cases hI : I = ⊥; · order
    by_cases hJ : J = ⊥; · order
    obtain ⟨n, rfl⟩ := H I hI
    obtain ⟨m, rfl⟩ := H J hJ
    exact (le_total m n).imp Ideal.pow_le_pow_right Ideal.pow_le_pow_right
  tfae_finish

/--
The following are equivalent for a
Noetherian local domain that is not a field `(R, m, k)`:
0. `R` is a discrete valuation ring
1. `R` is a valuation ring
2. `R` is a Dedekind domain
3. `R` is integrally closed with a unique non-zero prime ideal
4. `m` is principal
5. `dimₖ m/m² = 1`
6. Every nonzero ideal is a power of `m`.

Also see `tfae_of_isNoetherianRing_of_isLocalRing_of_isDomain` for a version without `¬ IsField R`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/TFAE/Variant80b99748341326938525b615767614a137a54f1b31a10a183e3c2d9d9e28d2b6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/TFAE/Variant80b99748341326938525b615767614a137a54f1b31a10a183e3c2d9d9e28d2b6.lean#L168).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `56c03acf7009e6b550e52ff6b48b1bc9fb1d1666` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
