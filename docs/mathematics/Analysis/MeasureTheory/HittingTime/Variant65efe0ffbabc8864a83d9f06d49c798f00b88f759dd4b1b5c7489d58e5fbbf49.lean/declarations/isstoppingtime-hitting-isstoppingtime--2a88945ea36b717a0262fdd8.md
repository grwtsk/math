# isStoppingTime_hitting_isStoppingTime

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "be0ad7517a91b7707a098018c45f3b548879b219",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 256,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/65/65efe0ffbabc8864a83d9f06d49c798f00b88f759dd4b1b5c7489d58e5fbbf49.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:51963e42-1fbe-6d4e-691d-f233c17bba94",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:41ab1be0-aed2-eb57-e970-357d1ee0e91b",
  "kind": "theorem",
  "lexical_name": "isStoppingTime_hitting_isStoppingTime",
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
  "slug": "isstoppingtime-hitting-isstoppingtime--2a88945ea36b717a0262fdd8",
  "source": {
    "blob": "be0ad7517a91b7707a098018c45f3b548879b219",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 282,
    "line": 256,
    "path": "GRWTSK/Analysis/MeasureTheory/HittingTime/Variant65efe0ffbabc8864a83d9f06d49c798f00b88f759dd4b1b5c7489d58e5fbbf49.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2a88945ea36b717a0262fdd8b21e3fef97ed039d440ad0a7a606a9d03d74c49d",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/HittingTime/Variant65efe0ffbabc8864a83d9f06d49c798f00b88f759dd4b1b5c7489d58e5fbbf49.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:41ab1be0-aed2-eb57-e970-357d1ee0e91b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 256–282.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isStoppingTime_hitting_isStoppingTime [ConditionallyCompleteLinearOrder ι]
    [IsWellOrder ι (· < ·)] [Countable ι] [TopologicalSpace ι] [OrderTopology ι]
    [FirstCountableTopology ι] [TopologicalSpace β] [PseudoMetrizableSpace β] [MeasurableSpace β]
    [BorelSpace β] {f : Filtration ι m} {u : ι → Ω → β} {τ : Ω → ι} (hτ : IsStoppingTime f τ)
    {N : ι} (hτbdd : ∀ x, τ x ≤ N) {s : Set β} (hs : MeasurableSet s) (hf : Adapted f u) :
    IsStoppingTime f fun x => hitting u s (τ x) N x := by
  intro n
  have h₁ : {x | hitting u s (τ x) N x ≤ n} =
    (⋃ i ≤ n, {x | τ x = i} ∩ {x | hitting u s i N x ≤ n}) ∪
      ⋃ i > n, {x | τ x = i} ∩ {x | hitting u s i N x ≤ n} := by
    ext x
    simp [← exists_or, ← or_and_right, le_or_lt]
  have h₂ : ⋃ i > n, {x | τ x = i} ∩ {x | hitting u s i N x ≤ n} = ∅ := by
    ext x
    simp only [gt_iff_lt, Set.mem_iUnion, Set.mem_inter_iff, Set.mem_setOf_eq, exists_prop,
      Set.mem_empty_iff_false, iff_false_iff, not_exists, not_and, not_le]
    rintro m hm rfl
    exact lt_of_lt_of_le hm (le_hitting (hτbdd _) _)
  rw [h₁, h₂, Set.union_empty]
  exact MeasurableSet.iUnion fun i => MeasurableSet.iUnion fun hi =>
    (f.mono hi _ (hτ.measurableSet_eq i)).inter (hitting_isStoppingTime hf hs n)
#align measure_theory.is_stopping_time_hitting_is_stopping_time MeasureTheory.isStoppingTime_hitting_isStoppingTime

section CompleteLattice

variable [CompleteLattice ι] {u : ι → Ω → β} {s : Set β} {f : Filtration ι m}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/HittingTime/Variant65efe0ffbabc8864a83d9f06d49c798f00b88f759dd4b1b5c7489d58e5fbbf49.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/HittingTime/Variant65efe0ffbabc8864a83d9f06d49c798f00b88f759dd4b1b5c7489d58e5fbbf49.lean#L256).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `be0ad7517a91b7707a098018c45f3b548879b219` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
