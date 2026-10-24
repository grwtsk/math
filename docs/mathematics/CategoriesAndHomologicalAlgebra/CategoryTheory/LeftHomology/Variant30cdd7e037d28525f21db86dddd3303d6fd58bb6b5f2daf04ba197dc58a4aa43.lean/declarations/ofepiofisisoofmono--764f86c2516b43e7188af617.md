# ofEpiOfIsIsoOfMono

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1b6ce4ac8916057d9f9d1544581421d7a3fbca24d43fe7e25a287ee945297f52",
  "kind": "def",
  "lexical_name": "ofEpiOfIsIsoOfMono",
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
  "slug": "ofepiofisisoofmono--764f86c2516b43e7188af617",
  "source": {
    "blob": "23995da5752a72fc31e300df148afce6fc0bdd59",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 837,
    "line": 814,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftHomology/Variant30cdd7e037d28525f21db86dddd3303d6fd58bb6b5f2daf04ba197dc58a4aa43.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:764f86c2516b43e7188af61710ae6027d924230684f8c3faa689914d1971ffa6",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftHomology/Variant30cdd7e037d28525f21db86dddd3303d6fd58bb6b5f2daf04ba197dc58a4aa43.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1b6ce4ac8916057d9f9d1544581421d7a3fbca24d43fe7e25a287ee945297f52`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 814–837.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def ofEpiOfIsIsoOfMono (φ : S₁ ⟶ S₂) (h : LeftHomologyData S₁)
    [Epi φ.τ₁] [IsIso φ.τ₂] [Mono φ.τ₃] : LeftHomologyData S₂ := by
  let i : h.K ⟶ S₂.X₂ := h.i ≫ φ.τ₂
  have wi : i ≫ S₂.g = 0 := by simp only [i, assoc, φ.comm₂₃, h.wi_assoc, zero_comp]
  have hi : IsLimit (KernelFork.ofι i wi) := KernelFork.IsLimit.ofι _ _
    (fun x hx => h.liftK (x ≫ inv φ.τ₂) (by rw [assoc, ← cancel_mono φ.τ₃, assoc,
      assoc, ← φ.comm₂₃, IsIso.inv_hom_id_assoc, hx, zero_comp]))
    (fun x hx => by simp [i]) (fun x hx b hb => by
      dsimp
      rw [← cancel_mono h.i, ← cancel_mono φ.τ₂, assoc, assoc, liftK_i_assoc,
        assoc, IsIso.inv_hom_id, comp_id, hb])
  let f' := hi.lift (KernelFork.ofι S₂.f S₂.zero)
  have hf' : φ.τ₁ ≫ f' = h.f' := by
    have eq := @Fork.IsLimit.lift_ι _ _ _ _ _ _ _ ((KernelFork.ofι S₂.f S₂.zero)) hi
    simp only [Fork.ι_ofι] at eq
    rw [← cancel_mono h.i, ← cancel_mono φ.τ₂, assoc, assoc, eq, f'_i, φ.comm₁₂]
  have wπ : f' ≫ h.π = 0 := by
    rw [← cancel_epi φ.τ₁, comp_zero, reassoc_of% hf', h.f'_π]
  have hπ : IsColimit (CokernelCofork.ofπ h.π wπ) := CokernelCofork.IsColimit.ofπ _ _
    (fun x hx => h.descH x (by rw [← hf', assoc, hx, comp_zero]))
    (fun x hx => by simp) (fun x hx b hb => by rw [← cancel_epi h.π, π_descH, hb])
  exact ⟨h.K, h.H, i, h.π, wi, hi, wπ, hπ⟩

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftHomology/Variant30cdd7e037d28525f21db86dddd3303d6fd58bb6b5f2daf04ba197dc58a4aa43.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftHomology/Variant30cdd7e037d28525f21db86dddd3303d6fd58bb6b5f2daf04ba197dc58a4aa43.lean#L814).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `23995da5752a72fc31e300df148afce6fc0bdd59` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
