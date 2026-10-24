# ringEquivOfRingEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f9422052f08e2f3a1a585976a9b70c4a26b77c19efc21d17275662523fd8fd6b",
  "kind": "def",
  "lexical_name": "ringEquivOfRingEquiv",
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
  "slug": "ringequivofringequiv--bcb5bd5421ad85d98b3684cc",
  "source": {
    "blob": "dd6730c6a47630e985c9af8d188432478b0c8295",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 977,
    "line": 953,
    "path": "GRWTSK/Algebra/Operations/Varianta1654cbaee27fcfeb35a0acc76b74040c1e7488a9e5edb65fd2587cfeeaaae1e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:bcb5bd5421ad85d98b3684cc58cd753fc299d864acfcbb2e96cb1cc77b070f0d",
  "verification": {
    "reference": "docs/verification/Algebra/Operations/Varianta1654cbaee27fcfeb35a0acc76b74040c1e7488a9e5edb65fd2587cfeeaaae1e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f9422052f08e2f3a1a585976a9b70c4a26b77c19efc21d17275662523fd8fd6b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 953–977.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def ringEquivOfRingEquiv :
    FractionalIdeal R⁰ K ≃+* FractionalIdeal S⁰ L :=
  { toFun I := ⟨Submodule.map (semilinearEquivOfRingEquiv _ _ f).toLinearMap I.val,
      IsFractional.mapEquiv K L f I.prop⟩
    invFun J := ⟨J.val.map (semilinearEquivOfRingEquiv _ _ f.symm).toLinearMap,
      IsFractional.mapEquiv L K f.symm J.prop⟩
    map_add' I J := by ext x; simp [← mem_coe]
    map_mul' I J := by
      simp only [FractionalIdeal.coe_ext_iff, val_eq_coe, coe_mul, coe_mk]
      apply le_antisymm <;> simp only [map_le_iff_le_comap, Submodule.mul_le, mem_coe, mem_comap,
          semilinearEquivOfRingEquiv_apply, map_mul, mem_map_equiv,
          semilinearEquivOfRingEquiv_symm_apply, LinearEquiv.coe_coe]
      · exact fun m hm n hn ↦ Submodule.mul_mem_mul (mem_map_of_mem hm) (mem_map_of_mem hn)
      · exact fun m hm n hn ↦ Submodule.mul_mem_mul hm hn
    left_inv I := by
      simp only [RingEquiv.symm_symm, val_eq_coe, ← Submodule.map_comp, LinearEquiv.comp_coe,
        coe_ext_iff, coe_mk]
      convert! Submodule.map_id _
      ext; simp [semilinearEquivOfRingEquiv, IsLocalization.map_map]
    right_inv I := by
      simp only [RingEquiv.symm_symm, val_eq_coe, ← Submodule.map_comp, LinearEquiv.comp_coe,
        coe_ext_iff, coe_mk]
      convert! Submodule.map_id _
      ext; simp [semilinearEquivOfRingEquiv, IsLocalization.map_map]}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Operations/Varianta1654cbaee27fcfeb35a0acc76b74040c1e7488a9e5edb65fd2587cfeeaaae1e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Operations/Varianta1654cbaee27fcfeb35a0acc76b74040c1e7488a9e5edb65fd2587cfeeaaae1e.lean#L953).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dd6730c6a47630e985c9af8d188432478b0c8295` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
