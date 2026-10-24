# linearIndependent_monoidHom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6f6038fad7df16340a9cb7d7b33a2447e82809a0",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 519,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/28/289a9439282cdaa4d5547cea07850df12761abb016668a72721267d59cfd3cba.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8bc5ff7c-73dc-7c65-e2f1-d94cafb65bf4",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e352763b-3883-1211-2659-82fb0352764d",
  "kind": "theorem",
  "lexical_name": "linearIndependent_monoidHom",
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
  "slug": "linearindependent-monoidhom--83150cf357f3451d32d1c4af",
  "source": {
    "blob": "6f6038fad7df16340a9cb7d7b33a2447e82809a0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 591,
    "line": 519,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variant289a9439282cdaa4d5547cea07850df12761abb016668a72721267d59cfd3cba.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:83150cf357f3451d32d1c4afcfcbfa9a304a942161e0a072e5df58cd51a43791",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basic/Variant289a9439282cdaa4d5547cea07850df12761abb016668a72721267d59cfd3cba.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e352763b-3883-1211-2659-82fb0352764d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 519–591.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem linearIndependent_monoidHom (G : Type*) [MulOneClass G] (L : Type*) [CommRing L]
    [NoZeroDivisors L] : LinearIndependent L (M := G → L) (fun f => f : (G →* L) → G → L) := by
  -- Porting note: Some casts are required.
  letI := Classical.decEq (G →* L)
  letI : MulAction L L := DistribMulAction.toMulAction
  -- We prove linear independence by showing that only the trivial linear combination vanishes.
  apply linearIndependent_iff'.2
  intro s
  induction s using Finset.induction_on with
  | empty => simp
  | insert a s has ih =>
  intro g hg
  -- Here
  -- * `a` is a new character we will insert into the `Finset` of characters `s`,
  -- * `ih` is the fact that only the trivial linear combination of characters in `s` is zero
  -- * `hg` is the fact that `g` are the coefficients of a linear combination summing to zero
  -- and it remains to prove that `g` vanishes on `insert a s`.
  -- We now make the key calculation:
  -- For any character `i` in the original `Finset`, we have `g i • i = g i • a` as functions
  -- on the monoid `G`.
  have h1 (i) (his : i ∈ s) : (g i • (i : G → L)) = g i • (a : G → L) := by
    ext x
    rw [← sub_eq_zero]
    apply ih (fun j => g j * j x - g j * a x) _ i his
    ext y
    -- After that, it's just a chase scene.
    calc
      (∑ i ∈ s, ((g i * i x - g i * a x) • (i : G → L))) y =
          (∑ i ∈ s, g i * i x * i y) - ∑ i ∈ s, g i * a x * i y := by simp [sub_mul]
      _ = (∑ i ∈ insert a s, g i * i x * i y) -
            ∑ i ∈ insert a s, g i * a x * i y := by simp [Finset.sum_insert has]
      _ = (∑ i ∈ insert a s, g i * (i x * i y)) -
            ∑ i ∈ insert a s, a x * (g i * i y) := by
        congrm ∑ i ∈ insert a s, ?_ - ∑ i ∈ insert a s, ?_
        · rw [mul_assoc]
        · rw [mul_assoc, mul_left_comm]
      _ = (∑ i ∈ insert a s, (g i • (i : G → L))) (x * y) -
            a x * (∑ i ∈ insert a s, (g i • (i : G → L))) y := by simp [Finset.mul_sum]
      _ = 0 := by rw [hg]; simp
  -- On the other hand, since `a` is not already in `s`, for any character `i ∈ s`
  -- there is some element of the monoid on which it differs from `a`.
  have h2 (i) (his : i ∈ s) : ∃ y, i y ≠ a y := by
    by_contra! hia
    obtain rfl : i = a := MonoidHom.ext hia
    contradiction
  -- From these two facts we deduce that `g` actually vanishes on `s`,
  have h3 (i) (his : i ∈ s) : g i = 0 := by
    let ⟨y, hy⟩ := h2 i his
    have h : g i • i y = g i • a y := congr_fun (h1 i his) y
    rw [← sub_eq_zero, ← smul_sub, smul_eq_zero] at h
    exact h.resolve_right (sub_ne_zero_of_ne hy)
  -- And so, using the fact that the linear combination over `s` and over `insert a s` both
  -- vanish, we deduce that `g a = 0`.
  have h4 : g a = 0 :=
    calc
      g a = g a * 1 := (mul_one _).symm
      _ = (g a • (a : G → L)) 1 := by rw [← a.map_one]; rfl
      _ = (∑ i ∈ insert a s, (g i • (i : G → L))) 1 := by
        rw [Finset.sum_insert has, Finset.sum_eq_zero, add_zero]
        simp +contextual [h3]
      _ = 0 := by rw [hg]; rfl
  -- Now we're done; the last two facts together imply that `g` vanishes on every element
  -- of `insert a s`.
  exact (Finset.forall_mem_insert ..).2 ⟨h4, h3⟩

end Module

section Nontrivial

variable [Ring R] [Nontrivial R] [AddCommGroup M]
variable [Module R M] [NoZeroSMulDivisors R M]
variable {s t : Set M}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basic/Variant289a9439282cdaa4d5547cea07850df12761abb016668a72721267d59cfd3cba.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basic/Variant289a9439282cdaa4d5547cea07850df12761abb016668a72721267d59cfd3cba.lean#L519).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6f6038fad7df16340a9cb7d7b33a2447e82809a0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
