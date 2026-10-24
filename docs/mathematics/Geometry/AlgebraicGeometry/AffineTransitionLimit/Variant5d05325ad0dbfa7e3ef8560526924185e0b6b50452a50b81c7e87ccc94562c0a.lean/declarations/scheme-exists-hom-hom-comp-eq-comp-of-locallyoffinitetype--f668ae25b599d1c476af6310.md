# Scheme.exists_hom_hom_comp_eq_comp_of_locallyOfFiniteType

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9d722dad9181cfd6d7afa3fa039a957385fa07fe",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 685,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/5d/5d05325ad0dbfa7e3ef8560526924185e0b6b50452a50b81c7e87ccc94562c0a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2a574efa-6af4-cd81-3b4d-2583ccaaa583",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a9401657-3eca-e8a9-4033-ca198e7a9bb8",
  "kind": "lemma",
  "lexical_name": "Scheme.exists_hom_hom_comp_eq_comp_of_locallyOfFiniteType",
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
  "slug": "scheme-exists-hom-hom-comp-eq-comp-of-locallyoffinitetype--f668ae25b599d1c476af6310",
  "source": {
    "blob": "9d722dad9181cfd6d7afa3fa039a957385fa07fe",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 724,
    "line": 685,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/AffineTransitionLimit/Variant5d05325ad0dbfa7e3ef8560526924185e0b6b50452a50b81c7e87ccc94562c0a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f668ae25b599d1c476af63104f84ba8ab48535ce53baa8f510d54915138de85b",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/AffineTransitionLimit/Variant5d05325ad0dbfa7e3ef8560526924185e0b6b50452a50b81c7e87ccc94562c0a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a9401657-3eca-e8a9-4033-ca198e7a9bb8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 685–724.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Scheme.exists_hom_hom_comp_eq_comp_of_locallyOfFiniteType
    {i : I} (a : D.obj i ⟶ X) (ha : t.app i = a ≫ f)
    {j : I} (b : D.obj j ⟶ X) (hb : t.app j = b ≫ f)
    (hab : c.π.app i ≫ a = c.π.app j ≫ b) :
    ∃ (k : I) (hik : k ⟶ i) (hjk : k ⟶ j),
      D.map hik ≫ a = D.map hjk ≫ b := by
  let o := IsCofiltered.min i j
  obtain ⟨k, hik, heq⟩ := Scheme.exists_hom_comp_eq_comp_of_locallyOfFiniteType D t f c hc
    (D.map (IsCofiltered.minToLeft i j) ≫ a) (D.map (IsCofiltered.minToRight i j) ≫ b)
    (by simp [← ha])
    (by simp [← hb]) (by simpa)
  use k, hik ≫ IsCofiltered.minToLeft i j, hik ≫ IsCofiltered.minToRight i j
  simpa using heq

end LocallyOfFiniteType

/-!
### Sections of the limit

Let `D` be a cofiltered diagram of schemes with affine transition maps.
Consider the canonical map `colim Γ(Dᵢ, ⊤) ⟶ Γ(lim Dᵢ, ⊤)`.

If `D` consists of quasicompact schemes, then this map is injective. More generally, we show
that if `s t : Γ(Dᵢ, U)` have equal image in `lim Dᵢ`, then they are equal at some `Γ(Dⱼ, Dⱼᵢ⁻¹ U)`.
See `AlgebraicGeometry.exists_app_map_eq_map_of_isLimit`.

If `D` consists of qcqs schemes, then this map is surjective. Specifically, we show that
any `s : Γ(lim Dᵢ, ⊤)` comes from `Γ(Dᵢ, ⊤)` for some `i`.
See `AlgebraicGeometry.exists_appTop_π_eq_of_isLimit`.

These two results imply that `PreservesLimit D Scheme.Γ.rightOp`, which is available as an instance.

-/
section sections

variable [IsCofiltered I]

set_option backward.defeqAttrib.useBackward true in
set_option backward.isDefEq.respectTransparency false in
include hc in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/AffineTransitionLimit/Variant5d05325ad0dbfa7e3ef8560526924185e0b6b50452a50b81c7e87ccc94562c0a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/AffineTransitionLimit/Variant5d05325ad0dbfa7e3ef8560526924185e0b6b50452a50b81c7e87ccc94562c0a.lean#L685).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9d722dad9181cfd6d7afa3fa039a957385fa07fe` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
