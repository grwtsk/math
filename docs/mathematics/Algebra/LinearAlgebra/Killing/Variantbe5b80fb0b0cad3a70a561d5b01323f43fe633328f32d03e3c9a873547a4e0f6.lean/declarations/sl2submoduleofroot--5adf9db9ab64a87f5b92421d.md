# sl2SubmoduleOfRoot

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d80c15a0f268266c9a0874dcc1bb18ad8f18bed0e2a152ab84e7d61df2af4686",
  "kind": "def",
  "lexical_name": "sl2SubmoduleOfRoot",
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
  "slug": "sl2submoduleofroot--5adf9db9ab64a87f5b92421d",
  "source": {
    "blob": "e791bdea83445f8858ba631e4b6119286bce2203",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 699,
    "line": 680,
    "path": "GRWTSK/Algebra/LinearAlgebra/Killing/Variantbe5b80fb0b0cad3a70a561d5b01323f43fe633328f32d03e3c9a873547a4e0f6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5adf9db9ab64a87f5b92421d98a505e376d52caab2406d38e46329db6ee7a68e",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Killing/Variantbe5b80fb0b0cad3a70a561d5b01323f43fe633328f32d03e3c9a873547a4e0f6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d80c15a0f268266c9a0874dcc1bb18ad8f18bed0e2a152ab84e7d61df2af4686`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 680–699.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def sl2SubmoduleOfRoot {α : Weight K H L} (hα : α.IsNonZero) :
    LieSubmodule K H L where
  __ := sl2SubalgebraOfRoot hα
  lie_mem {h} x hx := by
    suffices ⁅(h : L), x⁆ ∈ sl2SubalgebraOfRoot hα by simpa
    obtain ⟨h', e, f, ht, heα, hfα⟩ := exists_isSl2Triple_of_weight_isNonZero hα
    replace hx : x ∈ sl2SubalgebraOfRoot hα := hx
    obtain ⟨c₁, c₂, c₃, rfl⟩ := (mem_sl2SubalgebraOfRoot_iff hα ht heα hfα).mp hx
    rw [mem_sl2SubalgebraOfRoot_iff hα ht heα hfα, lie_add, lie_add, lie_smul, lie_smul, lie_smul]
    have he_wt : ⁅(h : L), e⁆ = α h • e := lie_eq_smul_of_mem_rootSpace heα h
    have hf_wt : ⁅(h : L), f⁆ = (-α) h • f := lie_eq_smul_of_mem_rootSpace hfα h
    have hef_zero : ⁅(h : L), ⁅e, f⁆⁆ = 0 := by
      suffices h_coroot_in_zero : ⁅e, f⁆ ∈ rootSpace H (0 : H → K) from
        lie_eq_smul_of_mem_rootSpace h_coroot_in_zero h ▸ (zero_smul K ⁅e, f⁆)
      rw [ht.lie_e_f, IsSl2Triple.h_eq_coroot hα ht heα hfα, rootSpace_zero_eq K L H]
      exact (coroot α).property
    exact ⟨c₁ * α h, c₂ * (-α h), 0, by simp [he_wt, hf_wt, hef_zero, smul_smul]⟩

/-- The coroot space of `α` viewed as a submodule of the ambient Lie algebra `L`.
This represents the image of the coroot space under the inclusion `H ↪ L`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Killing/Variantbe5b80fb0b0cad3a70a561d5b01323f43fe633328f32d03e3c9a873547a4e0f6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Killing/Variantbe5b80fb0b0cad3a70a561d5b01323f43fe633328f32d03e3c9a873547a4e0f6.lean#L680).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e791bdea83445f8858ba631e4b6119286bce2203` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
