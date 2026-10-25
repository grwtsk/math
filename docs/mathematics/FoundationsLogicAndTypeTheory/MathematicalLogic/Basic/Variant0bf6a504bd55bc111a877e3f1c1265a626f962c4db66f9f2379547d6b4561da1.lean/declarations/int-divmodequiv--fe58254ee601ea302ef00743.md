# Int.divModEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c2e58113622cd0e7cd0ca38d56cdeb00e5e622206dbf1d0e79f2f1cecf109ab4",
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
  "slug": "int-divmodequiv--fe58254ee601ea302ef00743",
  "source": {
    "blob": "32f8989b9f3e74e41c9cbee959829c12f61df969",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 402,
    "line": 382,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant0bf6a504bd55bc111a877e3f1c1265a626f962c4db66f9f2379547d6b4561da1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:fe58254ee601ea302ef00743df599409d9231d90d4e4ad20d8e9867acac889e2",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant0bf6a504bd55bc111a877e3f1c1265a626f962c4db66f9f2379547d6b4561da1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c2e58113622cd0e7cd0ca38d56cdeb00e5e622206dbf1d0e79f2f1cecf109ab4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 382–402.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Int.divModEquiv (n : ℕ) [NeZero n] : ℤ ≃ ℤ × Fin n where
  -- TODO: could cast from int directly if we import `Data.ZMod.Defs`, though there are few lemmas
  -- about that coercion.
  toFun a := (a / n, Fin.ofNat n (a.natMod n))
  invFun p := p.1 * n + ↑p.2
  left_inv a := by
    simp_rw [Fin.val_ofNat, natCast_mod, natMod,
      toNat_of_nonneg (emod_nonneg _ <| natCast_eq_zero.not.2 (NeZero.ne n)), emod_emod,
      ediv_mul_add_emod]
  right_inv := fun ⟨q, r, hrn⟩ => by
    simp only [Prod.mk_inj, Fin.ext_iff]
    obtain ⟨h1, h2⟩ := Int.natCast_nonneg r, Int.ofNat_lt.2 hrn
    rw [Int.add_comm, add_mul_ediv_right _ _ (natCast_eq_zero.not.2 (NeZero.ne n)),
      ediv_eq_zero_of_lt h1 h2, natMod, add_mul_emod_self_right, emod_eq_of_lt h1 h2, toNat_natCast]
    exact ⟨q.zero_add, Fin.val_cast_of_lt hrn⟩

/-- Promote a `Fin n` into a larger `Fin m`, as a subtype where the underlying
values are retained.

This is the `Equiv` version of `Fin.castLE`. -/
@[simps apply symm_apply]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant0bf6a504bd55bc111a877e3f1c1265a626f962c4db66f9f2379547d6b4561da1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant0bf6a504bd55bc111a877e3f1c1265a626f962c4db66f9f2379547d6b4561da1.lean#L382).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `32f8989b9f3e74e41c9cbee959829c12f61df969` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
