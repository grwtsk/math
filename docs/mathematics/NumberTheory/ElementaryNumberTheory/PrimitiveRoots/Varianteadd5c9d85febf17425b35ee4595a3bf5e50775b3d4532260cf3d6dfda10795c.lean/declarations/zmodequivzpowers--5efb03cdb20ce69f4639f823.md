# zmodEquivZPowers

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7d5403a95edd3b0c47cb99840fcfc3a730ee370a89032ae467cba16beb329e55",
  "kind": "def",
  "lexical_name": "zmodEquivZPowers",
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
  "slug": "zmodequivzpowers--5efb03cdb20ce69f4639f823",
  "source": {
    "blob": "9ef59be2ed2adac4f4bf70ef4ce09e6425053ec9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 456,
    "line": 433,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/PrimitiveRoots/Varianteadd5c9d85febf17425b35ee4595a3bf5e50775b3d4532260cf3d6dfda10795c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5efb03cdb20ce69f4639f823a4d319d8317a5b8cc2a2c85e43f2241dc88ee039",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/PrimitiveRoots/Varianteadd5c9d85febf17425b35ee4595a3bf5e50775b3d4532260cf3d6dfda10795c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7d5403a95edd3b0c47cb99840fcfc3a730ee370a89032ae467cba16beb329e55`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 433–456.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def zmodEquivZPowers (h : IsPrimitiveRoot ζ k) : ZMod k ≃+ Additive (Subgroup.zpowers ζ) :=
  AddEquiv.ofBijective
    (AddMonoidHom.liftOfRightInverse (Int.castAddHom <| ZMod k) _ ZMod.intCast_rightInverse
      ⟨{  toFun := fun i ↦ Additive.ofMul (⟨_, i, rfl⟩ : Subgroup.zpowers ζ)
          map_zero' := by simp only [zpow_zero]; rfl
          map_add' := by intro i j; simp only [zpow_add]; rfl }, fun i hi ↦ by
        simp only [AddMonoidHom.mem_ker, CharP.intCast_eq_zero_iff (ZMod k) k, AddMonoidHom.coe_mk,
          Int.coe_castAddHom] at hi ⊢
        obtain ⟨i, rfl⟩ := hi
        simp [zpow_mul, h.pow_eq_one, one_zpow, zpow_natCast]⟩)
    (by
      constructor
      · rw [injective_iff_map_eq_zero]
        intro i hi
        rw [Subtype.ext_iff] at hi
        have := (h.zpow_eq_one_iff_dvd _).mp hi
        rw [← (CharP.intCast_eq_zero_iff (ZMod k) k _).mpr this, eq_comm]
        exact ZMod.intCast_rightInverse i
      · rintro ⟨ξ, i, rfl⟩
        refine ⟨Int.castAddHom (ZMod k) i, ?_⟩
        rw [AddMonoidHom.liftOfRightInverse_comp_apply]
        rfl)

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/PrimitiveRoots/Varianteadd5c9d85febf17425b35ee4595a3bf5e50775b3d4532260cf3d6dfda10795c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/PrimitiveRoots/Varianteadd5c9d85febf17425b35ee4595a3bf5e50775b3d4532260cf3d6dfda10795c.lean#L433).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9ef59be2ed2adac4f4bf70ef4ce09e6425053ec9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
