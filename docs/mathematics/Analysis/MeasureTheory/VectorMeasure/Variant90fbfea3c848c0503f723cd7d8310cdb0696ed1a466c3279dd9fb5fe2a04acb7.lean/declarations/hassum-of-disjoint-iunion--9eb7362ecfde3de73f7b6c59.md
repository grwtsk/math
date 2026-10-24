# hasSum_of_disjoint_iUnion

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:50cb988b-aef2-7e31-67ff-99aaa538bb53",
  "kind": "theorem",
  "lexical_name": "hasSum_of_disjoint_iUnion",
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
  "slug": "hassum-of-disjoint-iunion--9eb7362ecfde3de73f7b6c59",
  "source": {
    "blob": "1bc7047d4e9c89a107ff3c8d23514847ae0ce913",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 187,
    "line": 153,
    "path": "GRWTSK/Analysis/MeasureTheory/VectorMeasure/Variant90fbfea3c848c0503f723cd7d8310cdb0696ed1a466c3279dd9fb5fe2a04acb7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9eb7362ecfde3de73f7b6c592b91bff55c5eaa43f41e59ec8af03cc20e7d1d11",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/VectorMeasure/Variant90fbfea3c848c0503f723cd7d8310cdb0696ed1a466c3279dd9fb5fe2a04acb7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:50cb988b-aef2-7e31-67ff-99aaa538bb53`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 153–187.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem hasSum_of_disjoint_iUnion [Countable β] {f : β → Set α} (hf₁ : ∀ i, MeasurableSet (f i))
    (hf₂ : Pairwise (Disjoint on f)) : HasSum (fun i => v (f i)) (v (⋃ i, f i)) := by
  cases nonempty_encodable β
  set g := fun i : ℕ => ⋃ (b : β) (_ : b ∈ Encodable.decode₂ β i), f b with hg
  have hg₁ : ∀ i, MeasurableSet (g i) :=
    fun _ => MeasurableSet.iUnion fun b => MeasurableSet.iUnion fun _ => hf₁ b
  have hg₂ : Pairwise (Disjoint on g) := Encodable.iUnion_decode₂_disjoint_on hf₂
  have := v.of_disjoint_iUnion_nat hg₁ hg₂
  rw [hg, Encodable.iUnion_decode₂] at this
  have hg₃ : (fun i : β => v (f i)) = fun i => v (g (Encodable.encode i)) := by
    ext x
    rw [hg]
    simp only
    congr
    ext y
    simp only [exists_prop, Set.mem_iUnion, Option.mem_def]
    constructor
    · intro hy
      refine' ⟨x, (Encodable.decode₂_is_partial_inv _ _).2 rfl, hy⟩
    · rintro ⟨b, hb₁, hb₂⟩
      rw [Encodable.decode₂_is_partial_inv _ _] at hb₁
      rwa [← Encodable.encode_injective hb₁]
  rw [Summable.hasSum_iff, this, ← tsum_iUnion_decode₂]
  · exact v.empty
  · rw [hg₃]
    change Summable ((fun i => v (g i)) ∘ Encodable.encode)
    rw [Function.Injective.summable_iff Encodable.encode_injective]
    · exact (v.m_iUnion hg₁ hg₂).summable
    · intro x hx
      convert v.empty
      simp only [Set.iUnion_eq_empty, Option.mem_def, not_exists, Set.mem_range] at hx ⊢
      intro i hi
      exact False.elim ((hx i) ((Encodable.decode₂_is_partial_inv _ _).1 hi))
#align measure_theory.vector_measure.has_sum_of_disjoint_Union MeasureTheory.VectorMeasure.hasSum_of_disjoint_iUnion

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/VectorMeasure/Variant90fbfea3c848c0503f723cd7d8310cdb0696ed1a466c3279dd9fb5fe2a04acb7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/VectorMeasure/Variant90fbfea3c848c0503f723cd7d8310cdb0696ed1a466c3279dd9fb5fe2a04acb7.lean#L153).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1bc7047d4e9c89a107ff3c8d23514847ae0ce913` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
