# isConservative_pointSmallEtale

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5eb5e3ec-2c11-a0de-9839-d84db1fcecd8",
  "kind": "lemma",
  "lexical_name": "isConservative_pointSmallEtale",
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
  "slug": "isconservative-pointsmalletale--743b9752de5973c36d0451fd",
  "source": {
    "blob": "9196c196f45d333d25801cd3e6362ca9fad948b6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 155,
    "line": 132,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/EtalePoint/Variantd8763316d7a0275e465944794546190c9f9d171aac3f06fa07baf39d1589d7f4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:743b9752de5973c36d0451fd7cc73875eb662568bb4cab250a5909cf4f7e806c",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/EtalePoint/Variantd8763316d7a0275e465944794546190c9f9d171aac3f06fa07baf39d1589d7f4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5eb5e3ec-2c11-a0de-9839-d84db1fcecd8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 132–155.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isConservative_pointSmallEtale
    {ι : Type*} {S : Scheme.{u}}
    {Ω : ι → Type u} [∀ i, Field (Ω i)] [∀ i, IsSepClosed (Ω i)]
    (s : ∀ i, Spec (.of (Ω i)) ⟶ S)
    (hs : ⋃ i, Set.range (s i) = .univ) :
    (ObjectProperty.ofObj (fun i ↦ pointSmallEtale (s i))).IsConservativeFamilyOfPoints :=
  .mk' (fun X R hR ↦ by
    obtain ⟨α, T, f, rfl⟩ := R.exists_eq_ofArrows
    rw [ofArrows_mem_smallEtaleTopology_iff]
    ext x
    simp only [Set.mem_iUnion, Set.mem_range, Set.mem_univ, iff_true]
    obtain ⟨i, hi⟩ : ∃ i, s i default = X.hom x := by
      have := Set.mem_univ (X.hom x)
      simp only [← hs, Functor.id_obj, Set.mem_iUnion, Set.mem_range] at this
      obtain ⟨i, y, hy⟩ := this
      obtain rfl := Subsingleton.elim y default
      exact ⟨i, hy⟩
    obtain ⟨x', hx'⟩ := pointSmallEtaleFiberObjToPreimage_surjective (s i) hi X ⟨x, by simp⟩
    rw [Subtype.ext_iff] at hx'
    simp only [Functor.id_obj, pointSmallEtaleFiberObjToPreimage_coe, Etale.forget_obj_left] at hx'
    subst hx'
    obtain ⟨W, g, ⟨Z, p, _, ⟨a⟩, rfl⟩, y, rfl⟩ := hR ⟨_, ⟨i⟩⟩ x'
    exact ⟨a, (pointSmallEtaleFiberObjToPreimage (s i) hi (y ≫ p.hom)).1, rfl⟩)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/EtalePoint/Variantd8763316d7a0275e465944794546190c9f9d171aac3f06fa07baf39d1589d7f4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/EtalePoint/Variantd8763316d7a0275e465944794546190c9f9d171aac3f06fa07baf39d1589d7f4.lean#L132).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9196c196f45d333d25801cd3e6362ca9fad948b6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
