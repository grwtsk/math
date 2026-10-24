# equivSubgroupOrbitsQuotientGroup

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:553610d6a571fa9ea564ea2ffe2be9c096132ac0d5cac9c97c79cf61b620d0a5",
  "kind": "def",
  "lexical_name": "equivSubgroupOrbitsQuotientGroup",
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
  "slug": "equivsubgrouporbitsquotientgroup--662ebe71d5d7e8d90c22b85b",
  "source": {
    "blob": "b995dc7840811a377de242c064c81d7240b30073",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 408,
    "line": 365,
    "path": "GRWTSK/Algebra/GroupTheory/Quotient/Variante31e15b4feed1d72dcc9b9ee7828ac1cc3198e6e9e001273fb662518225f12e6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:662ebe71d5d7e8d90c22b85b203249d8c3a4de36a0b67970012c32df117a5d8b",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Quotient/Variante31e15b4feed1d72dcc9b9ee7828ac1cc3198e6e9e001273fb662518225f12e6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:553610d6a571fa9ea564ea2ffe2be9c096132ac0d5cac9c97c79cf61b620d0a5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 365–408.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def equivSubgroupOrbitsQuotientGroup [IsPretransitive α β]
    (free : ∀ y : β, MulAction.stabilizer α y = ⊥) (H : Subgroup α) :
    orbitRel.Quotient H β ≃ α ⧸ H where
  toFun := fun q ↦ q.liftOn' (fun y ↦ (exists_smul_eq α y x).choose) (by
    intro y₁ y₂ h
    rw [orbitRel_apply] at h
    rw [Quotient.eq'', leftRel_eq]
    dsimp only
    rcases h with ⟨g, rfl⟩
    dsimp only
    suffices (exists_smul_eq α (g • y₂) x).choose = (exists_smul_eq α y₂ x).choose * g⁻¹ by
      simp [this]
    rw [← inv_mul_eq_one, ← Subgroup.mem_bot, ← free ((g : α) • y₂)]
    simp only [mem_stabilizer_iff, smul_smul, mul_assoc, InvMemClass.coe_inv, inv_mul_cancel,
               mul_one]
    rw [← smul_smul, (exists_smul_eq α y₂ x).choose_spec, inv_smul_eq_iff,
        (exists_smul_eq α ((g : α) • y₂) x).choose_spec])
  invFun := fun q ↦ q.liftOn' (fun g ↦ ⟦g⁻¹ • x⟧) (by
    intro g₁ g₂ h
    rw [leftRel_eq] at h
    simp only
    rw [← @Quotient.mk''_eq_mk, Quotient.eq'', orbitRel_apply]
    exact ⟨⟨_, h⟩, by simp [mul_smul]⟩)
  left_inv := fun y ↦ by
    induction' y using Quotient.inductionOn' with y
    simp only [Quotient.liftOn'_mk'']
    rw [← @Quotient.mk''_eq_mk, Quotient.eq'', orbitRel_apply]
    convert mem_orbit_self _
    rw [inv_smul_eq_iff, (exists_smul_eq α y x).choose_spec]
  right_inv := fun g ↦ by
    induction' g using Quotient.inductionOn' with g
    simp only [Quotient.liftOn'_mk'', Quotient.liftOn'_mk, QuotientGroup.mk]
    rw [Quotient.eq'', leftRel_eq]
    simp only
    convert one_mem H
    · rw [inv_mul_eq_one, eq_comm, ← inv_mul_eq_one, ← Subgroup.mem_bot, ← free (g⁻¹ • x),
        mem_stabilizer_iff, mul_smul, (exists_smul_eq α (g⁻¹ • x) x).choose_spec]

/-- If `α` acts on `β` with trivial stabilizers, `β` is equivalent
to the product of the quotient of `β` by `α` and `α`.
See `MulAction.selfEquivOrbitsQuotientProd` with `φ = Quotient.out`. -/
@[to_additive selfEquivOrbitsQuotientProd' "If `α` acts freely on `β`, `β` is equivalent
to the product of the quotient of `β` by `α` and `α`.
See `AddAction.selfEquivOrbitsQuotientProd` with `φ = Quotient.out`."]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Quotient/Variante31e15b4feed1d72dcc9b9ee7828ac1cc3198e6e9e001273fb662518225f12e6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Quotient/Variante31e15b4feed1d72dcc9b9ee7828ac1cc3198e6e9e001273fb662518225f12e6.lean#L365).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b995dc7840811a377de242c064c81d7240b30073` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
