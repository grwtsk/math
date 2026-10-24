# exists_locallyConstant

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "302c360a5532cd506e293a15172f5d463f1545ba",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 186,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/21/214070bc99b0621edeb1c900def34e6da352c96309369929526c6e9f315c3c0a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f77c6ef8-9fd9-1ef2-f02a-2167b761ddad",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c5d6fdc6-88ac-dc97-c754-931a85de0bf5",
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
  "slug": "exists-locallyconstant--547c907bfbd474faac44844a",
  "source": {
    "blob": "302c360a5532cd506e293a15172f5d463f1545ba",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 221,
    "line": 186,
    "path": "GRWTSK/Topology/GeneralTopology/CofilteredLimit/Variant214070bc99b0621edeb1c900def34e6da352c96309369929526c6e9f315c3c0a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:547c907bfbd474faac44844a12bc0ec885f6fe0ee3a47ccb3ea3beb763be6a84",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/CofilteredLimit/Variant214070bc99b0621edeb1c900def34e6da352c96309369929526c6e9f315c3c0a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c5d6fdc6-88ac-dc97-c754-931a85de0bf5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 186–221.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_locallyConstant {α : Type*} (hC : IsLimit C) (f : LocallyConstant C.pt α) :
    ∃ (j : J) (g : LocallyConstant (F.obj j) α), f = g.comap (C.π.app _).hom.hom := by
  let S := f.discreteQuotient
  let ff : S → α := f.lift
  cases isEmpty_or_nonempty S
  · suffices ∃ j, IsEmpty (F.obj j) by
      refine this.imp fun j hj => ?_
      refine ⟨⟨hj.elim, fun A => ?_⟩, ?_⟩
      · convert! isOpen_empty
        ext x
        exact hj.elim x
      · ext x
        exact hj.elim' (C.π.app j x)
    by_contra! h
    have : ∀ j : J, Nonempty ((F ⋙ Profinite.toTopCat).obj j) := h
    have : ∀ j : J, T2Space ((F ⋙ Profinite.toTopCat).obj j) := fun j =>
      (inferInstance : T2Space (F.obj j))
    have : ∀ j : J, CompactSpace ((F ⋙ Profinite.toTopCat).obj j) := fun j =>
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

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/CofilteredLimit/Variant214070bc99b0621edeb1c900def34e6da352c96309369929526c6e9f315c3c0a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/CofilteredLimit/Variant214070bc99b0621edeb1c900def34e6da352c96309369929526c6e9f315c3c0a.lean#L186).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `302c360a5532cd506e293a15172f5d463f1545ba` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
