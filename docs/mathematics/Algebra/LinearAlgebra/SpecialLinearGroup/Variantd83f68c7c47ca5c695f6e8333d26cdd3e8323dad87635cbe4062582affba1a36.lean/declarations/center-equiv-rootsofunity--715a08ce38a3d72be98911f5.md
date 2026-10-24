# center_equiv_rootsOfUnity'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5ec4fc8ec4ea942801d732c04f3c89f7717cc19cfe84888c68ddc8755485f438",
  "kind": "def",
  "lexical_name": "center_equiv_rootsOfUnity'",
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
  "slug": "center-equiv-rootsofunity--715a08ce38a3d72be98911f5",
  "source": {
    "blob": "2336b1615bef41d2a93efe72389be2b1f6172533",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 304,
    "line": 277,
    "path": "GRWTSK/Algebra/LinearAlgebra/SpecialLinearGroup/Variantd83f68c7c47ca5c695f6e8333d26cdd3e8323dad87635cbe4062582affba1a36.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:715a08ce38a3d72be98911f5da801a5a2845a9b72d91da2a35fba526c7e1d966",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/SpecialLinearGroup/Variantd83f68c7c47ca5c695f6e8333d26cdd3e8323dad87635cbe4062582affba1a36.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5ec4fc8ec4ea942801d732c04f3c89f7717cc19cfe84888c68ddc8755485f438`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 277–304.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def center_equiv_rootsOfUnity' (i : n) :
    center (SpecialLinearGroup n R) ≃* rootsOfUnity (Fintype.card n) R where
  toFun A :=
    haveI : Nonempty n := ⟨i⟩
    rootsOfUnity.mkOfPowEq (↑ₘA i i) <| by
      obtain ⟨r, hr, hr'⟩ := mem_center_iff.mp A.property
      replace hr' : A.val i i = r := by simp only [← hr', scalar_apply, diagonal_apply_eq]
      simp only [hr', hr]
  invFun a := ⟨⟨a • (1 : Matrix n n R), by aesop⟩,
    Subgroup.mem_center_iff.mpr fun B ↦ Subtype.val_injective <| by simp [coe_mul]⟩
  left_inv A := by
    refine SetCoe.ext <| SetCoe.ext ?_
    obtain ⟨r, _, hr⟩ := mem_center_iff.mp A.property
    simpa [← hr, Submonoid.smul_def, Units.smul_def] using! smul_one_eq_diagonal r
  right_inv a := by
    obtain ⟨⟨a, _⟩, ha⟩ := a
    exact SetCoe.ext <| Units.ext <| by simp
  map_mul' A B := by
    dsimp
    ext
    simp only [rootsOfUnity.val_mkOfPowEq_coe, Subgroup.coe_mul, Units.val_mul]
    rw [← scalar_eq_coe_self_center A i, ← scalar_eq_coe_self_center B i]
    simp

open scoped Classical in
/-- An equivalence of groups, from the center of the special linear group to the roots of unity.

See also `center_equiv_rootsOfUnity'`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/SpecialLinearGroup/Variantd83f68c7c47ca5c695f6e8333d26cdd3e8323dad87635cbe4062582affba1a36.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/SpecialLinearGroup/Variantd83f68c7c47ca5c695f6e8333d26cdd3e8323dad87635cbe4062582affba1a36.lean#L277).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2336b1615bef41d2a93efe72389be2b1f6172533` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
