# sieve₁_inter

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:dfb8b1ea-3030-0855-0023-20786f4020d6",
  "kind": "lemma",
  "lexical_name": "sieve₁_inter",
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
  "slug": "sieve-inter--cf854818ed1c9493fe9d1bd9",
  "source": {
    "blob": "9419811fcbe4677837d8a77de604ff0dc4957447",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 366,
    "line": 324,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/One/Varianta846cfa4505ee54f411d16c015b68067af605a95e255e88d04a0a2aa42175c2f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cf854818ed1c9493fe9d1bd90d0b4dc869c831acf674e8a7bdf879f28cc1f78e",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/One/Varianta846cfa4505ee54f411d16c015b68067af605a95e255e88d04a0a2aa42175c2f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dfb8b1ea-3030-0855-0023-20786f4020d6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 324–366.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma sieve₁_inter [HasPullbacks C] {i j : E.I₀ × F.I₀} {W : C}
    {p₁ : W ⟶ pullback (E.f i.1) (F.f i.2)}
    {p₂ : W ⟶ pullback (E.f j.1) (F.f j.2)}
    (w : p₁ ≫ pullback.fst _ _ ≫ E.f _ = p₂ ≫ pullback.fst _ _ ≫ E.f _) :
    (inter E F).sieve₁ p₁ p₂ = Sieve.bind
      (E.sieve₁ (p₁ ≫ pullback.fst _ _) (p₂ ≫ pullback.fst _ _))
      (fun _ f _ ↦ (F.sieve₁ (p₁ ≫ pullback.snd _ _) (p₂ ≫ pullback.snd _ _)).pullback f) := by
  ext Y f
  let p : W ⟶ pullback ((inter E F).f i) ((inter E F).f j) :=
    pullback.lift p₁ p₂ w
  refine ⟨fun ⟨k, a, h₁, h₂⟩ ↦ ?_, fun ⟨Z, a, b, ⟨k, e, h₁, h₂⟩, ⟨l, u, u₁, u₂⟩, hab⟩ ↦ ?_⟩
  · refine ⟨pullback p ((E.inter F).toPullback k), pullback.lift f a ?_,
        pullback.fst _ _, ?_, ?_, ?_⟩
    · apply pullback.hom_ext
      · apply pullback.hom_ext <;> simp [p, h₁, toPullback]
      · apply pullback.hom_ext <;> simp [p, h₂, toPullback]
    · refine ⟨k.1, pullback.snd _ _ ≫ pullback.fst _ _, ?_, ?_⟩
      · have : p₁ ≫ pullback.fst (E.f i.1) (F.f i.2) = p ≫ pullback.fst _ _ ≫ pullback.fst _ _ := by
          simp [p]
        simp [this, pullback.condition_assoc, toPullback]
      · have : p₂ ≫ pullback.fst (E.f j.1) (F.f j.2) = p ≫ pullback.snd _ _ ≫ pullback.fst _ _ := by
          simp [p]
        simp [this, pullback.condition_assoc, toPullback]
    · exact ⟨k.2, a ≫ pullback.snd _ _, by simp [reassoc_of% h₁], by simp [reassoc_of% h₂]⟩
    · simp
  · subst hab
    refine ⟨(k, l), pullback.lift (a ≫ e) u ?_, ?_, ?_⟩
    · simp only [Category.assoc] at u₁
      simp [← reassoc_of% h₁, w, ← reassoc_of% u₁, ← pullback.condition]
    · apply pullback.hom_ext
      · simp [h₁]
      · simpa using u₁
    · apply pullback.hom_ext
      · simp [h₂]
      · simpa using u₂

end

section Category

/-- A morphism of pre-`1`-hypercovers of `S` is a family of refinement morphisms commuting
with the structure morphisms of `E` and `F`. -/
@[ext]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/One/Varianta846cfa4505ee54f411d16c015b68067af605a95e255e88d04a0a2aa42175c2f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/One/Varianta846cfa4505ee54f411d16c015b68067af605a95e255e88d04a0a2aa42175c2f.lean#L324).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9419811fcbe4677837d8a77de604ff0dc4957447` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
