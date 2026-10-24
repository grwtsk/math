# exists_variation_le_add'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:07635343-fe74-e74d-0b2d-c54561814e35",
  "kind": "lemma",
  "lexical_name": "exists_variation_le_add'",
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
  "slug": "exists-variation-le-add--da4475624635b7850d6889bb",
  "source": {
    "blob": "14262fda5fbf8a722c5f20e8f08d712957657be3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 145,
    "line": 121,
    "path": "GRWTSK/Analysis/MeasureTheory/Basic/Variant22800b2d9952fd074976413556aeadceaeca89fe47f34bd60081648aa74a50c8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:da4475624635b7850d6889bbdbe217f686186c301cdf64a2ace022506d889ec8",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Basic/Variant22800b2d9952fd074976413556aeadceaeca89fe47f34bd60081648aa74a50c8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:07635343-fe74-e74d-0b2d-c54561814e35`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 121–145.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma exists_variation_le_add' (μ : VectorMeasure X V) {s : Set X} (hs : MeasurableSet s)
    {ε : ℝ≥0∞} (hε : 0 < ε) (hμ : μ.variation s ≠ ∞) :
    ∃ (P : Finset (Set X)), (∀ t ∈ P, t ⊆ s) ∧ ((P : Set (Set X)).PairwiseDisjoint id) ∧
      (∀ t ∈ P, MeasurableSet t) ∧ μ.variation s ≤ ∑ p ∈ P, ‖μ p‖ₑ + ε := by
  simp only [variation_apply, preVariation, ennrealToMeasure_apply hs, ennrealPreVariation_apply]
    at hμ ⊢
  obtain ⟨P, hP⟩ : ∃ P : Finpartition (⟨s, hs⟩ : Subtype MeasurableSet),
      preVariationFun (fun x ↦ ‖μ x‖ₑ) s ≤ ∑ p ∈ P.parts, (fun x ↦ ‖μ x‖ₑ) ↑p + ε :=
    preVariation.exists_Finpartition_sum_ge' (‖μ ·‖ₑ) hs hε hμ
  refine ⟨P.parts.map (Function.Embedding.subtype _), ?_, ?_, ?_, ?_⟩
  · simp only [mem_map, Function.Embedding.subtype_apply, Subtype.exists, exists_and_right,
      exists_eq_right, forall_exists_index]
    intro t ht h't
    exact P.le h't
  · intro i hi  j hj hij
    simp only [coe_map, Function.Embedding.subtype_apply, Set.mem_image, SetLike.mem_coe,
      Subtype.exists, exists_and_right, exists_eq_right] at hi hj
    rcases hi with ⟨h'i, i_mem⟩
    rcases hj with ⟨h'j, j_mem⟩
    exact (disjoint_subtype_iff (fun _ _ hs ht ↦ hs.inter ht) _).1
      (P.disjoint i_mem j_mem (by simpa using hij))
  · simp +contextual
  · rwa [Finset.sum_map]

/-- Measure version of `preVariation.exists_Finpartition_sum_ge`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Basic/Variant22800b2d9952fd074976413556aeadceaeca89fe47f34bd60081648aa74a50c8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Basic/Variant22800b2d9952fd074976413556aeadceaeca89fe47f34bd60081648aa74a50c8.lean#L121).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `14262fda5fbf8a722c5f20e8f08d712957657be3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
