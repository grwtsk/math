# pointsPi_surjective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7f58310c-0667-d305-e1ac-de9aabe3eba1",
  "kind": "lemma",
  "lexical_name": "pointsPi_surjective",
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
  "slug": "pointspi-surjective--332e556d2fd85e860bef7a44",
  "source": {
    "blob": "ab47969e93cdc87008a46bcd9b9b5426d393423d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 156,
    "line": 126,
    "path": "GRWTSK/Algebra/PointsPi/Variant1bce36fc20870ed4d91ea3ed0297732cf5a14431998516410da068d847d8e26f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:332e556d2fd85e860bef7a44d09e99c04848839a0ebeaef25405483c9c3ad987",
  "verification": {
    "reference": "docs/verification/Algebra/PointsPi/Variant1bce36fc20870ed4d91ea3ed0297732cf5a14431998516410da068d847d8e26f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7f58310c-0667-d305-e1ac-de9aabe3eba1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 126–156.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma pointsPi_surjective [CompactSpace X] [∀ i, IsLocalRing (R i)] :
    Function.Surjective (pointsPi R X) := by
  intro f
  let 𝒰 : X.OpenCover := X.affineCover.finiteSubcover
  have (i : _) : ∃ j, Set.range (f i) ⊆ (𝒰.f j).opensRange := by
    refine ⟨𝒰.idx ((f i) (IsLocalRing.closedPoint (R i))), ?_⟩
    rintro _ ⟨x, rfl⟩
    exact ((IsLocalRing.specializes_closedPoint x).map (f i).continuous).mem_open
      (𝒰.f _).opensRange.2 (𝒰.covers _)
  choose j hj using this
  have (j₀ : _) := pointsPi_surjective_of_isAffine (ι := { i // j i = j₀ }) (R ·) (𝒰.X j₀)
    (fun i ↦ IsOpenImmersion.lift (𝒰.f j₀) (f i.1) (by rcases i with ⟨i, rfl⟩; exact hj i))
  choose g hg using this
  simp_rw [funext_iff, pointsPi] at hg
  let R' (j₀) := CommRingCat.of (Π i : { i // j i = j₀ }, R i)
  let e : (Π i, R i) ≃+* Π j₀, R' j₀ :=
  { toFun f _ i := f i
    invFun f i := f _ ⟨i, rfl⟩
    right_inv _ := funext₂ fun j₀ i ↦ by rcases i with ⟨i, rfl⟩; rfl
    map_mul' _ _ := rfl
    map_add' _ _ := rfl }
  refine ⟨Spec.map (CommRingCat.ofHom e.symm.toRingHom) ≫ inv (sigmaSpec R') ≫
    Sigma.desc fun j₀ ↦ g j₀ ≫ 𝒰.f j₀, ?_⟩
  ext i : 1
  have : (Pi.evalRingHom (R ·) i).comp e.symm.toRingHom =
    (Pi.evalRingHom _ ⟨i, rfl⟩).comp (Pi.evalRingHom (R' ·) (j i)) := rfl
  rw [pointsPi, ← Spec.map_comp_assoc, ← CommRingCat.ofHom_comp, this, CommRingCat.ofHom_comp,
    Spec.map_comp_assoc, ← ι_sigmaSpec R', Category.assoc, IsIso.hom_inv_id_assoc,
    Sigma.ι_comp_desc, ← Category.assoc, hg, IsOpenImmersion.lift_fac]

end AlgebraicGeometry
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/PointsPi/Variant1bce36fc20870ed4d91ea3ed0297732cf5a14431998516410da068d847d8e26f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/PointsPi/Variant1bce36fc20870ed4d91ea3ed0297732cf5a14431998516410da068d847d8e26f.lean#L126).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ab47969e93cdc87008a46bcd9b9b5426d393423d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
