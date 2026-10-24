# sum_hom_units_eq_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:51bf1bdb-f666-cfb6-1e70-1baab923b7f8",
  "kind": "theorem",
  "lexical_name": "sum_hom_units_eq_zero",
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
  "slug": "sum-hom-units-eq-zero--011747f1bc366f02dff30fb7",
  "source": {
    "blob": "91de25a84177af17245ba695d725b942f7b27c61",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 288,
    "line": 226,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/IntegralDomain/Variantfe3257d4791f45ba14b7796e31e66938c84ccbf0874551f15fc649fae8cc2dae.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:011747f1bc366f02dff30fb7d72658d5a17d9f612401da778b07c37bbbb6eea5",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/IntegralDomain/Variantfe3257d4791f45ba14b7796e31e66938c84ccbf0874551f15fc649fae8cc2dae.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:51bf1bdb-f666-cfb6-1e70-1baab923b7f8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 226–288.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sum_hom_units_eq_zero (f : G →* R) (hf : f ≠ 1) : ∑ g : G, f g = 0 := by
  classical
    obtain ⟨x, hx⟩ :
      ∃ x : MonoidHom.range f.toHomUnits,
        ∀ y : MonoidHom.range f.toHomUnits, y ∈ Submonoid.powers x
    exact IsCyclic.exists_monoid_generator
    have hx1 : x ≠ 1 := by
      rintro rfl
      apply hf
      ext g
      rw [MonoidHom.one_apply]
      cases' hx ⟨f.toHomUnits g, g, rfl⟩ with n hn
      rwa [Subtype.ext_iff, Units.ext_iff, Subtype.coe_mk, MonoidHom.coe_toHomUnits, one_pow,
        eq_comm] at hn
    replace hx1 : (x.val : R) - 1 ≠ 0  -- porting note: was `(x : R)`
    exact fun h => hx1 (Subtype.eq (Units.ext (sub_eq_zero.1 h)))
    let c := (univ.filter fun g => f.toHomUnits g = 1).card
    calc
      ∑ g : G, f g = ∑ g : G, (f.toHomUnits g : R) := rfl
      _ = ∑ u : Rˣ in univ.image f.toHomUnits,
            (univ.filter fun g => f.toHomUnits g = u).card • (u : R) :=
        (sum_comp ((↑) : Rˣ → R) f.toHomUnits)
      _ = ∑ u : Rˣ in univ.image f.toHomUnits, c • (u : R) :=
        (sum_congr rfl fun u hu => congr_arg₂ _ ?_ rfl)
      -- remaining goal 1, proven below
      -- Porting note: have to change `(b : R)` into `((b : Rˣ) : R)`
      _ = ∑ b : MonoidHom.range f.toHomUnits, c • ((b : Rˣ) : R) :=
        (Finset.sum_subtype _ (by simp) _)
      _ = c • ∑ b : MonoidHom.range f.toHomUnits, ((b : Rˣ) : R) := smul_sum.symm
      _ = c • (0 : R) := (congr_arg₂ _ rfl ?_)
      -- remaining goal 2, proven below
      _ = (0 : R) := smul_zero _
    · -- remaining goal 1
      show (univ.filter fun g : G => f.toHomUnits g = u).card = c
      apply card_fiber_eq_of_mem_range f.toHomUnits
      · simpa only [mem_image, mem_univ, true_and, Set.mem_range] using hu
      · exact ⟨1, f.toHomUnits.map_one⟩
    -- remaining goal 2
    show (∑ b : MonoidHom.range f.toHomUnits, ((b : Rˣ) : R)) = 0
    calc
      (∑ b : MonoidHom.range f.toHomUnits, ((b : Rˣ) : R))
        = ∑ n in range (orderOf x), ((x : Rˣ) : R) ^ n :=
        Eq.symm <|
          sum_bij (fun n _ => x ^ n) (by simp only [mem_univ, forall_true_iff])
            (by simp only [imp_true_iff, eq_self_iff_true, Subgroup.coe_pow,
                Units.val_pow_eq_pow_val])
            (fun m n hm hn =>
              pow_injective_of_lt_orderOf _ (by simpa only [mem_range] using hm)
                (by simpa only [mem_range] using hn))
            (fun b _ => let ⟨n, hn⟩ := hx b
              ⟨n % orderOf x, mem_range.2 (Nat.mod_lt _ (orderOf_pos _)),
               -- Porting note: have to use `dsimp` to apply the function
               by dsimp at hn ⊢; rw [← pow_eq_mod_orderOf, hn]⟩)
      _ = 0 := ?_

    rw [← mul_left_inj' hx1, zero_mul, geom_sum_mul]
    norm_cast
    simp [pow_orderOf_eq_one]
#align sum_hom_units_eq_zero sum_hom_units_eq_zero

/-- In an integral domain, a sum indexed by a homomorphism from a finite group is zero,
unless the homomorphism is trivial, in which case the sum is equal to the cardinality of the group.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/IntegralDomain/Variantfe3257d4791f45ba14b7796e31e66938c84ccbf0874551f15fc649fae8cc2dae.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/IntegralDomain/Variantfe3257d4791f45ba14b7796e31e66938c84ccbf0874551f15fc649fae8cc2dae.lean#L226).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `91de25a84177af17245ba695d725b942f7b27c61` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
