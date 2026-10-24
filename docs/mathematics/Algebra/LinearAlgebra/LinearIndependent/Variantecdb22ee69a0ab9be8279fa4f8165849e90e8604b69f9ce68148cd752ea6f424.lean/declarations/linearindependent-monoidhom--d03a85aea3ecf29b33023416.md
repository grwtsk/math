# linearIndependent_monoidHom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "fc277c7f295fa2fc967631040e7664f9c29100f5",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1061,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ec/ecdb22ee69a0ab9be8279fa4f8165849e90e8604b69f9ce68148cd752ea6f424.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e87ae2d1-8786-b288-48e2-e535082defbd",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:06a1cff4-9e68-0963-c49f-2d495d29683a",
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
  "slug": "linearindependent-monoidhom--d03a85aea3ecf29b33023416",
  "source": {
    "blob": "fc277c7f295fa2fc967631040e7664f9c29100f5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1152,
    "line": 1061,
    "path": "GRWTSK/Algebra/LinearAlgebra/LinearIndependent/Variantecdb22ee69a0ab9be8279fa4f8165849e90e8604b69f9ce68148cd752ea6f424.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d03a85aea3ecf29b330234165700693d71ec9d4ad8c919d91f2b6f9ddc80d7bb",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/LinearIndependent/Variantecdb22ee69a0ab9be8279fa4f8165849e90e8604b69f9ce68148cd752ea6f424.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:06a1cff4-9e68-0963-c49f-2d495d29683a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1061–1152.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem linearIndependent_monoidHom (G : Type*) [Monoid G] (L : Type*) [CommRing L]
    [NoZeroDivisors L] : @LinearIndependent _ L (G → L) (fun f => f : (G →* L) → G → L) _ _ _ := by
  -- Porting note: Some casts are required.
  letI := Classical.decEq (G →* L);
  letI : MulAction L L := DistribMulAction.toMulAction;
  -- We prove linear independence by showing that only the trivial linear combination vanishes.
  exact linearIndependent_iff'.2
    -- To do this, we use `Finset` induction,
    -- Porting note: `False.elim` → `fun h => False.elim <| Finset.not_mem_empty _ h`
    fun s =>
      Finset.induction_on s
        (fun g _hg i h => False.elim <| Finset.not_mem_empty _ h) fun a s has ih g hg =>
        -- Here
        -- * `a` is a new character we will insert into the `Finset` of characters `s`,
        -- * `ih` is the fact that only the trivial linear combination of characters in `s` is zero
        -- * `hg` is the fact that `g` are the coefficients of a linear combination summing to zero
        -- and it remains to prove that `g` vanishes on `insert a s`.
        -- We now make the key calculation:
        -- For any character `i` in the original `Finset`, we have `g i • i = g i • a` as functions
        -- on the monoid `G`.
        have h1 : ∀ i ∈ s, (g i • (i : G → L)) = g i • (a : G → L) := fun i his =>
          funext fun x : G =>
            -- We prove these expressions are equal by showing
            -- the differences of their values on each monoid element `x` is zero
            eq_of_sub_eq_zero <|
            ih (fun j => g j * j x - g j * a x)
              (funext fun y : G => calc
                -- After that, it's just a chase scene.
                (∑ i in s, ((g i * i x - g i * a x) • (i : G → L))) y =
                    ∑ i in s, (g i * i x - g i * a x) * i y :=
                  Finset.sum_apply _ _ _
                _ = ∑ i in s, (g i * i x * i y - g i * a x * i y) :=
                  Finset.sum_congr rfl fun _ _ => sub_mul _ _ _
                _ = (∑ i in s, g i * i x * i y) - ∑ i in s, g i * a x * i y :=
                  Finset.sum_sub_distrib
                _ =
                    (g a * a x * a y + ∑ i in s, g i * i x * i y) -
                      (g a * a x * a y + ∑ i in s, g i * a x * i y) :=
                  by rw [add_sub_add_left_eq_sub]
                _ =
                    (∑ i in insert a s, g i * i x * i y) -
                      ∑ i in insert a s, g i * a x * i y :=
                  by rw [Finset.sum_insert has, Finset.sum_insert has]
                _ =
                    (∑ i in insert a s, g i * i (x * y)) -
                      ∑ i in insert a s, a x * (g i * i y) :=
                  congr
                    (congr_arg Sub.sub
                      (Finset.sum_congr rfl fun i _ => by rw [i.map_mul, mul_assoc]))
                    (Finset.sum_congr rfl fun _ _ => by rw [mul_assoc, mul_left_comm])
                _ =
                    (∑ i in insert a s, (g i • (i : G → L))) (x * y) -
                      a x * (∑ i in insert a s, (g i • (i : G → L))) y :=
                  by rw [Finset.sum_apply, Finset.sum_apply, Finset.mul_sum]; rfl
                _ = 0 - a x * 0 := by rw [hg]; rfl
                _ = 0 := by rw [mul_zero, sub_zero]
                )
              i his
        -- On the other hand, since `a` is not already in `s`, for any character `i ∈ s`
        -- there is some element of the monoid on which it differs from `a`.
        have h2 : ∀ i : G →* L, i ∈ s → ∃ y, i y ≠ a y := fun i his =>
          Classical.by_contradiction fun h =>
            have hia : i = a := MonoidHom.ext fun y =>
              Classical.by_contradiction fun hy => h ⟨y, hy⟩
            has <| hia ▸ his
        -- From these two facts we deduce that `g` actually vanishes on `s`,
        have h3 : ∀ i ∈ s, g i = 0 := fun i his =>
          let ⟨y, hy⟩ := h2 i his
          have h : g i • i y = g i • a y := congr_fun (h1 i his) y
          Or.resolve_right (mul_eq_zero.1 <| by rw [mul_sub, sub_eq_zero]; exact h)
            (sub_ne_zero_of_ne hy)
        -- And so, using the fact that the linear combination over `s` and over `insert a s` both
        -- vanish, we deduce that `g a = 0`.
        have h4 : g a = 0 :=
          calc
            g a = g a * 1 := (mul_one _).symm
            _ = (g a • (a : G → L)) 1 := by rw [← a.map_one]; rfl
            _ = (∑ i in insert a s, (g i • (i : G → L))) 1 := by
              rw [Finset.sum_eq_single a]
              · intro i his hia
                rw [Finset.mem_insert] at his
                rw [h3 i (his.resolve_left hia), zero_smul]
              · intro haas
                exfalso
                apply haas
                exact Finset.mem_insert_self a s
            _ = 0 := by rw [hg]; rfl
        -- Now we're done; the last two facts together imply that `g` vanishes on every element
        -- of `insert a s`.
        (Finset.forall_mem_insert _ _ _).2 ⟨h4, h3⟩
#align linear_independent_monoid_hom linearIndependent_monoidHom

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/LinearIndependent/Variantecdb22ee69a0ab9be8279fa4f8165849e90e8604b69f9ce68148cd752ea6f424.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/LinearIndependent/Variantecdb22ee69a0ab9be8279fa4f8165849e90e8604b69f9ce68148cd752ea6f424.lean#L1061).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fc277c7f295fa2fc967631040e7664f9c29100f5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
