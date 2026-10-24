# ringQuot_ext'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "26ba397acab1672dc3e4e3fea49caa7877b18e91",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 484,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e4/e4d91136b7e737c46bb8d64aaf89bb6efbdb8a9be8892f2f861f0e25e64b599d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b8acc7d5-62a9-bdff-d5b7-9dc8cf5a68ff",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8e36ef7d-f81f-3eae-e29c-89899a71f3cf",
  "kind": "theorem",
  "lexical_name": "ringQuot_ext'",
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
  "slug": "ringquot-ext--5be6ee6e7f55e0fa9bd538e3",
  "source": {
    "blob": "26ba397acab1672dc3e4e3fea49caa7877b18e91",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 531,
    "line": 484,
    "path": "GRWTSK/Algebra/RingQuot/Variante4d91136b7e737c46bb8d64aaf89bb6efbdb8a9be8892f2f861f0e25e64b599d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5be6ee6e7f55e0fa9bd538e3c590e2d65d573f16a6061008f06a4fc24b30b02b",
  "verification": {
    "reference": "docs/verification/Algebra/RingQuot/Variante4d91136b7e737c46bb8d64aaf89bb6efbdb8a9be8892f2f861f0e25e64b599d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8e36ef7d-f81f-3eae-e29c-89899a71f3cf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 484–531.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ringQuot_ext' {s : A → A → Prop} (f g : RingQuot s →ₐ[S] B)
    (w : f.comp (mkAlgHom S s) = g.comp (mkAlgHom S s)) : f = g := by
  ext x
  rcases mkAlgHom_surjective S s x with ⟨x, rfl⟩
  exact AlgHom.congr_fun w x

irreducible_def preLiftAlgHom {s : A → A → Prop} {f : A →ₐ[S] B}
  (h : ∀ ⦃x y⦄, s x y → f x = f y) : RingQuot s →ₐ[S] B :=
{ toFun := fun x ↦ Quot.lift f
            (by
              rintro _ _ r
              induction r with
              | of r => exact h r
              | add_left _ r' => simp only [map_add, r']
              | mul_left _ r' => simp only [map_mul, r']
              | mul_right _ r' => simp only [map_mul, r'])
            x.toQuot
  map_zero' := by simp only [← zero_quot, map_zero]
  map_add' := by
    rintro ⟨⟨x⟩⟩ ⟨⟨y⟩⟩
    simp only [add_quot, map_add _ x y]
  map_one' := by simp only [← one_quot, map_one]
  map_mul' := by
    rintro ⟨⟨x⟩⟩ ⟨⟨y⟩⟩
    simp only [mul_quot, map_mul _ x y]
  commutes' := by
    rintro x
    simp [← one_quot, smul_quot, Algebra.algebraMap_eq_smul_one] }

/-- Any `S`-algebra homomorphism `f : A →ₐ[S] B` which respects a relation `s : A → A → Prop`
factors uniquely through a morphism `RingQuot s →ₐ[S] B`.
-/
irreducible_def liftAlgHom {s : A → A → Prop} :
  { f : A →ₐ[S] B // ∀ ⦃x y⦄, s x y → f x = f y } ≃ (RingQuot s →ₐ[S] B) :=
  { toFun := fun f' ↦ preLiftAlgHom _ f'.prop
    invFun := fun F ↦ ⟨F.comp (mkAlgHom S s), fun _ _ h ↦ congr_arg F (mkAlgHom_rel S h)⟩
    left_inv := fun f ↦ by
      ext
      simp only [preLiftAlgHom_def, mkAlgHom_def, mkRingHom_def,
        AlgHom.coe_comp, AlgHom.coe_mk, RingHom.coe_mk, MonoidHom.coe_mk, OneHom.coe_mk,
        Function.comp_apply]
    right_inv := fun F ↦ by
      ext
      simp only [preLiftAlgHom_def, mkAlgHom_def, mkRingHom_def,
                 AlgHom.coe_comp, AlgHom.coe_mk, RingHom.coe_mk,
                 MonoidHom.coe_mk, OneHom.coe_mk, Function.comp_apply] }

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/RingQuot/Variante4d91136b7e737c46bb8d64aaf89bb6efbdb8a9be8892f2f861f0e25e64b599d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/RingQuot/Variante4d91136b7e737c46bb8d64aaf89bb6efbdb8a9be8892f2f861f0e25e64b599d.lean#L484).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `26ba397acab1672dc3e4e3fea49caa7877b18e91` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
