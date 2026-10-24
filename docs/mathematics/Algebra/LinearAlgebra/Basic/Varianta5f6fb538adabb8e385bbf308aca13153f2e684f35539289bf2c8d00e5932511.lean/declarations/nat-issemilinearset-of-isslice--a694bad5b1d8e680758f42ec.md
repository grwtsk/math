# Nat.isSemilinearSet_of_isSlice

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "fe1eea1b73c9120189bdeb4950845ebf2f496a93",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 140,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a5/a5f6fb538adabb8e385bbf308aca13153f2e684f35539289bf2c8d00e5932511.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:78722e70-03ac-46be-0cbc-845059d50fe9",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:be54a7e9-9352-4922-3ec4-c32c4348c164",
  "kind": "theorem",
  "lexical_name": "Nat.isSemilinearSet_of_isSlice",
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
  "slug": "nat-issemilinearset-of-isslice--a694bad5b1d8e680758f42ec",
  "source": {
    "blob": "fe1eea1b73c9120189bdeb4950845ebf2f496a93",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 164,
    "line": 140,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basic/Varianta5f6fb538adabb8e385bbf308aca13153f2e684f35539289bf2c8d00e5932511.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a694bad5b1d8e680758f42ecf14bf4154adaa5c9a93b74fc5b3a1115c72c4d76",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basic/Varianta5f6fb538adabb8e385bbf308aca13153f2e684f35539289bf2c8d00e5932511.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:be54a7e9-9352-4922-3ec4-c32c4348c164`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 140–164.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem Nat.isSemilinearSet_of_isSlice {ι : Type*} [Finite ι] {s : Set (ι → ℕ)}
    (hs : IsSlice s) : IsSemilinearSet s := by
  classical
  suffices h : ∀ (a : ι → ℕ) (t : Finset ι), (∀ x ∈ s, ∀ i ∉ t, x i = a i) → IsSemilinearSet s by
    have := Fintype.ofFinite ι
    exact h 0 Finset.univ (by simp)
  intro a t ht
  induction t using Finset.strongInductionOn generalizing s a with | _ t ih
  obtain rfl | hs' := s.eq_empty_or_nonempty
  · exact .empty
  rcases hs.exists_isSemilinearSet_setOfPred_le hs' with ⟨x, hx, hx'⟩
  convert_to IsSemilinearSet ({ y ∈ s | x ≤ y } ∪ ⋃ i ∈ t, ⋃ j ∈ Finset.range (x i),
    { y ∈ s | y i = j })
  · ext y
    simp only [Finset.mem_range, mem_union, mem_ofPred_eq, mem_iUnion, Pi.le_def]
    grind
  · refine hx'.union (.biUnion_finset fun i hi => .biUnion_finset fun j hj => ?_)
    simp only [Finset.mem_range] at hj
    apply ih _ (Finset.erase_ssubset hi) (hs.sep_apply_eq _ _) (Function.update a i j)
    grind [Function.update]

/-! ### Semilinearity of linear equations and preimages -/

variable {M N ι κ : Type*} [AddCommMonoid M] [AddCommMonoid N] {s s₁ s₂ : Set M}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basic/Varianta5f6fb538adabb8e385bbf308aca13153f2e684f35539289bf2c8d00e5932511.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basic/Varianta5f6fb538adabb8e385bbf308aca13153f2e684f35539289bf2c8d00e5932511.lean#L140).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fe1eea1b73c9120189bdeb4950845ebf2f496a93` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
