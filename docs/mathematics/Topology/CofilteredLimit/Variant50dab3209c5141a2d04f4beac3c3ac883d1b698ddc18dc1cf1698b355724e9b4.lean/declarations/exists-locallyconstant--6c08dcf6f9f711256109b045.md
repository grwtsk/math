# exists_locallyConstant

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:005c1789-943b-132e-1802-33c4c81ada3f",
  "kind": "theorem",
  "lexical_name": "exists_locallyConstant",
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
  "slug": "exists-locallyconstant--6c08dcf6f9f711256109b045",
  "source": {
    "blob": "d3e3526d4a89e72d495a1991ec5cd2066b49316c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 232,
    "line": 195,
    "path": "GRWTSK/Topology/CofilteredLimit/Variant50dab3209c5141a2d04f4beac3c3ac883d1b698ddc18dc1cf1698b355724e9b4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6c08dcf6f9f711256109b045ffe549eb55dd518ba01af504268cca5662e4cc58",
  "verification": {
    "reference": "docs/verification/Topology/CofilteredLimit/Variant50dab3209c5141a2d04f4beac3c3ac883d1b698ddc18dc1cf1698b355724e9b4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:005c1789-943b-132e-1802-33c4c81ada3f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 195–232.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_locallyConstant {α : Type*} (hC : IsLimit C) (f : LocallyConstant C.pt α) :
    ∃ (j : J) (g : LocallyConstant (F.obj j) α), f = g.comap (C.π.app _).hom := by
  let S := f.discreteQuotient
  let ff : S → α := f.lift
  cases isEmpty_or_nonempty S
  · suffices ∃ j, IsEmpty (F.obj j) by
      refine this.imp fun j hj => ?_
      refine ⟨⟨hj.elim, fun A => ?_⟩, ?_⟩
      · suffices (fun a ↦ IsEmpty.elim hj a) ⁻¹' A = ∅ by
          rw [this]
          exact isOpen_empty
        exact @Set.eq_empty_of_isEmpty _ hj _
      · ext x
        exact hj.elim' (C.π.app j x)
    simp only [← not_nonempty_iff, ← not_forall]
    intro h
    haveI : ∀ j : J, Nonempty ((F ⋙ Profinite.toTopCat).obj j) := h
    haveI : ∀ j : J, T2Space ((F ⋙ Profinite.toTopCat).obj j) := fun j =>
      (inferInstance : T2Space (F.obj j))
    haveI : ∀ j : J, CompactSpace ((F ⋙ Profinite.toTopCat).obj j) := fun j =>
      (inferInstance : CompactSpace (F.obj j))
    have cond := TopCat.nonempty_limitCone_of_compact_t2_cofiltered_system.{u}
      (F ⋙ Profinite.toTopCat)
    suffices Nonempty C.pt from IsEmpty.false (S.proj this.some)
    let D := Profinite.toTopCat.mapCone C
    have hD : IsLimit D := isLimitOfPreserves Profinite.toTopCat hC
    have CD := (hD.conePointUniqueUpToIso (TopCat.limitConeIsLimit.{v, max u v} _)).inv
    exact cond.map CD
  · let f' : LocallyConstant C.pt S := ⟨S.proj, S.proj_isLocallyConstant⟩
    obtain ⟨j, g', hj⟩ := exists_locallyConstant_finite_nonempty _ hC f'
    refine ⟨j, ⟨ff ∘ g', g'.isLocallyConstant.comp _⟩, ?_⟩
    ext1 t
    apply_fun fun e => e t at hj
    dsimp at hj ⊢
    rw [← hj]
    rfl

end Profinite
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Topology/CofilteredLimit/Variant50dab3209c5141a2d04f4beac3c3ac883d1b698ddc18dc1cf1698b355724e9b4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/CofilteredLimit/Variant50dab3209c5141a2d04f4beac3c3ac883d1b698ddc18dc1cf1698b355724e9b4.lean#L195).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d3e3526d4a89e72d495a1991ec5cd2066b49316c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
