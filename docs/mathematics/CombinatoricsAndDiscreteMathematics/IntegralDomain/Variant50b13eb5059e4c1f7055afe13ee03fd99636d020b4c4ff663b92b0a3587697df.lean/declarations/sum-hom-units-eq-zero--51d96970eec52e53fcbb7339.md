# sum_hom_units_eq_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:616ddd7b-0c09-0040-b0d8-1da419b8c3f0",
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
  "slug": "sum-hom-units-eq-zero--51d96970eec52e53fcbb7339",
  "source": {
    "blob": "2635ae53cf7c7b1957838874f8f4ff31f0d8c295",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 242,
    "line": 185,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/IntegralDomain/Variant50b13eb5059e4c1f7055afe13ee03fd99636d020b4c4ff663b92b0a3587697df.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:51d96970eec52e53fcbb73398f4415eac5549d5bfded59baa19e9f38d0056c5b",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/IntegralDomain/Variant50b13eb5059e4c1f7055afe13ee03fd99636d020b4c4ff663b92b0a3587697df.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:616ddd7b-0c09-0040-b0d8-1da419b8c3f0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 185–242.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sum_hom_units_eq_zero (f : G →* R) (hf : f ≠ 1) : ∑ g : G, f g = 0 := by
  classical
    obtain ⟨x, hx⟩ : ∃ x : MonoidHom.range f.toHomUnits,
        ∀ y : MonoidHom.range f.toHomUnits, y ∈ Submonoid.powers x :=
      IsCyclic.exists_monoid_generator
    have hx1 : x ≠ 1 := by
      rintro rfl
      apply hf
      ext g
      rw [MonoidHom.one_apply]
      obtain ⟨n, hn⟩ := hx ⟨f.toHomUnits g, g, rfl⟩
      rwa [Subtype.ext_iff, Units.ext_iff, Subtype.coe_mk, MonoidHom.coe_toHomUnits, one_pow,
        eq_comm] at hn
    replace hx1 : (x.val : R) - 1 ≠ 0 := -- Porting note: was `(x : R)`
      fun h => hx1 (Subtype.eq (Units.ext (sub_eq_zero.1 h)))
    let c := #{g | f.toHomUnits g = 1}
    calc
      ∑ g : G, f g = ∑ g : G, (f.toHomUnits g : R) := rfl
      _ = ∑ u ∈ univ.image f.toHomUnits, #{g | f.toHomUnits g = u} • (u : R) :=
        sum_comp ((↑) : Rˣ → R) f.toHomUnits
      _ = ∑ u ∈ univ.image f.toHomUnits, c • (u : R) :=
        (sum_congr rfl fun u hu => congr_arg₂ _ ?_ rfl)
      -- remaining goal 1, proven below
      -- Porting note: have to change `(b : R)` into `((b : Rˣ) : R)`
      _ = ∑ b : MonoidHom.range f.toHomUnits, c • ((b : Rˣ) : R) :=
        (Finset.sum_subtype _ (by simp) _)
      _ = c • ∑ b : MonoidHom.range f.toHomUnits, ((b : Rˣ) : R) := smul_sum.symm
      _ = c • (0 : R) := congr_arg₂ _ rfl ?_
      -- remaining goal 2, proven below
      _ = (0 : R) := smul_zero _
    · -- remaining goal 1
      show #{g : G | f.toHomUnits g = u} = c
      apply MonoidHom.card_fiber_eq_of_mem_range f.toHomUnits
      · simpa only [mem_image, mem_univ, true_and, Set.mem_range] using hu
      · exact ⟨1, f.toHomUnits.map_one⟩
    -- remaining goal 2
    show (∑ b : MonoidHom.range f.toHomUnits, ((b : Rˣ) : R)) = 0
    calc
      (∑ b : MonoidHom.range f.toHomUnits, ((b : Rˣ) : R))
        = ∑ n ∈ range (orderOf x), ((x : Rˣ) : R) ^ n :=
        Eq.symm <|
          sum_nbij (x ^ ·) (by simp only [mem_univ, forall_true_iff])
            (by simpa using pow_injOn_Iio_orderOf)
            (fun b _ => let ⟨n, hn⟩ := hx b
              ⟨n % orderOf x, mem_range.2 (Nat.mod_lt _ (orderOf_pos _)),
               -- Porting note: have to use `dsimp` to apply the function
               by dsimp at hn ⊢; rw [pow_mod_orderOf, hn]⟩)
            (by simp only [imp_true_iff, eq_self_iff_true, Subgroup.coe_pow,
                Units.val_pow_eq_pow_val])
      _ = 0 := ?_

    rw [← mul_left_inj' hx1, zero_mul, geom_sum_mul]
    norm_cast
    simp [pow_orderOf_eq_one]

/-- In an integral domain, a sum indexed by a homomorphism from a finite group is zero,
unless the homomorphism is trivial, in which case the sum is equal to the cardinality of the group.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/IntegralDomain/Variant50b13eb5059e4c1f7055afe13ee03fd99636d020b4c4ff663b92b0a3587697df.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/IntegralDomain/Variant50b13eb5059e4c1f7055afe13ee03fd99636d020b4c4ff663b92b0a3587697df.lean#L185).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2635ae53cf7c7b1957838874f8f4ff31f0d8c295` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
