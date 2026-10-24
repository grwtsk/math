# ringQuot_ext

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5ba1e6c1-0fad-06ec-d958-42918c8f6869",
  "kind": "theorem",
  "lexical_name": "ringQuot_ext",
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
  "slug": "ringquot-ext--061f7aece4c4f9489eb4e8db",
  "source": {
    "blob": "6276320a5cef6c76cc60bc47a8457e5267456fab",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 392,
    "line": 347,
    "path": "GRWTSK/Algebra/RingQuot/Variantf25f873e64a8b1abbe69193bf756dc36ff93c6a436eb7cab689fd8dde75e91e2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:061f7aece4c4f9489eb4e8db371dc814ae2ceda8df301aadfb883dbd081ae3e1",
  "verification": {
    "reference": "docs/verification/Algebra/RingQuot/Variantf25f873e64a8b1abbe69193bf756dc36ff93c6a436eb7cab689fd8dde75e91e2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5ba1e6c1-0fad-06ec-d958-42918c8f6869`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 347–392.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ringQuot_ext [NonAssocSemiring T] {r : R → R → Prop} (f g : RingQuot r →+* T)
    (w : f.comp (mkRingHom r) = g.comp (mkRingHom r)) : f = g := by
  ext x
  rcases mkRingHom_surjective r x with ⟨x, rfl⟩
  exact (RingHom.congr_fun w x :)

variable [Semiring T]

irreducible_def preLift {r : R → R → Prop} {f : R →+* T} (h : ∀ ⦃x y⦄, r x y → f x = f y) :
  RingQuot r →+* T :=
  { toFun := fun x ↦ Quot.lift f
        (by
          rintro _ _ r
          induction r with
          | of r => exact h r
          | add_left _ r' => rw [map_add, map_add, r']
          | mul_left _ r' => rw [map_mul, map_mul, r']
          | mul_right _ r' => rw [map_mul, map_mul, r'])
        x.toQuot
    map_zero' := by simp only [← zero_quot, f.map_zero]
    map_add' := by
      rintro ⟨⟨x⟩⟩ ⟨⟨y⟩⟩
      simp only [add_quot, f.map_add x y]
    map_one' := by simp only [← one_quot, f.map_one]
    map_mul' := by
      rintro ⟨⟨x⟩⟩ ⟨⟨y⟩⟩
      simp only [mul_quot, f.map_mul x y] }

/-- Any ring homomorphism `f : R →+* T` which respects a relation `r : R → R → Prop`
factors uniquely through a morphism `RingQuot r →+* T`.
-/
irreducible_def lift {r : R → R → Prop} :
  { f : R →+* T // ∀ ⦃x y⦄, r x y → f x = f y } ≃ (RingQuot r →+* T) :=
  { toFun := fun f ↦ preLift f.prop
    invFun := fun F ↦ ⟨F.comp (mkRingHom r), fun _ _ h ↦ congr_arg F (mkRingHom_rel h)⟩
    left_inv := fun f ↦ by
      ext
      simp only [preLift_def, mkRingHom_def, RingHom.coe_comp, RingHom.coe_mk, MonoidHom.coe_mk,
                 OneHom.coe_mk, Function.comp_apply]
    right_inv := fun F ↦ by
      simp only [preLift_def]
      ext
      simp only [mkRingHom_def, RingHom.coe_comp, RingHom.coe_mk, MonoidHom.coe_mk, OneHom.coe_mk,
        Function.comp_apply] }

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/RingQuot/Variantf25f873e64a8b1abbe69193bf756dc36ff93c6a436eb7cab689fd8dde75e91e2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/RingQuot/Variantf25f873e64a8b1abbe69193bf756dc36ff93c6a436eb7cab689fd8dde75e91e2.lean#L347).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6276320a5cef6c76cc60bc47a8457e5267456fab` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
