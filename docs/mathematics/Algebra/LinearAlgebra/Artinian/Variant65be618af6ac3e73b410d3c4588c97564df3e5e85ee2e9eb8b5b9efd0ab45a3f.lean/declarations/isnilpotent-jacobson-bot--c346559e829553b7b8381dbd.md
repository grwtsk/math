# isNilpotent_jacobson_bot

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e724beaa9986d7122091e6906db8b3c3be9a6233",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 388,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/65/65be618af6ac3e73b410d3c4588c97564df3e5e85ee2e9eb8b5b9efd0ab45a3f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:08150aa1-e18d-4cbe-4607-443bea4c1daa",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f4a07e1d-4d52-65a2-8d70-7d734baa4093",
  "kind": "theorem",
  "lexical_name": "isNilpotent_jacobson_bot",
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
  "slug": "isnilpotent-jacobson-bot--c346559e829553b7b8381dbd",
  "source": {
    "blob": "e724beaa9986d7122091e6906db8b3c3be9a6233",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 428,
    "line": 388,
    "path": "GRWTSK/Algebra/LinearAlgebra/Artinian/Variant65be618af6ac3e73b410d3c4588c97564df3e5e85ee2e9eb8b5b9efd0ab45a3f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c346559e829553b7b8381dbdfa14390ff52fa97a3d9b556ab6231c9eda975dd4",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Artinian/Variant65be618af6ac3e73b410d3c4588c97564df3e5e85ee2e9eb8b5b9efd0ab45a3f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f4a07e1d-4d52-65a2-8d70-7d734baa4093`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 388–428.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isNilpotent_jacobson_bot : IsNilpotent (Ideal.jacobson (⊥ : Ideal R)) := by
  let Jac := Ideal.jacobson (⊥ : Ideal R)
  let f : ℕ →o (Ideal R)ᵒᵈ := ⟨fun n => Jac ^ n, fun _ _ h => Ideal.pow_le_pow h⟩
  obtain ⟨n, hn⟩ : ∃ n, ∀ m, n ≤ m → Jac ^ n = Jac ^ m := IsArtinian.monotone_stabilizes f
  refine' ⟨n, _⟩
  let J : Ideal R := annihilator (Jac ^ n)
  suffices J = ⊤ by
    have hJ : J • Jac ^ n = ⊥ := annihilator_smul (Jac ^ n)
    simpa only [this, top_smul, Ideal.zero_eq_bot] using hJ
  by_contra hJ
  change J ≠ ⊤ at hJ
  rcases IsArtinian.set_has_minimal { J' : Ideal R | J < J' } ⟨⊤, hJ.lt_top⟩ with
    ⟨J', hJJ' : J < J', hJ' : ∀ I, J < I → ¬I < J'⟩
  rcases SetLike.exists_of_lt hJJ' with ⟨x, hxJ', hxJ⟩
  obtain rfl : J ⊔ Ideal.span {x} = J' := by
    apply eq_of_le_of_not_lt _ (hJ' (J ⊔ Ideal.span {x}) _)
    · exact sup_le hJJ'.le (span_le.2 (singleton_subset_iff.2 hxJ'))
    · rw [SetLike.lt_iff_le_and_exists]
      exact ⟨le_sup_left, ⟨x, mem_sup_right (mem_span_singleton_self x), hxJ⟩⟩
  have : J ⊔ Jac • Ideal.span {x} ≤ J ⊔ Ideal.span {x} :=
    sup_le_sup_left (smul_le.2 fun _ _ _ => Submodule.smul_mem _ _) _
  have : Jac * Ideal.span {x} ≤ J := by -- Need version 4 of Nakayama's lemma on Stacks
    by_contra H
    refine' H (smul_sup_le_of_le_smul_of_le_jacobson_bot (fg_span_singleton _) le_rfl
      (this.eq_of_not_lt (hJ' _ _)).ge)
    exact lt_of_le_of_ne le_sup_left fun h => H <| h.symm ▸ le_sup_right
  have : Ideal.span {x} * Jac ^ (n + 1) ≤ ⊥
  calc
    Ideal.span {x} * Jac ^ (n + 1) = Ideal.span {x} * Jac * Jac ^ n := by rw [pow_succ, ← mul_assoc]
    _ ≤ J * Jac ^ n := (mul_le_mul (by rwa [mul_comm]) le_rfl)
    _ = ⊥ := by simp
  refine' hxJ (mem_annihilator.2 fun y hy => (mem_bot R).1 _)
  refine' this (mul_mem_mul (mem_span_singleton_self x) _)
  rwa [← hn (n + 1) (Nat.le_succ _)]
#align is_artinian_ring.is_nilpotent_jacobson_bot IsArtinianRing.isNilpotent_jacobson_bot

section Localization

variable (S : Submonoid R) (L : Type*) [CommRing L] [Algebra R L] [IsLocalization S L]

/-- Localizing an artinian ring can only reduce the amount of elements. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Artinian/Variant65be618af6ac3e73b410d3c4588c97564df3e5e85ee2e9eb8b5b9efd0ab45a3f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Artinian/Variant65be618af6ac3e73b410d3c4588c97564df3e5e85ee2e9eb8b5b9efd0ab45a3f.lean#L388).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e724beaa9986d7122091e6906db8b3c3be9a6233` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
