# _root_.MeasureTheory.VectorMeasure.ext_of_Icc

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "762735ed2b332c5bec324032d308dad123239dcb",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 55,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/dd/ddd93ebd71d83db073c5062bdae07492b928cf3e214bd2b4a98ee9aae4823b70.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:bd672fe3-8718-3fd4-0baa-6a626b45e3fc",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b36162be-6a79-71e9-3048-8aed53eed0bd",
  "kind": "theorem",
  "lexical_name": "_root_.MeasureTheory.VectorMeasure.ext_of_Icc",
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
  "slug": "root-measuretheory-vectormeasure-ext-of-icc--84d7c8881e21795f149537d3",
  "source": {
    "blob": "762735ed2b332c5bec324032d308dad123239dcb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 88,
    "line": 55,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/IntegrationByParts/Variantddd93ebd71d83db073c5062bdae07492b928cf3e214bd2b4a98ee9aae4823b70.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:84d7c8881e21795f149537d39ab1a7cdb7c25bb961ebacc3632c28917d8b9295",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/IntegrationByParts/Variantddd93ebd71d83db073c5062bdae07492b928cf3e214bd2b4a98ee9aae4823b70.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b36162be-6a79-71e9-3048-8aed53eed0bd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 55–88.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.MeasureTheory.VectorMeasure.ext_of_Icc
    (μ ν : VectorMeasure α E) (hμ : ∀ ⦃a b⦄, a ≤ b → μ (Icc a b) = ν (Icc a b)) : μ = ν := by
  rcases isEmpty_or_nonempty α with hα | hα
  · ext s hs
    have : s = ∅ := Subsingleton.elim _ _
    simp [this]
  apply VectorMeasure.ext_of_generateFrom _ _
    (BorelSpace.measurable_eq.trans (borel_eq_generateFrom_Icc α)) (isPiSystem_Icc id id); swap
  · rintro s ⟨l, u, hlu, rfl⟩
    exact hμ hlu
  obtain ⟨u, u_mono, hu⟩ : ∃ u : ℕ → α, Monotone u ∧ Tendsto u atTop atTop :=
    Filter.exists_seq_monotone_tendsto_atTop_atTop _
  obtain ⟨v, v_mono, hv⟩ : ∃ v : ℕ → α, Antitone v ∧ Tendsto v atTop atBot :=
    Filter.exists_seq_antitone_tendsto_atTop_atBot _
  have : ⋃ n, Icc (v n) (u n) = univ := by
    apply eq_univ_iff_forall.2 (fun x ↦ ?_)
    simp only [mem_iUnion, mem_Icc]
    exact ((tendsto_atBot.1 hv x).and (tendsto_atTop.1 hu x)).exists
  rw [← this]
  have M : Monotone (fun n ↦ Icc (v n) (u n)) := by
    intro m n hmn x hx
    grind [Monotone, Antitone]
  apply tendsto_nhds_unique (VectorMeasure.tendsto_vectorMeasure_iUnion_atTop_nat M (v := μ)
    (fun n ↦ measurableSet_Icc))
  have A a b : μ (Icc a b) = ν (Icc a b) := by
    rcases lt_or_ge b a with hab | hab
    · simp [hab]
    · exact hμ hab
  simp only [A]
  exact VectorMeasure.tendsto_vectorMeasure_iUnion_atTop_nat M (fun n ↦ measurableSet_Icc)

variable [NormedSpace ℝ E] [CompleteSpace E] [NormedSpace ℝ F] [CompleteSpace F]
  [NormedSpace ℝ G]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/IntegrationByParts/Variantddd93ebd71d83db073c5062bdae07492b928cf3e214bd2b4a98ee9aae4823b70.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/IntegrationByParts/Variantddd93ebd71d83db073c5062bdae07492b928cf3e214bd2b4a98ee9aae4823b70.lean#L55).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `762735ed2b332c5bec324032d308dad123239dcb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
