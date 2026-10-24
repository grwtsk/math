# autToPow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:fdf1570f690a6aa6907de86468328c5d39331e7d828be5596764342916f12775",
  "kind": "def",
  "lexical_name": "autToPow",
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
  "slug": "auttopow--3fcb0ba715213f1e11c9adc6",
  "source": {
    "blob": "b726ff08f6710c6c8b5891d667b57d2ceb60dbd3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 729,
    "line": 699,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/PrimitiveRoots/Variant0c1eda44d8e36baf713e3c53c0f96f0f5b22201289490b4c6e3061090c57e0da.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3fcb0ba715213f1e11c9adc6f022a253323ecff7715275581bac167a72acf07f",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/PrimitiveRoots/Variant0c1eda44d8e36baf713e3c53c0f96f0f5b22201289490b4c6e3061090c57e0da.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:fdf1570f690a6aa6907de86468328c5d39331e7d828be5596764342916f12775`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 699–729.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def autToPow [NeZero n] : (S ≃ₐ[R] S) →* (ZMod n)ˣ :=
  let μ' := hμ.toRootsOfUnity
  have ho : orderOf μ' = n := by
    refine Eq.trans ?_ hμ.eq_orderOf.symm -- `rw [hμ.eq_orderOf]` gives "motive not type correct"
    rw [← hμ.val_toRootsOfUnity_coe, orderOf_units, Subgroup.orderOf_coe]
  MonoidHom.toHomUnits
    { toFun := fun σ ↦ (map_rootsOfUnity_eq_pow_self σ.toAlgHom μ').choose
      map_one' := by
        generalize_proofs h1
        have h := h1.choose_spec
        replace h : μ' = μ' ^ h1.choose :=
          rootsOfUnity.coe_injective (by simpa only [rootsOfUnity.coe_pow] using h)
        nth_rw 1 [← pow_one μ'] at h
        convert ho ▸ (ZMod.natCast_eq_natCast_iff ..).mpr (pow_eq_pow_iff_modEq.mp h).symm
        exact Nat.cast_one.symm
      map_mul' := by
        intro x y
        generalize_proofs hxy' hx' hy'
        have hxy := hxy'.choose_spec
        replace hxy : x (((μ' : Sˣ) : S) ^ hy'.choose) = ((μ' : Sˣ) : S) ^ hxy'.choose :=
          hy'.choose_spec ▸ hxy
        rw [map_pow] at hxy
        replace hxy : (((μ' : Sˣ) : S) ^ hx'.choose) ^ hy'.choose = ((μ' : Sˣ) : S) ^ hxy'.choose :=
          hx'.choose_spec ▸ hxy
        rw [← pow_mul] at hxy
        replace hxy : μ' ^ (hx'.choose * hy'.choose) = μ' ^ hxy'.choose :=
          rootsOfUnity.coe_injective (by simpa only [rootsOfUnity.coe_pow] using hxy)
        convert ho ▸ (ZMod.natCast_eq_natCast_iff ..).mpr (pow_eq_pow_iff_modEq.mp hxy).symm
        exact (Nat.cast_mul ..).symm }

-- We are not using @[simps] in `autToPow` to avoid a timeout.
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/PrimitiveRoots/Variant0c1eda44d8e36baf713e3c53c0f96f0f5b22201289490b4c6e3061090c57e0da.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/PrimitiveRoots/Variant0c1eda44d8e36baf713e3c53c0f96f0f5b22201289490b4c6e3061090c57e0da.lean#L699).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b726ff08f6710c6c8b5891d667b57d2ceb60dbd3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
