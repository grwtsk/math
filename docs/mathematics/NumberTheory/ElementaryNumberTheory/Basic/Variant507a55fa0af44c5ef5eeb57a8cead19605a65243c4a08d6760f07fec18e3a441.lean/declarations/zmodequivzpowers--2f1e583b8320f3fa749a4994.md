# zmodEquivZpowers

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e4aa8c13adf928d25cb6e6130d3527c0d7f9104167e7ee9566ced3ffbfd379f3",
  "kind": "def",
  "lexical_name": "zmodEquivZpowers",
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
  "slug": "zmodequivzpowers--2f1e583b8320f3fa749a4994",
  "source": {
    "blob": "16f0e4840a5bd997c0264c5ad2940ff923ee6a9c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 709,
    "line": 685,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/Basic/Variant507a55fa0af44c5ef5eeb57a8cead19605a65243c4a08d6760f07fec18e3a441.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2f1e583b8320f3fa749a4994bdd0d0634de0778376d23af5275ae3440dfb1937",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/Basic/Variant507a55fa0af44c5ef5eeb57a8cead19605a65243c4a08d6760f07fec18e3a441.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e4aa8c13adf928d25cb6e6130d3527c0d7f9104167e7ee9566ced3ffbfd379f3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 685–709.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def zmodEquivZpowers (h : IsPrimitiveRoot ζ k) : ZMod k ≃+ Additive (Subgroup.zpowers ζ) :=
  AddEquiv.ofBijective
    (AddMonoidHom.liftOfRightInverse (Int.castAddHom <| ZMod k) _ ZMod.int_cast_rightInverse
      ⟨{  toFun := fun i => Additive.ofMul (⟨_, i, rfl⟩ : Subgroup.zpowers ζ)
          map_zero' := by simp only [zpow_zero]; rfl
          map_add' := by intro i j; simp only [zpow_add]; rfl }, fun i hi => by
        simp only [AddMonoidHom.mem_ker, CharP.int_cast_eq_zero_iff (ZMod k) k, AddMonoidHom.coe_mk,
          Int.coe_castAddHom] at hi ⊢
        obtain ⟨i, rfl⟩ := hi
        simp [zpow_mul, h.pow_eq_one, one_zpow, zpow_ofNat]⟩)
    (by
      constructor
      · rw [injective_iff_map_eq_zero]
        intro i hi
        rw [Subtype.ext_iff] at hi
        have := (h.zpow_eq_one_iff_dvd _).mp hi
        rw [← (CharP.int_cast_eq_zero_iff (ZMod k) k _).mpr this, eq_comm]
        exact ZMod.int_cast_rightInverse i
      · rintro ⟨ξ, i, rfl⟩
        refine' ⟨Int.castAddHom (ZMod k) i, _⟩
        rw [AddMonoidHom.liftOfRightInverse_comp_apply]
        rfl)
#align is_primitive_root.zmod_equiv_zpowers IsPrimitiveRoot.zmodEquivZpowers

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/Basic/Variant507a55fa0af44c5ef5eeb57a8cead19605a65243c4a08d6760f07fec18e3a441.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/Basic/Variant507a55fa0af44c5ef5eeb57a8cead19605a65243c4a08d6760f07fec18e3a441.lean#L685).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `16f0e4840a5bd997c0264c5ad2940ff923ee6a9c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
