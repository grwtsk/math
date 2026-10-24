# inducedOuterMeasure_caratheodory

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "35fc68361898273405ca04d0ff07846078abdab0",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 239,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/56/56dc879fb77cb18d3e74bd55f44683d8b2e95a1dd5343d0c634537728d342772.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1be11e90-6ebb-b5e7-085b-038ba81c37af",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0655b9d9-0512-c033-7325-15c5b16abfef",
  "kind": "theorem",
  "lexical_name": "inducedOuterMeasure_caratheodory",
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
  "slug": "inducedoutermeasure-caratheodory--321fc51af968b088179c2692",
  "source": {
    "blob": "35fc68361898273405ca04d0ff07846078abdab0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 276,
    "line": 239,
    "path": "GRWTSK/Analysis/MeasureTheory/Induced/Variant56dc879fb77cb18d3e74bd55f44683d8b2e95a1dd5343d0c634537728d342772.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:321fc51af968b088179c269206b923c9495e5446c04d6321b16ffec81635008b",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Induced/Variant56dc879fb77cb18d3e74bd55f44683d8b2e95a1dd5343d0c634537728d342772.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0655b9d9-0512-c033-7325-15c5b16abfef`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 239–276.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem inducedOuterMeasure_caratheodory (s : Set α) :
    MeasurableSet[(inducedOuterMeasure m P0 m0).caratheodory] s ↔
      ∀ t : Set α,
        P t →
          inducedOuterMeasure m P0 m0 (t ∩ s) + inducedOuterMeasure m P0 m0 (t \ s) ≤
            inducedOuterMeasure m P0 m0 t := by
  rw [isCaratheodory_iff_le]
  constructor
  · intro h t _ht
    exact h t
  · intro h u
    conv_rhs => rw [inducedOuterMeasure_eq_iInf _ msU m_mono]
    refine le_iInf ?_
    intro t
    refine le_iInf ?_
    intro ht
    refine le_iInf ?_
    intro h2t
    refine le_trans ?_ ((h t ht).trans_eq <| inducedOuterMeasure_eq' _ msU m_mono ht)
    gcongr

end ExtendSet

/-! If `P` is `MeasurableSet` for some measurable space, then we can remove some hypotheses of the
  above lemmas. -/


section MeasurableSpace

variable {α : Type*} [MeasurableSpace α]
variable {m : ∀ s : Set α, MeasurableSet s → ℝ≥0∞}
variable (m0 : m ∅ MeasurableSet.empty = 0)
variable
  (mU :
    ∀ ⦃f : ℕ → Set α⦄ (hm : ∀ i, MeasurableSet (f i)),
      Pairwise (Disjoint on f) → m (⋃ i, f i) (MeasurableSet.iUnion hm) = ∑' i, m (f i) (hm i))
include m0 mU

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Induced/Variant56dc879fb77cb18d3e74bd55f44683d8b2e95a1dd5343d0c634537728d342772.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Induced/Variant56dc879fb77cb18d3e74bd55f44683d8b2e95a1dd5343d0c634537728d342772.lean#L239).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `35fc68361898273405ca04d0ff07846078abdab0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
