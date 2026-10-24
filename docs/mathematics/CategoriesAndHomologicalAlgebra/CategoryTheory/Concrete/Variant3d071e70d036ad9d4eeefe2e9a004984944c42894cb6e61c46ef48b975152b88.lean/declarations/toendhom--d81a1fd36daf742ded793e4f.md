# toEndHom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e55f141b8eee54be5d1840974ec837e9aefac9207c7dd7de0104c52e0e93442a",
  "kind": "def",
  "lexical_name": "toEndHom",
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
  "slug": "toendhom--d81a1fd36daf742ded793e4f",
  "source": {
    "blob": "678329ab213a954589cc275dc2f16db66e3ebb41",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 130,
    "line": 103,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Concrete/Variant3d071e70d036ad9d4eeefe2e9a004984944c42894cb6e61c46ef48b975152b88.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d81a1fd36daf742ded793e4f46a4bfff5f2e5e9636f817a1f98b34b14276f53d",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Concrete/Variant3d071e70d036ad9d4eeefe2e9a004984944c42894cb6e61c46ef48b975152b88.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e55f141b8eee54be5d1840974ec837e9aefac9207c7dd7de0104c52e0e93442a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 103–130.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def toEndHom [N.Normal] : G →* End (G ⧸ₐ N) where
  toFun v := {
    hom := Quotient.lift (fun σ ↦ ⟦σ * v⁻¹⟧) <| fun a b h ↦ Quotient.sound <| by
      apply (QuotientGroup.leftRel_apply).mpr
      -- We avoid `group` here to minimize imports while low in the hierarchy;
      -- typically it would be better to invoke the tactic.
      simpa [mul_assoc] using Subgroup.Normal.conj_mem ‹_› _ (QuotientGroup.leftRel_apply.mp h) _
    comm := fun (g : G) ↦ by
      ext (x : G ⧸ N)
      induction' x using Quotient.inductionOn with x
      simp only [FintypeCat.comp_apply, Action.FintypeCat.ofMulAction_apply, Quotient.lift_mk]
      show Quotient.lift (fun σ ↦ ⟦σ * v⁻¹⟧) _ (⟦g • x⟧) = _
      simp only [smul_eq_mul, Quotient.lift_mk, mul_assoc]
      rfl
  }
  map_one' := by
    apply Action.hom_ext
    ext (x : G ⧸ N)
    induction' x using Quotient.inductionOn with x
    simp
  map_mul' σ τ := by
    apply Action.hom_ext
    ext (x : G ⧸ N)
    induction' x using Quotient.inductionOn with x
    show ⟦x * (σ * τ)⁻¹⟧ = ⟦x * τ⁻¹ * σ⁻¹⟧
    rw [mul_inv_rev, mul_assoc]

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Concrete/Variant3d071e70d036ad9d4eeefe2e9a004984944c42894cb6e61c46ef48b975152b88.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Concrete/Variant3d071e70d036ad9d4eeefe2e9a004984944c42894cb6e61c46ef48b975152b88.lean#L103).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `678329ab213a954589cc275dc2f16db66e3ebb41` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
