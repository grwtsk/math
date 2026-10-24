# Dual.eq_of_preReflection_mapsTo

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ad5d6f2c333f1b45c06678df2933e39b188e4056",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 340,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c7/c75a18e97deb09672998c731c79d5913eee08b734ba99300e1497a7eb70427be.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:de64201f-0ce0-f047-ea54-25b5f9ebf503",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:90e9c51a-0d5e-d2c9-1f6e-365f730cb996",
  "kind": "lemma",
  "lexical_name": "Dual.eq_of_preReflection_mapsTo",
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
  "slug": "dual-eq-of-prereflection-mapsto--019811f433910a5119939944",
  "source": {
    "blob": "ad5d6f2c333f1b45c06678df2933e39b188e4056",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 373,
    "line": 340,
    "path": "GRWTSK/Algebra/LinearAlgebra/Reflection/Variantc75a18e97deb09672998c731c79d5913eee08b734ba99300e1497a7eb70427be.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:019811f433910a511993994446481f034f256dffc6fa6e6bd5a0385644bbac51",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Reflection/Variantc75a18e97deb09672998c731c79d5913eee08b734ba99300e1497a7eb70427be.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:90e9c51a-0d5e-d2c9-1f6e-365f730cb996`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 340–373.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Dual.eq_of_preReflection_mapsTo [CharZero R] [NoZeroSMulDivisors R M]
    {x : M} {Φ : Set M} (hΦ₁ : Φ.Finite) (hΦ₂ : span R Φ = ⊤) {f g : Dual R M}
    (hf₁ : f x = 2) (hf₂ : MapsTo (preReflection x f) Φ Φ)
    (hg₁ : g x = 2) (hg₂ : MapsTo (preReflection x g) Φ Φ) :
    f = g := by
  have hx : x ≠ 0 := by rintro rfl; simp at hf₁
  let u := reflection hg₁ * reflection hf₁
  have hu : u = LinearMap.id (R := R) (M := M) + (f - g).smulRight x := by
    ext y
    simp only [u, reflection_apply, hg₁, two_smul, LinearEquiv.coe_toLinearMap_mul,
      LinearMap.id_coe, LinearEquiv.coe_coe, Module.End.mul_apply, LinearMap.add_apply, id_eq,
      LinearMap.coe_smulRight, LinearMap.sub_apply, map_sub, map_smul, sub_add_cancel_left,
      smul_neg, sub_neg_eq_add, sub_smul]
    abel
  replace hu : ∀ (n : ℕ),
      ↑(u ^ n) = LinearMap.id (R := R) (M := M) + (n : R) • (f - g).smulRight x := by
    intros n
    induction n with
    | zero => simp
    | succ n ih =>
      have : ((f - g).smulRight x).comp ((n : R) • (f - g).smulRight x) = 0 := by
        ext; simp [hf₁, hg₁]
      rw [pow_succ', LinearEquiv.coe_toLinearMap_mul, ih, hu, add_mul, mul_add, mul_add]
      simp_rw [Module.End.mul_eq_comp, LinearMap.comp_id, LinearMap.id_comp, this, add_zero,
        add_assoc, Nat.cast_succ, add_smul, one_smul]
  suffices IsOfFinOrder u by
    obtain ⟨n, hn₀, hn₁⟩ := isOfFinOrder_iff_pow_eq_one.mp this
    replace hn₁ : (↑(u ^ n) : M →ₗ[R] M) = LinearMap.id := LinearEquiv.toLinearMap_inj.mpr hn₁
    simpa [hn₁, hn₀.ne', hx, sub_eq_zero] using hu n
  exact u.isOfFinOrder_of_finite_of_span_eq_top_of_mapsTo hΦ₁ hΦ₂ (hg₂.comp hf₂)

/-- This rather technical-looking lemma exists because it is exactly what is needed to establish a
uniqueness result for root data. See the doc string of `Module.Dual.eq_of_preReflection_mapsTo` for
further remarks. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Reflection/Variantc75a18e97deb09672998c731c79d5913eee08b734ba99300e1497a7eb70427be.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Reflection/Variantc75a18e97deb09672998c731c79d5913eee08b734ba99300e1497a7eb70427be.lean#L340).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ad5d6f2c333f1b45c06678df2933e39b188e4056` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
