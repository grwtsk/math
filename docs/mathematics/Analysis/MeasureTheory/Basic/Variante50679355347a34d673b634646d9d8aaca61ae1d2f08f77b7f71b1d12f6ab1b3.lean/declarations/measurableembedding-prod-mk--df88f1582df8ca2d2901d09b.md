# MeasurableEmbedding.prod_mk

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ec42012f3ef56d56a62b0b643e9b0dede2e15700",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 210,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e5/e50679355347a34d673b634646d9d8aaca61ae1d2f08f77b7f71b1d12f6ab1b3.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1538e2a4-dd2d-af14-05e6-b0d3c6c223a7",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:1d5a0e16-56e2-cffc-f146-2fd8f2810020",
  "kind": "theorem",
  "lexical_name": "MeasurableEmbedding.prod_mk",
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
  "slug": "measurableembedding-prod-mk--df88f1582df8ca2d2901d09b",
  "source": {
    "blob": "ec42012f3ef56d56a62b0b643e9b0dede2e15700",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 240,
    "line": 210,
    "path": "GRWTSK/Analysis/MeasureTheory/Basic/Variante50679355347a34d673b634646d9d8aaca61ae1d2f08f77b7f71b1d12f6ab1b3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:df88f1582df8ca2d2901d09b249983e120924eea9c35c1fa0dfda77e6c9427c5",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Basic/Variante50679355347a34d673b634646d9d8aaca61ae1d2f08f77b7f71b1d12f6ab1b3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1d5a0e16-56e2-cffc-f146-2fd8f2810020`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 210–240.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem MeasurableEmbedding.prod_mk {α β γ δ : Type*} {mα : MeasurableSpace α}
    {mβ : MeasurableSpace β} {mγ : MeasurableSpace γ} {mδ : MeasurableSpace δ} {f : α → β}
    {g : γ → δ} (hg : MeasurableEmbedding g) (hf : MeasurableEmbedding f) :
    MeasurableEmbedding fun x : γ × α => (g x.1, f x.2) := by
  have h_inj : Function.Injective fun x : γ × α => (g x.fst, f x.snd) := by
    intro x y hxy
    rw [← @Prod.mk.eta _ _ x, ← @Prod.mk.eta _ _ y]
    simp only [Prod.mk.inj_iff] at hxy ⊢
    exact ⟨hg.injective hxy.1, hf.injective hxy.2⟩
  refine' ⟨h_inj, _, _⟩
  · exact (hg.measurable.comp measurable_fst).prod_mk (hf.measurable.comp measurable_snd)
  · -- Induction using the π-system of rectangles
    refine' fun s hs =>
      @MeasurableSpace.induction_on_inter _
        (fun s => MeasurableSet ((fun x : γ × α => (g x.fst, f x.snd)) '' s)) _ _
        generateFrom_prod.symm isPiSystem_prod _ _ _ _ _ hs
    · simp only [Set.image_empty, MeasurableSet.empty]
    · rintro t ⟨t₁, t₂, ht₁, ht₂, rfl⟩
      rw [← Set.prod_image_image_eq]
      exact (hg.measurableSet_image.mpr ht₁).prod (hf.measurableSet_image.mpr ht₂)
    · intro t _ ht_m
      rw [← Set.range_diff_image h_inj, ← Set.prod_range_range_eq]
      exact
        MeasurableSet.diff (MeasurableSet.prod hg.measurableSet_range hf.measurableSet_range) ht_m
    · intro g _ _ hg
      simp_rw [Set.image_iUnion]
      exact MeasurableSet.iUnion hg
#align measurable_embedding.prod_mk MeasurableEmbedding.prod_mk

/-- The Lebesgue integral is measurable. This shows that the integrand of (the right-hand-side of)
  Tonelli's theorem is measurable. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Basic/Variante50679355347a34d673b634646d9d8aaca61ae1d2f08f77b7f71b1d12f6ab1b3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Basic/Variante50679355347a34d673b634646d9d8aaca61ae1d2f08f77b7f71b1d12f6ab1b3.lean#L210).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ec42012f3ef56d56a62b0b643e9b0dede2e15700` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
