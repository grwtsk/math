# homOfLE_toBasicOpenOfGlobalSections_ι

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "080e13f6216621fcf7dadf6c41c4a97d56e1b78d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 381,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/27/274e9736999556002c89ea15f17d7c4a635260b16c8040bd703ccdc96a5ef452.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:58762eec-1a97-2392-d547-37a84d70eb16",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:516ec8ac-1baf-261d-c9cc-a758f99d23c3",
  "kind": "lemma",
  "lexical_name": "homOfLE_toBasicOpenOfGlobalSections_ι",
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
  "slug": "homofle-tobasicopenofglobalsections--295e957b12e6358a4661c9c9",
  "source": {
    "blob": "080e13f6216621fcf7dadf6c41c4a97d56e1b78d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 413,
    "line": 381,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/Basic/Variant274e9736999556002c89ea15f17d7c4a635260b16c8040bd703ccdc96a5ef452.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:295e957b12e6358a4661c9c9f795abb4f55a3dce1a2162bfcda8c4018102f678",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/Basic/Variant274e9736999556002c89ea15f17d7c4a635260b16c8040bd703ccdc96a5ef452.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:516ec8ac-1baf-261d-c9cc-a758f99d23c3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 381–413.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma homOfLE_toBasicOpenOfGlobalSections_ι
    {H : f t = x} {h0d : 0 < d} {hd : t ∈ 𝒜 d} {H' : f t' = x'} {h0d' : 0 < d'} {hd' : t' ∈ 𝒜 d'}
    {s : A} (hts : t * s = t') {n : ℕ} (hn : d + n = d') (hs : s ∈ 𝒜 n) :
    X.homOfLE (by aesop) ≫ toBasicOpenOfGlobalSections 𝒜 f H h0d hd ≫ (basicOpen 𝒜 t).ι =
      toBasicOpenOfGlobalSections 𝒜 f H' h0d' hd' ≫ (basicOpen 𝒜 t').ι := by
  simp only [toBasicOpenOfGlobalSections, Scheme.isoOfEq_inv,
    ← Scheme.Hom.resLE_eq_morphismRestrict, CommRingCat.ofHom_comp, Spec.map_comp,
    Scheme.Hom.map_resLE_assoc, Category.assoc, basicOpenIsoSpec_inv_ι]
  have hx'x : PrimeSpectrum.basicOpen x' ≤ PrimeSpectrum.basicOpen x := by
    aesop (add simp PrimeSpectrum.basicOpen_mul)
  rw [← Scheme.Hom.resLE_map_assoc _ (by simp [X.toSpecΓ_preimage_basicOpen]) hx'x]
  congr 1
  simp only [← Iso.inv_comp_eq]
  subst hts hn
  rw [← SpecMap_awayMap_awayι (𝒜 := 𝒜) hd h0d
    hs rfl, basicOpenIsoSpecAway_inv_homOfLE_assoc (R := Γ(X, ⊤)) x (f s) x' (by simp [← H', H]),
    Iso.inv_hom_id_assoc]
  simp only [← Category.assoc, ← Spec.map_comp, ← CommRingCat.ofHom_comp]
  congr 3
  ext
  simp only [RingHom.coe_comp, Function.comp_apply,
    HomogeneousLocalization.algebraMap_apply, HomogeneousLocalization.val_awayMap]
  simp only [← RingHom.comp_apply]
  congr 1
  apply IsLocalization.ringHom_ext (M := .powers t)
  ext i
  simp [IsLocalization.Away.awayToAwayRight_eq]

variable (f : A →+* Γ(X, ⊤)) (hf : (HomogeneousIdeal.irrelevant 𝒜).toIdeal.map f = ⊤)

/-- Given a graded ring `A` and a map `f : A →+* Γ(X, ⊤)` such that the image of the
irrelevant ideal under `f` generates the whole ring, the set of `D(f(r))` for homogeneous `r`
of positive degree forms an open cover on `X`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/Basic/Variant274e9736999556002c89ea15f17d7c4a635260b16c8040bd703ccdc96a5ef452.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/Basic/Variant274e9736999556002c89ea15f17d7c4a635260b16c8040bd703ccdc96a5ef452.lean#L381).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `080e13f6216621fcf7dadf6c41c4a97d56e1b78d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
