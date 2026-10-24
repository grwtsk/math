# FractionalIdeal.isPrincipal_of_unit_of_comap_mul_span_singleton_eq_top

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9007ccc8-a443-f621-80c0-e39ba44f3351",
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
  "slug": "fractionalideal-isprincipal-of-unit-of-comap-mul-span-singleton-eq-top--820d87232c8551d863094763",
  "source": {
    "blob": "fff911466722f4890a4079e480f5388df6735adb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 115,
    "line": 86,
    "path": "GRWTSK/Algebra/PID/Variant6ea7b125cb7e8ed91b6a96d2329604355159ada0f1ae9c6a4b159c8c8a203b6c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:820d87232c8551d8630947630feb3836184cde471d9deaf3606b2a8b63fbaa91",
  "verification": {
    "reference": "docs/verification/Algebra/PID/Variant6ea7b125cb7e8ed91b6a96d2329604355159ada0f1ae9c6a4b159c8c8a203b6c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9007ccc8-a443-f621-80c0-e39ba44f3351`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 86–115.

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

[Verification target and public status](../../../../../verification/Algebra/PID/Variant6ea7b125cb7e8ed91b6a96d2329604355159ada0f1ae9c6a4b159c8c8a203b6c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/PID/Variant6ea7b125cb7e8ed91b6a96d2329604355159ada0f1ae9c6a4b159c8c8a203b6c.lean#L86).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fff911466722f4890a4079e480f5388df6735adb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
