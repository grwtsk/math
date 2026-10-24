# eq_zero_of_polynomial_mem_map_range

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "05896661c7d7f09dd73e3cc95cce5967a4481bd3",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 165,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f4/f4551c1c48f196c3f847abc10b8627ecb31574477c27dec45ceea1919f95882d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3730b589-aad7-44dc-b2e0-8541fd62e9d5",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2cbc4627-1802-a36b-512d-2bed73d6c248",
  "kind": "theorem",
  "lexical_name": "eq_zero_of_polynomial_mem_map_range",
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
  "slug": "eq-zero-of-polynomial-mem-map-range--99edae169d0d7f3282989896",
  "source": {
    "blob": "05896661c7d7f09dd73e3cc95cce5967a4481bd3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 193,
    "line": 165,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Quotient/Variantf4551c1c48f196c3f847abc10b8627ecb31574477c27dec45ceea1919f95882d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:99edae169d0d7f328298989639022bfd8bec1737ca5341612ef7c8447f9de283",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Quotient/Variantf4551c1c48f196c3f847abc10b8627ecb31574477c27dec45ceea1919f95882d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2cbc4627-1802-a36b-512d-2bed73d6c248`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 165–193.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem eq_zero_of_polynomial_mem_map_range (I : Ideal R[X]) (x : ((Quotient.mk I).comp C).range)
    (hx : C x ∈ I.map (Polynomial.mapRingHom ((Quotient.mk I).comp C).rangeRestrict)) : x = 0 := by
  let i := ((Quotient.mk I).comp C).rangeRestrict
  have hi' : RingHom.ker (Polynomial.mapRingHom i) ≤ I := by
    refine fun f hf => polynomial_mem_ideal_of_coeff_mem_ideal I f fun n => ?_
    rw [mem_comap, ← Quotient.eq_zero_iff_mem, ← RingHom.comp_apply]
    rw [RingHom.mem_ker, coe_mapRingHom] at hf
    replace hf := congr_arg (fun f : Polynomial _ => f.coeff n) hf
    simp only [coeff_map, coeff_zero] at hf
    rwa [Subtype.ext_iff, RingHom.coe_rangeRestrict] at hf
  obtain ⟨x, hx'⟩ := x
  obtain ⟨y, rfl⟩ := RingHom.mem_range.1 hx'
  refine Subtype.eq ?_
  simp only [RingHom.comp_apply, Quotient.eq_zero_iff_mem, ZeroMemClass.coe_zero]
  suffices C (i y) ∈ I.map (Polynomial.mapRingHom i) by
    obtain ⟨f, hf⟩ := mem_image_of_mem_map_of_surjective (Polynomial.mapRingHom i)
      (Polynomial.map_surjective _ (RingHom.rangeRestrict_surjective ((Quotient.mk I).comp C))) this
    refine sub_add_cancel (C y) f ▸ I.add_mem (hi' ?_ : C y - f ∈ I) hf.1
    rw [RingHom.mem_ker, RingHom.map_sub, hf.2, sub_eq_zero, coe_mapRingHom, map_C]
  exact hx

end

end Ideal

namespace MvPolynomial

variable {R : Type*} {σ : Type*} [CommRing R] {r : R}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Quotient/Variantf4551c1c48f196c3f847abc10b8627ecb31574477c27dec45ceea1919f95882d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Quotient/Variantf4551c1c48f196c3f847abc10b8627ecb31574477c27dec45ceea1919f95882d.lean#L165).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `05896661c7d7f09dd73e3cc95cce5967a4481bd3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
