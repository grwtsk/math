# Int.divModEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c16277cf896b546adb32a1a7e25af552d598bd48705f611c6c3e550ef35d8068",
  "kind": "def",
  "lexical_name": "Int.divModEquiv",
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
  "slug": "int-divmodequiv--f41ab7e5c8f2d3a316ddde9f",
  "source": {
    "blob": "296d66aeeb76eee2261115d14f3006bcff607c87",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 536,
    "line": 517,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Fin/Variant57e87948eb41ba5729aa65b6651fdc7d27ce8a34c147ad51814914298d79a0bc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f41ab7e5c8f2d3a316ddde9fc1eea050a93dd391e9b5684b5ebba875ebf76832",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Fin/Variant57e87948eb41ba5729aa65b6651fdc7d27ce8a34c147ad51814914298d79a0bc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c16277cf896b546adb32a1a7e25af552d598bd48705f611c6c3e550ef35d8068`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 517–536.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Int.divModEquiv (n : ℕ) [NeZero n] : ℤ ≃ ℤ × Fin n where
  -- TODO: could cast from int directly if we import `data.zmod.defs`, though there are few lemmas
  -- about that coercion.
  toFun a := (a / n, ↑(a.natMod n))
  invFun p := p.1 * n + ↑p.2
  left_inv a := by
    simp_rw [Fin.coe_ofNat_eq_mod, Int.coe_nat_mod, Int.natMod,
      Int.toNat_of_nonneg (Int.emod_nonneg _ <| NeZero.ne ↑n), Int.emod_emod,
      Int.ediv_add_emod']
  right_inv := fun ⟨q, r, hrn⟩ => by
    simp only [Fin.val_mk, Prod.mk.inj_iff, Fin.ext_iff]
    obtain ⟨h1, h2⟩ := Int.coe_nat_nonneg r, Int.ofNat_lt.2 hrn
    rw [add_comm, Int.add_mul_ediv_right _ _ (NeZero.ne ↑n), Int.ediv_eq_zero_of_lt h1 h2,
      Int.natMod, Int.add_mul_emod_self, Int.emod_eq_of_lt h1 h2, Int.toNat_coe_nat]
    exact ⟨zero_add q, Fin.val_cast_of_lt hrn⟩
#align int.div_mod_equiv Int.divModEquiv

/-- Promote a `Fin n` into a larger `Fin m`, as a subtype where the underlying
values are retained. This is the `OrderIso` version of `Fin.castLE`. -/
@[simps apply symm_apply]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Fin/Variant57e87948eb41ba5729aa65b6651fdc7d27ce8a34c147ad51814914298d79a0bc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Fin/Variant57e87948eb41ba5729aa65b6651fdc7d27ce8a34c147ad51814914298d79a0bc.lean#L517).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `296d66aeeb76eee2261115d14f3006bcff607c87` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
