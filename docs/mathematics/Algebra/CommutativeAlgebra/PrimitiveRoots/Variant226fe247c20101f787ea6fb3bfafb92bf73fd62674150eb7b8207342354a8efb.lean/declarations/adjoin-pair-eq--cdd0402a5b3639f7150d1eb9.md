# adjoin_pair_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "0f4c2e50f26687e733bc861fc76113cdea9b3a69",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 618,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/22/226fe247c20101f787ea6fb3bfafb92bf73fd62674150eb7b8207342354a8efb.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:fea90857-b117-aaab-56ac-7a371ddc4940",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:098cf8e3-9a95-1119-92d3-985fbf88cc7c",
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
  "slug": "adjoin-pair-eq--cdd0402a5b3639f7150d1eb9",
  "source": {
    "blob": "0f4c2e50f26687e733bc861fc76113cdea9b3a69",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 635,
    "line": 618,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/PrimitiveRoots/Variant226fe247c20101f787ea6fb3bfafb92bf73fd62674150eb7b8207342354a8efb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cdd0402a5b3639f7150d1eb9bafd85e7211306474cc810d2dc41c7ddcdcb3cc4",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/PrimitiveRoots/Variant226fe247c20101f787ea6fb3bfafb92bf73fd62674150eb7b8207342354a8efb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:098cf8e3-9a95-1119-92d3-985fbf88cc7c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 618–635.

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

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/PrimitiveRoots/Variant226fe247c20101f787ea6fb3bfafb92bf73fd62674150eb7b8207342354a8efb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/PrimitiveRoots/Variant226fe247c20101f787ea6fb3bfafb92bf73fd62674150eb7b8207342354a8efb.lean#L618).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0f4c2e50f26687e733bc861fc76113cdea9b3a69` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
