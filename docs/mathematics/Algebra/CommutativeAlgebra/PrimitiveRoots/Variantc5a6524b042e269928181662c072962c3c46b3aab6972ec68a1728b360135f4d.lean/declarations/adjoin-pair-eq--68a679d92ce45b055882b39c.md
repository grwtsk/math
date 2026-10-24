# adjoin_pair_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8afe854f-c6b8-1e83-a26b-2cbdf566f73c",
  "kind": "theorem",
  "lexical_name": "adjoin_pair_eq",
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
  "slug": "adjoin-pair-eq--68a679d92ce45b055882b39c",
  "source": {
    "blob": "217096023fbc613883b9a611910c5833baf089ba",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 643,
    "line": 626,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/PrimitiveRoots/Variantc5a6524b042e269928181662c072962c3c46b3aab6972ec68a1728b360135f4d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:68a679d92ce45b055882b39c1ea92238b41be5afffa4ec27272ad55d3f4b803f",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/PrimitiveRoots/Variantc5a6524b042e269928181662c072962c3c46b3aab6972ec68a1728b360135f4d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8afe854f-c6b8-1e83-a26b-2cbdf566f73c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 626–643.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem adjoin_pair_eq (S : Type*) [CommSemiring S] [Algebra S R] {ζ₁ ζ₂ : R} {k₁ : ℕ} {k₂ : ℕ}
    (hζ₁ : IsPrimitiveRoot ζ₁ k₁) (hζ₂ : IsPrimitiveRoot ζ₂ k₂) (hk₁ : k₁ ≠ 0) (hk₂ : k₂ ≠ 0)
    {ζ : R} (hζ : IsPrimitiveRoot ζ (k₁.lcm k₂)) :
    Algebra.adjoin S {ζ₁, ζ₂} = Algebra.adjoin S {ζ} := by
  have : NeZero (k₁.lcm k₂) := ⟨Nat.lcm_ne_zero hk₁ hk₂⟩
  refine le_antisymm (Algebra.adjoin_le ?_) (Algebra.adjoin_le ?_)
  · refine Set.pair_subset_iff.mpr ⟨?_, ?_⟩
    · obtain ⟨_, _, rfl⟩ := hζ.eq_pow_of_pow_eq_one <|
        (hζ₁.pow_eq_one_iff_dvd _).mpr <| k₁.dvd_lcm_left k₂
      exact Subalgebra.pow_mem _ (Algebra.self_mem_adjoin_singleton S _) _
    · obtain ⟨_, _, rfl⟩ := hζ.eq_pow_of_pow_eq_one <|
        (hζ₂.pow_eq_one_iff_dvd _).mpr <| k₁.dvd_lcm_right k₂
      exact Subalgebra.pow_mem _ (Algebra.self_mem_adjoin_singleton S _) _
  · have hζ' := IsPrimitiveRoot.pow_mul_pow_lcm hζ₁ hζ₂ hk₁ hk₂
    obtain ⟨_, _, rfl⟩ := hζ'.eq_pow_of_pow_eq_one hζ.pow_eq_one
    aesop

open scoped Classical in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/PrimitiveRoots/Variantc5a6524b042e269928181662c072962c3c46b3aab6972ec68a1728b360135f4d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/PrimitiveRoots/Variantc5a6524b042e269928181662c072962c3c46b3aab6972ec68a1728b360135f4d.lean#L626).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `217096023fbc613883b9a611910c5833baf089ba` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
