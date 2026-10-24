# isFractionRing_of_algebraic

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
      "line": 322,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/06/062b241900f63a7af5fd25c99783d3aa631c19f5fd24a7a91382525b87acc41e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e4fff537-e1a6-c050-3e9e-74db6d6b71a0",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a4fe50e9-7e4f-2383-9460-d2b584969036",
  "kind": "theorem",
  "lexical_name": "isFractionRing_of_algebraic",
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
  "slug": "isfractionring-of-algebraic--1a0a3b87452bb2e20b0652b5",
  "source": {
    "blob": "df1e8870497e6d04a682659ce876b190d3884b6a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 345,
    "line": 322,
    "path": "GRWTSK/Algebra/Integral/Variant062b241900f63a7af5fd25c99783d3aa631c19f5fd24a7a91382525b87acc41e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1a0a3b87452bb2e20b0652b5ec58953e0339df581217eb08705a5b05bb8cf68b",
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

Occurrence: `result:a4fe50e9-7e4f-2383-9460-d2b584969036`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 322–345.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isFractionRing_of_algebraic (alg : IsAlgebraic A L)
    (inj : ∀ x, algebraMap A L x = 0 → x = 0) : IsFractionRing C L :=
  { map_units' := fun ⟨y, hy⟩ =>
      IsUnit.mk0 _
        (show algebraMap C L y ≠ 0 from fun h =>
          mem_nonZeroDivisors_iff_ne_zero.mp hy
            ((injective_iff_map_eq_zero (algebraMap C L)).mp (algebraMap_injective C A L) _ h))
    surj' := fun z =>
      let ⟨x, y, hy, hxy⟩ := exists_integral_multiple (alg z) inj
      ⟨⟨mk' C (x : L) x.2, algebraMap _ _ y,
          mem_nonZeroDivisors_iff_ne_zero.mpr fun h =>
            hy (inj _ (by rw [IsScalarTower.algebraMap_apply A C L, h, RingHom.map_zero]))⟩,
        by
          simp only
          rw [algebraMap_mk', ← IsScalarTower.algebraMap_apply A C L, hxy]⟩
    eq_iff_exists' := fun {x y} =>
      ⟨fun h => ⟨1, by simpa using algebraMap_injective C A L h⟩, fun ⟨c, hc⟩ =>
        congr_arg (algebraMap _ L) (mul_left_cancel₀ (mem_nonZeroDivisors_iff_ne_zero.mp c.2) hc)⟩ }
#align is_integral_closure.is_fraction_ring_of_algebraic IsIntegralClosure.isFractionRing_of_algebraic

variable (K L)

/-- If the field `L` is a finite extension of the fraction field of the integral domain `A`,
the integral closure `C` of `A` in `L` has fraction field `L`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Integral/Variant062b241900f63a7af5fd25c99783d3aa631c19f5fd24a7a91382525b87acc41e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Integral/Variant062b241900f63a7af5fd25c99783d3aa631c19f5fd24a7a91382525b87acc41e.lean#L322).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `df1e8870497e6d04a682659ce876b190d3884b6a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
