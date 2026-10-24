# ideal_span_singleton_map_subset

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "df1e8870497e6d04a682659ce876b190d3884b6a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 434,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/06/062b241900f63a7af5fd25c99783d3aa631c19f5fd24a7a91382525b87acc41e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:27c74b92-eba8-0a4c-0a8c-f65f78dc6df5",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:30dd110f-ef7d-6b2b-09b4-15b2c5d8983a",
  "kind": "theorem",
  "lexical_name": "ideal_span_singleton_map_subset",
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
  "slug": "ideal-span-singleton-map-subset--f68e03b0a7e696705f2fc8bc",
  "source": {
    "blob": "df1e8870497e6d04a682659ce876b190d3884b6a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 464,
    "line": 434,
    "path": "GRWTSK/Algebra/Integral/Variant062b241900f63a7af5fd25c99783d3aa631c19f5fd24a7a91382525b87acc41e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f68e03b0a7e696705f2fc8bc2a0479d7c5b796c6caf23bbabde38700f0cb4a15",
  "verification": {
    "reference": "docs/verification/Algebra/Integral/Variant062b241900f63a7af5fd25c99783d3aa631c19f5fd24a7a91382525b87acc41e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:30dd110f-ef7d-6b2b-09b4-15b2c5d8983a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 434–464.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ideal_span_singleton_map_subset {L : Type*} [IsDomain R] [IsDomain S] [Field K] [Field L]
    [Algebra R K] [Algebra R L] [Algebra S L] [IsIntegralClosure S R L] [IsFractionRing S L]
    [Algebra K L] [IsScalarTower R S L] [IsScalarTower R K L] {a : S} {b : Set S}
    (alg : Algebra.IsAlgebraic R L) (inj : Function.Injective (algebraMap R L))
    (h : (Ideal.span ({a} : Set S) : Set S) ⊆ Submodule.span R b) :
    (Ideal.span ({algebraMap S L a} : Set L) : Set L) ⊆ Submodule.span K (algebraMap S L '' b) := by
  intro x hx
  obtain ⟨x', rfl⟩ := Ideal.mem_span_singleton.mp hx
  obtain ⟨y', z', rfl⟩ := IsLocalization.mk'_surjective S⁰ x'
  obtain ⟨y, z, hz0, yz_eq⟩ :=
    IsIntegralClosure.exists_smul_eq_mul alg inj y' (nonZeroDivisors.coe_ne_zero z')
  have injRS : Function.Injective (algebraMap R S) := by
    refine'
      Function.Injective.of_comp (show Function.Injective (algebraMap S L ∘ algebraMap R S) from _)
    rwa [← RingHom.coe_comp, ← IsScalarTower.algebraMap_eq]
  have hz0' : algebraMap R S z ∈ S⁰ :=
    map_mem_nonZeroDivisors (algebraMap R S) injRS (mem_nonZeroDivisors_of_ne_zero hz0)
  have mk_yz_eq : IsLocalization.mk' L y' z' = IsLocalization.mk' L y ⟨_, hz0'⟩ := by
    rw [Algebra.smul_def, mul_comm _ y, mul_comm _ y'] at yz_eq
    exact IsLocalization.mk'_eq_of_eq (by rw [mul_comm _ y, mul_comm _ y', yz_eq])
  suffices hy : algebraMap S L (a * y) ∈ Submodule.span K ((algebraMap S L) '' b)
  · rw [mk_yz_eq, IsFractionRing.mk'_eq_div, ← IsScalarTower.algebraMap_apply,
      IsScalarTower.algebraMap_apply R K L, div_eq_mul_inv, ← mul_assoc, mul_comm, ← map_inv₀, ←
      Algebra.smul_def, ← _root_.map_mul]
    exact (Submodule.span K _).smul_mem _ hy
  refine' Submodule.span_subset_span R K _ _
  rw [Submodule.span_algebraMap_image_of_tower]
  exact Submodule.mem_map_of_mem (h (Ideal.mem_span_singleton.mpr ⟨y, rfl⟩))
#align is_fraction_ring.ideal_span_singleton_map_subset IsFractionRing.ideal_span_singleton_map_subset

end IsFractionRing
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Integral/Variant062b241900f63a7af5fd25c99783d3aa631c19f5fd24a7a91382525b87acc41e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Integral/Variant062b241900f63a7af5fd25c99783d3aa631c19f5fd24a7a91382525b87acc41e.lean#L434).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `df1e8870497e6d04a682659ce876b190d3884b6a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
