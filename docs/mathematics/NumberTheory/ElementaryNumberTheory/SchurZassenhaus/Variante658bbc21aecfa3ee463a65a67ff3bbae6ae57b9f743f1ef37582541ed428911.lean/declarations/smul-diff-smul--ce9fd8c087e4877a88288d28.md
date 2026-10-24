# smul_diff_smul'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9dc45971-92cd-a0a5-abbc-872f34049069",
  "kind": "theorem",
  "lexical_name": "smul_diff_smul'",
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
  "slug": "smul-diff-smul--ce9fd8c087e4877a88288d28",
  "source": {
    "blob": "e3d76d5379263a76b6040b4707be7cd4d58e9b11",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 69,
    "line": 51,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/SchurZassenhaus/Variante658bbc21aecfa3ee463a65a67ff3bbae6ae57b9f743f1ef37582541ed428911.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ce9fd8c087e4877a88288d2889add590ee4b80d7ffade8cec2069716f33b6a50",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/SchurZassenhaus/Variante658bbc21aecfa3ee463a65a67ff3bbae6ae57b9f743f1ef37582541ed428911.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9dc45971-92cd-a0a5-abbc-872f34049069`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 51–69.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem smul_diff_smul' [hH : Normal H] (g : Gᵐᵒᵖ) :
    diff (MonoidHom.id H) (g • α) (g • β) =
      ⟨g.unop⁻¹ * (diff (MonoidHom.id H) α β : H) * g.unop,
        hH.mem_comm ((congr_arg (· ∈ H) (mul_inv_cancel_left _ _)).mpr (SetLike.coe_mem _))⟩ := by
  letI := H.fintypeQuotientOfFiniteIndex
  let ϕ : H →* H :=
    { toFun := fun h =>
        ⟨g.unop⁻¹ * h * g.unop,
          hH.mem_comm ((congr_arg (· ∈ H) (mul_inv_cancel_left _ _)).mpr (SetLike.coe_mem _))⟩
      map_one' := by rw [Subtype.ext_iff, coe_mk, coe_one, mul_one, inv_mul_cancel]
      map_mul' := fun h₁ h₂ => by
        simp only [Subtype.ext_iff, coe_mk, coe_mul, mul_assoc, mul_inv_cancel_left] }
  refine (Fintype.prod_equiv (MulAction.toPerm g).symm _ _ fun x ↦ ?_).trans (map_prod ϕ _ _).symm
  simp only [ϕ, smul_apply_eq_smul_apply_inv_smul, smul_eq_mul_unop, mul_inv_rev, mul_assoc,
    MonoidHom.id_apply, toPerm_symm_apply, MonoidHom.coe_mk, OneHom.coe_mk]

variable {H}
variable [Normal H]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/SchurZassenhaus/Variante658bbc21aecfa3ee463a65a67ff3bbae6ae57b9f743f1ef37582541ed428911.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/SchurZassenhaus/Variante658bbc21aecfa3ee463a65a67ff3bbae6ae57b9f743f1ef37582541ed428911.lean#L51).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e3d76d5379263a76b6040b4707be7cd4d58e9b11` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
