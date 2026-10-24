# isFractionRing_of_algebraic

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:04e9047c-2797-3504-4da3-dd802a2c0316",
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
  "slug": "isfractionring-of-algebraic--7d0cdf0f107d299c7c7cdf66",
  "source": {
    "blob": "47e77b2089ede885a91aba69854889b8618910d1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 353,
    "line": 330,
    "path": "GRWTSK/Algebra/Integral/Variant40689d8aeb71d1b5e99da616ee014b1eb2481bc389a72c9065b06407fa082f6a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7d0cdf0f107d299c7c7cdf66178afbcae44fbbdedc648cd396eed273482a8984",
  "verification": {
    "reference": "docs/verification/Algebra/Integral/Variant40689d8aeb71d1b5e99da616ee014b1eb2481bc389a72c9065b06407fa082f6a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:04e9047c-2797-3504-4da3-dd802a2c0316`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 330–353.

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

[Verification target and public status](../../../../../verification/Algebra/Integral/Variant40689d8aeb71d1b5e99da616ee014b1eb2481bc389a72c9065b06407fa082f6a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Integral/Variant40689d8aeb71d1b5e99da616ee014b1eb2481bc389a72c9065b06407fa082f6a.lean#L330).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `47e77b2089ede885a91aba69854889b8618910d1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
