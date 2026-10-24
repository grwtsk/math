# Dual.eq_of_preReflection_mapsTo'

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
      "line": 374,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c7/c75a18e97deb09672998c731c79d5913eee08b734ba99300e1497a7eb70427be.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b0fdf3d2-197b-ddc8-bce1-f843a0acd19d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ca1c3feb-f473-aedb-e124-b2b19610f679",
  "kind": "lemma",
  "lexical_name": "Dual.eq_of_preReflection_mapsTo'",
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
  "slug": "dual-eq-of-prereflection-mapsto--004e84db4a9d829f82c60e2c",
  "source": {
    "blob": "ad5d6f2c333f1b45c06678df2933e39b188e4056",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 400,
    "line": 374,
    "path": "GRWTSK/Algebra/LinearAlgebra/Reflection/Variantc75a18e97deb09672998c731c79d5913eee08b734ba99300e1497a7eb70427be.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:004e84db4a9d829f82c60e2cd48065f40e65342e844c2a5b46dba8860d5acca3",
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

Occurrence: `result:ca1c3feb-f473-aedb-e124-b2b19610f679`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 374–400.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Dual.eq_of_preReflection_mapsTo' [CharZero R] [NoZeroSMulDivisors R M]
    {x : M} {Φ : Set M} (hΦ₁ : Φ.Finite) (hx : x ∈ span R Φ) {f g : Dual R M}
    (hf₁ : f x = 2) (hf₂ : MapsTo (preReflection x f) Φ Φ)
    (hg₁ : g x = 2) (hg₂ : MapsTo (preReflection x g) Φ Φ) :
    (span R Φ).subtype.dualMap f = (span R Φ).subtype.dualMap g := by
  set Φ' : Set (span R Φ) := range (inclusion <| Submodule.subset_span (R := R) (s := Φ))
  rw [← finite_coe_iff] at hΦ₁
  have hΦ'₁ : Φ'.Finite := finite_range (inclusion Submodule.subset_span)
  have hΦ'₂ : span R Φ' = ⊤ := by
    simp only [Φ']
    rw [range_inclusion]
    simp
  let x' : span R Φ := ⟨x, hx⟩
  have this : ∀ {F : Dual R M}, MapsTo (preReflection x F) Φ Φ →
      MapsTo (preReflection x' ((span R Φ).subtype.dualMap F)) Φ' Φ' := by
    intro F hF ⟨y, hy⟩ hy'
    simp only [Φ'] at hy' ⊢
    rw [range_inclusion] at hy'
    simp only [SetLike.coe_sort_coe, mem_setOf_eq] at hy' ⊢
    rw [range_inclusion]
    exact hF hy'
  exact eq_of_preReflection_mapsTo hΦ'₁ hΦ'₂ hf₁ (this hf₂) hg₁ (this hg₂)

variable {y}
variable {g : Dual R M}

/-- Composite of reflections in "parallel" hyperplanes is a shear (special case). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Reflection/Variantc75a18e97deb09672998c731c79d5913eee08b734ba99300e1497a7eb70427be.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Reflection/Variantc75a18e97deb09672998c731c79d5913eee08b734ba99300e1497a7eb70427be.lean#L374).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ad5d6f2c333f1b45c06678df2933e39b188e4056` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
