# isSheafFor_bind

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "be99c646d4406d99db2a0be5b6e25e9f43dc6a9f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 56,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b4/b46448cdccacff5019b202604dc29fbddc22fb154edfa1b9ab9140f4e7d5bbc3.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:20ece72b-7129-9502-b67b-f2a663d8e02f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:021b0051-d2ef-8418-0c80-465091965936",
  "kind": "theorem",
  "lexical_name": "isSheafFor_bind",
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
  "slug": "issheaffor-bind--cecbb4c5601aa38f7d4d83d7",
  "source": {
    "blob": "be99c646d4406d99db2a0be5b6e25e9f43dc6a9f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 114,
    "line": 56,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Canonical/Variantb46448cdccacff5019b202604dc29fbddc22fb154edfa1b9ab9140f4e7d5bbc3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cecbb4c5601aa38f7d4d83d7003e9232832d49e1dab916d795fc072a1ef4e7b7",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Canonical/Variantb46448cdccacff5019b202604dc29fbddc22fb154edfa1b9ab9140f4e7d5bbc3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:021b0051-d2ef-8418-0c80-465091965936`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 56–114.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isSheafFor_bind (P : Cᵒᵖ ⥤ Type v) (U : Sieve X) (B : ∀ ⦃Y⦄ ⦃f : Y ⟶ X⦄, U f → Sieve Y)
    (hU : Presieve.IsSheafFor P (U : Presieve X))
    (hB : ∀ ⦃Y⦄ ⦃f : Y ⟶ X⦄ (hf : U f), Presieve.IsSheafFor P (B hf : Presieve Y))
    (hB' : ∀ ⦃Y⦄ ⦃f : Y ⟶ X⦄ (h : U f) ⦃Z⦄ (g : Z ⟶ Y),
      Presieve.IsSeparatedFor P (((B h).pullback g) : Presieve Z)) :
    Presieve.IsSheafFor P (Sieve.bind (U : Presieve X) B : Presieve X) := by
  intro s hs
  let y : ∀ ⦃Y⦄ ⦃f : Y ⟶ X⦄ (hf : U f), Presieve.FamilyOfElements P (B hf : Presieve Y) :=
    fun Y f hf Z g hg => s _ (Presieve.bind_comp _ _ hg)
  have hy : ∀ ⦃Y⦄ ⦃f : Y ⟶ X⦄ (hf : U f), (y hf).Compatible := by
    intro Y f H Y₁ Y₂ Z g₁ g₂ f₁ f₂ hf₁ hf₂ comm
    apply hs
    apply reassoc_of% comm
  let t : Presieve.FamilyOfElements P (U : Presieve X) :=
    fun Y f hf => (hB hf).amalgamate (y hf) (hy hf)
  have ht : ∀ ⦃Y⦄ ⦃f : Y ⟶ X⦄ (hf : U f), (y hf).IsAmalgamation (t f hf) := fun Y f hf =>
    (hB hf).isAmalgamation _
  have hT : t.Compatible := by
    rw [Presieve.compatible_iff_sieveCompatible]
    intro Z W f h hf
    apply (hB (U.downward_closed hf h)).isSeparatedFor.ext
    intro Y l hl
    apply (hB' hf (l ≫ h)).ext
    intro M m hm
    have : bind U B (m ≫ l ≫ h ≫ f) := by simpa using (Presieve.bind_comp f hf hm : bind U B _)
    trans s (m ≫ l ≫ h ≫ f) this
    · have := ht (U.downward_closed hf h) _ ((B _).downward_closed hl m)
      rw [op_comp, FunctorToTypes.map_comp_apply] at this
      rw [this]
      change s _ _ = s _ _
      -- Porting note: the proof was `by simp`
      congr 1
      simp only [assoc]
    · have h : s _ _ = _ := (ht hf _ hm).symm
      -- Porting note: this was done by `simp only [assoc] at`
      conv_lhs at h => congr; rw [assoc, assoc]
      rw [h]
      simp only [op_comp, assoc, FunctorToTypes.map_comp_apply]
  refine ⟨hU.amalgamate t hT, ?_, ?_⟩
  · rintro Z _ ⟨Y, f, g, hg, hf, rfl⟩
    rw [op_comp, FunctorToTypes.map_comp_apply, Presieve.IsSheafFor.valid_glue _ _ _ hg]
    apply ht hg _ hf
  · intro y hy
    apply hU.isSeparatedFor.ext
    intro Y f hf
    apply (hB hf).isSeparatedFor.ext
    intro Z g hg
    rw [← FunctorToTypes.map_comp_apply, ← op_comp, hy _ (Presieve.bind_comp _ _ hg),
      hU.valid_glue _ _ hf, ht hf _ hg]

/-- Given two sieves `R` and `S`, to show that `P` is a sheaf for `S`, we can show:
* `P` is a sheaf for `R`
* `P` is a sheaf for the pullback of `S` along any arrow in `R`
* `P` is separated for the pullback of `R` along any arrow in `S`.

This is mostly an auxiliary lemma to construct `finestTopology`.
Adapted from [Elephant], Lemma C2.1.7(ii) with suggestions as mentioned in
https://math.stackexchange.com/a/358709
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Canonical/Variantb46448cdccacff5019b202604dc29fbddc22fb154edfa1b9ab9140f4e7d5bbc3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Canonical/Variantb46448cdccacff5019b202604dc29fbddc22fb154edfa1b9ab9140f4e7d5bbc3.lean#L56).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `be99c646d4406d99db2a0be5b6e25e9f43dc6a9f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
