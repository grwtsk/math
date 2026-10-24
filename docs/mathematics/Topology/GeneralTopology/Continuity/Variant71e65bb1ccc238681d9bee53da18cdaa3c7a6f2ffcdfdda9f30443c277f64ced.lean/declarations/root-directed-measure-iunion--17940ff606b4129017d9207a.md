# _root_.Directed.measure_iUnion

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "be390e716cdc71c2e888e6c47fa50e7cbc0e0ca1",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 36,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/71/71e65bb1ccc238681d9bee53da18cdaa3c7a6f2ffcdfdda9f30443c277f64ced.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:24683496-bda6-1eac-61b1-ef90d238b554",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:59b5661c-f11e-3678-b890-18ea0cbad739",
  "kind": "theorem",
  "lexical_name": "_root_.Directed.measure_iUnion",
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
  "slug": "root-directed-measure-iunion--17940ff606b4129017d9207a",
  "source": {
    "blob": "be390e716cdc71c2e888e6c47fa50e7cbc0e0ca1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 70,
    "line": 36,
    "path": "GRWTSK/Topology/GeneralTopology/Continuity/Variant71e65bb1ccc238681d9bee53da18cdaa3c7a6f2ffcdfdda9f30443c277f64ced.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:17940ff606b4129017d9207a90845adaac276c90e6b1956013098fb998aab731",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Continuity/Variant71e65bb1ccc238681d9bee53da18cdaa3c7a6f2ffcdfdda9f30443c277f64ced.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:59b5661c-f11e-3678-b890-18ea0cbad739`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 36–70.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.Directed.measure_iUnion [Countable ι] (hd : Directed (· ⊆ ·) s) :
    μ (⋃ i, s i) = ⨆ i, μ (s i) := by
  -- WLOG, `ι = ℕ`
  rcases Countable.exists_injective_nat ι with ⟨e, he⟩
  generalize ht : Function.extend e s ⊥ = t
  replace hd : Directed (· ⊆ ·) t := ht ▸ hd.extend_bot he
  suffices μ (⋃ n, t n) = ⨆ n, μ (t n) by
    simp only [← ht, Function.apply_extend μ, ← iSup_eq_iUnion, iSup_extend_bot he,
      Function.comp_def, Pi.bot_apply, bot_eq_empty, measure_empty] at this
    exact this.trans (iSup_extend_bot he _)
  clear! ι
  -- The `≥` inequality is trivial
  refine le_antisymm ?_ (iSup_le fun i ↦ measure_mono <| subset_iUnion _ _)
  -- Choose `T n ⊇ t n` of the same measure, put `Td n = disjointed T`
  set T : ℕ → Set α := fun n => toMeasurable μ (t n)
  set Td : ℕ → Set α := disjointed T
  have hm : ∀ n, MeasurableSet (Td n) := .disjointed fun n ↦ measurableSet_toMeasurable _ _
  calc
    μ (⋃ n, t n) = μ (⋃ n, Td n) := by rw [iUnion_disjointed, measure_iUnion_toMeasurable]
    _ ≤ ∑' n, μ (Td n) := measure_iUnion_le _
    _ = ⨆ I : Finset ℕ, ∑ n ∈ I, μ (Td n) := ENNReal.tsum_eq_iSup_sum
    _ ≤ ⨆ n, μ (t n) := iSup_le fun I => by
      rcases hd.finset_le I with ⟨N, hN⟩
      calc
        (∑ n ∈ I, μ (Td n)) = μ (⋃ n ∈ I, Td n) :=
          (measure_biUnion_finset ((disjoint_disjointed T).set_pairwise I) fun n _ => hm n).symm
        _ ≤ μ (⋃ n ∈ I, T n) := measure_mono (iUnion₂_mono fun n _hn => disjointed_subset _ _)
        _ = μ (⋃ n ∈ I, t n) := measure_biUnion_toMeasurable I.countable_toSet _
        _ ≤ μ (t N) := measure_mono (iUnion₂_subset hN)
        _ ≤ ⨆ n, μ (t n) := le_iSup (μ ∘ t) N

/-- Continuity from below:
the measure of the union of a monotone family of sets is equal to the supremum of their measures.
The theorem assumes that the `atTop` filter on the index set is countably generated,
so it works for a family indexed by a countable type, as well as `ℝ`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Continuity/Variant71e65bb1ccc238681d9bee53da18cdaa3c7a6f2ffcdfdda9f30443c277f64ced.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Continuity/Variant71e65bb1ccc238681d9bee53da18cdaa3c7a6f2ffcdfdda9f30443c277f64ced.lean#L36).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `be390e716cdc71c2e888e6c47fa50e7cbc0e0ca1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
