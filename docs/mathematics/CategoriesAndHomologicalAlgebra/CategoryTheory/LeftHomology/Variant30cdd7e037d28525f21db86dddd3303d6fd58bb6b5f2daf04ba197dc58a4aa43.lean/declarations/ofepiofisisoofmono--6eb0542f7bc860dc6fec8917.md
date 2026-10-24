# ofEpiOfIsIsoOfMono'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a0ddfb9ce4b4ff58338f6f16560c314273fe76c68e3e14a11c86683c01fc3868",
  "kind": "def",
  "lexical_name": "ofEpiOfIsIsoOfMono'",
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
  "slug": "ofepiofisisoofmono--6eb0542f7bc860dc6fec8917",
  "source": {
    "blob": "23995da5752a72fc31e300df148afce6fc0bdd59",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 871,
    "line": 847,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftHomology/Variant30cdd7e037d28525f21db86dddd3303d6fd58bb6b5f2daf04ba197dc58a4aa43.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6eb0542f7bc860dc6fec891721826fdaaf037abd9038188e1c2978f8ec039be1",
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

Occurrence: `declaration:a0ddfb9ce4b4ff58338f6f16560c314273fe76c68e3e14a11c86683c01fc3868`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 847–871.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def ofEpiOfIsIsoOfMono' (φ : S₁ ⟶ S₂) (h : LeftHomologyData S₂)
    [Epi φ.τ₁] [IsIso φ.τ₂] [Mono φ.τ₃] : LeftHomologyData S₁ := by
  let i : h.K ⟶ S₁.X₂ := h.i ≫ inv φ.τ₂
  have wi : i ≫ S₁.g = 0 := by
    rw [assoc, ← cancel_mono φ.τ₃, zero_comp, assoc, assoc, ← φ.comm₂₃,
      IsIso.inv_hom_id_assoc, h.wi]
  have hi : IsLimit (KernelFork.ofι i wi) := KernelFork.IsLimit.ofι _ _
    (fun x hx => h.liftK (x ≫ φ.τ₂)
      (by rw [assoc, φ.comm₂₃, reassoc_of% hx, zero_comp]))
    (fun x hx => by simp [i])
    (fun x hx b hb => by rw [← cancel_mono h.i, ← cancel_mono (inv φ.τ₂), assoc, assoc,
      hb, liftK_i_assoc, assoc, IsIso.hom_inv_id, comp_id])
  let f' := hi.lift (KernelFork.ofι S₁.f S₁.zero)
  have hf' : f' ≫ i = S₁.f := Fork.IsLimit.lift_ι _
  have hf'' : f' = φ.τ₁ ≫ h.f' := by
    rw [← cancel_mono h.i, ← cancel_mono (inv φ.τ₂), assoc, assoc, assoc, hf', f'_i_assoc,
      φ.comm₁₂_assoc, IsIso.hom_inv_id, comp_id]
  have wπ : f' ≫ h.π = 0 := by simp only [hf'', assoc, f'_π, comp_zero]
  have hπ : IsColimit (CokernelCofork.ofπ h.π wπ) := CokernelCofork.IsColimit.ofπ _ _
    (fun x hx => h.descH x (by rw [← cancel_epi φ.τ₁, ← reassoc_of% hf'', hx, comp_zero]))
    (fun x hx => π_descH _ _ _)
    (fun x hx b hx => by rw [← cancel_epi h.π, π_descH, hx])
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

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftHomology/Variant30cdd7e037d28525f21db86dddd3303d6fd58bb6b5f2daf04ba197dc58a4aa43.lean#L847).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `23995da5752a72fc31e300df148afce6fc0bdd59` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
