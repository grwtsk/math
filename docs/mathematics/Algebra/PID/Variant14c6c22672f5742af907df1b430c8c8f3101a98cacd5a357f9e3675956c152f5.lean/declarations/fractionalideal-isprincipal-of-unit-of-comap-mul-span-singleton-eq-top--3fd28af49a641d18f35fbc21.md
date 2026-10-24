# FractionalIdeal.isPrincipal_of_unit_of_comap_mul_span_singleton_eq_top

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "44f700c6a30abaa3f68b461753f86cd8a17cda18",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 78,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/14/14c6c22672f5742af907df1b430c8c8f3101a98cacd5a357f9e3675956c152f5.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ce368330-c0cb-2b17-7da2-9358e2c25469",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:eefa5db8-afc7-3784-5fa8-18225a8bebac",
  "kind": "theorem",
  "lexical_name": "FractionalIdeal.isPrincipal_of_unit_of_comap_mul_span_singleton_eq_top",
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
  "slug": "fractionalideal-isprincipal-of-unit-of-comap-mul-span-singleton-eq-top--3fd28af49a641d18f35fbc21",
  "source": {
    "blob": "44f700c6a30abaa3f68b461753f86cd8a17cda18",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 107,
    "line": 78,
    "path": "GRWTSK/Algebra/PID/Variant14c6c22672f5742af907df1b430c8c8f3101a98cacd5a357f9e3675956c152f5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3fd28af49a641d18f35fbc219cc74cb3eccb924d6db472a8684849a91bfe8247",
  "verification": {
    "reference": "docs/verification/Algebra/PID/Variant14c6c22672f5742af907df1b430c8c8f3101a98cacd5a357f9e3675956c152f5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:eefa5db8-afc7-3784-5fa8-18225a8bebac`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 78–107.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem FractionalIdeal.isPrincipal_of_unit_of_comap_mul_span_singleton_eq_top {R A : Type*}
    [CommRing R] [CommRing A] [Algebra R A] {S : Submonoid R} [IsLocalization S A]
    (I : (FractionalIdeal S A)ˣ) {v : A} (hv : v ∈ (↑I⁻¹ : FractionalIdeal S A))
    (h : Submodule.comap (Algebra.linearMap R A) ((I : Submodule R A) * Submodule.span R {v}) = ⊤) :
    Submodule.IsPrincipal (I : Submodule R A) := by
  have hinv := I.mul_inv
  set J := Submodule.comap (Algebra.linearMap R A) ((I : Submodule R A) * Submodule.span R {v})
  have hJ : IsLocalization.coeSubmodule A J = ↑I * Submodule.span R {v} := by
    -- Porting note: had to insert `val_eq_coe` into this rewrite.
    -- Arguably this is because `Subtype.ext_iff` is breaking the `FractionalIdeal` API.
    rw [Subtype.ext_iff, val_eq_coe, coe_mul, val_eq_coe, coe_one] at hinv
    apply Submodule.map_comap_eq_self
    rw [← Submodule.one_eq_range, ← hinv]
    exact Submodule.mul_le_mul_right ((Submodule.span_singleton_le_iff_mem _ _).2 hv)
  have : (1 : A) ∈ ↑I * Submodule.span R {v} := by
    rw [← hJ, h, IsLocalization.coeSubmodule_top, Submodule.mem_one]
    exact ⟨1, (algebraMap R _).map_one⟩
  obtain ⟨w, hw, hvw⟩ := Submodule.mem_mul_span_singleton.1 this
  refine ⟨⟨w, ?_⟩⟩
  rw [← FractionalIdeal.coe_spanSingleton S, ← inv_inv I, eq_comm]
  refine congr_arg coeToSubmodule (Units.eq_inv_of_mul_eq_one_left (le_antisymm ?_ ?_))
  · conv_rhs => rw [← hinv, mul_comm]
    apply FractionalIdeal.mul_le_mul_left (FractionalIdeal.spanSingleton_le_iff_mem.mpr hw)
  · rw [FractionalIdeal.one_le, ← hvw, mul_comm]
    exact FractionalIdeal.mul_mem_mul (FractionalIdeal.mem_spanSingleton_self _ _) hv

/--
An invertible fractional ideal of a commutative ring with finitely many maximal ideals is principal.

https://math.stackexchange.com/a/95857 -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/PID/Variant14c6c22672f5742af907df1b430c8c8f3101a98cacd5a357f9e3675956c152f5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/PID/Variant14c6c22672f5742af907df1b430c8c8f3101a98cacd5a357f9e3675956c152f5.lean#L78).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `44f700c6a30abaa3f68b461753f86cd8a17cda18` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
