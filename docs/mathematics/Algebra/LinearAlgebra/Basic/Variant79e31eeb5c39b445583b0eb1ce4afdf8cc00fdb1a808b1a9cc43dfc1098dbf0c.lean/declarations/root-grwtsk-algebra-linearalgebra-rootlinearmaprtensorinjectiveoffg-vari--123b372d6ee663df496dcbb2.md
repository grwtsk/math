# _root_.GRWTSK.Algebra.LinearAlgebra.RootLinearMapRTensorInjectiveOfFg.Variant0c72413b159a3bc60bd517b3aae066ee0c246620b4ad250728f776a2cf53fcf4.LinearMap.rTensor_injective_of_fg

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ef44b8f2-ea63-8e5d-53cf-55f4abdbc039",
  "kind": "theorem",
  "lexical_name": "_root_.GRWTSK.Algebra.LinearAlgebra.RootLinearMapRTensorInjectiveOfFg.Variant0c72413b159a3bc60bd517b3aae066ee0c246620b4ad250728f776a2cf53fcf4.LinearMap.rTensor_injective_of_fg",
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
  "slug": "root-grwtsk-algebra-linearalgebra-rootlinearmaprtensorinjectiveoffg-vari--123b372d6ee663df496dcbb2",
  "source": {
    "blob": "f17ec10cf8724970eb2b234501ecf13949b5dc63",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 105,
    "line": 93,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variant79e31eeb5c39b445583b0eb1ce4afdf8cc00fdb1a808b1a9cc43dfc1098dbf0c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:123b372d6ee663df496dcbb2ae412cda92d4819de8de42574715357e9f93153d",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basic/Variant79e31eeb5c39b445583b0eb1ce4afdf8cc00fdb1a808b1a9cc43dfc1098dbf0c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ef44b8f2-ea63-8e5d-53cf-55f4abdbc039`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 93–105.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.GRWTSK.Algebra.LinearAlgebra.RootLinearMapRTensorInjectiveOfFg.Variant0c72413b159a3bc60bd517b3aae066ee0c246620b4ad250728f776a2cf53fcf4.LinearMap.rTensor_injective_of_fg {f : N →ₗ[R] P}
    (h : ∀ (N' : Submodule R N) (P' : Submodule R P),
      N'.FG → P'.FG → ∀ h : N' ≤ P'.comap f, Function.Injective ((f.restrict h).rTensor M)) :
    Function.Injective (f.rTensor M) := fun x y eq ↦ by
  have ⟨N', Nfg, sub⟩ := Submodule.exists_fg_le_subset_range_rTensor_subtype {x, y} (by simp)
  obtain ⟨x, rfl⟩ := sub (.inl rfl)
  obtain ⟨y, rfl⟩ := sub (.inr rfl)
  simp_rw [← rTensor_comp_apply, show f ∘ₗ N'.subtype = (N'.map f).subtype ∘ₗ f.submoduleMap N'
    from rfl, rTensor_comp_apply] at eq
  have ⟨P', Pfg, le, eq⟩ := (Nfg.map _).exists_rTensor_fg_inclusion_eq eq
  simp_rw [← rTensor_comp_apply] at eq
  rw [h _ _ Nfg Pfg (map_le_iff_le_comap.mp le) eq]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basic/Variant79e31eeb5c39b445583b0eb1ce4afdf8cc00fdb1a808b1a9cc43dfc1098dbf0c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basic/Variant79e31eeb5c39b445583b0eb1ce4afdf8cc00fdb1a808b1a9cc43dfc1098dbf0c.lean#L93).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f17ec10cf8724970eb2b234501ecf13949b5dc63` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
