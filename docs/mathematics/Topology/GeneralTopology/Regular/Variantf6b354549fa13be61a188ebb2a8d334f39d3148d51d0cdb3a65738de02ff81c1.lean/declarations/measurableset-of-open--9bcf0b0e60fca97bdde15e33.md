# measurableSet_of_open

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7e8f98e4ffedbc2b95abc544b092b5ddb633ad1b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 348,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f6/f6b354549fa13be61a188ebb2a8d334f39d3148d51d0cdb3a65738de02ff81c1.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:87a60924-87c2-66c1-1db7-d7873e5fa4cb",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9de7c6eb-75e1-5fb3-7821-3867fb773cc0",
  "kind": "theorem",
  "lexical_name": "measurableSet_of_open",
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
  "slug": "measurableset-of-open--9bcf0b0e60fca97bdde15e33",
  "source": {
    "blob": "7e8f98e4ffedbc2b95abc544b092b5ddb633ad1b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 373,
    "line": 348,
    "path": "GRWTSK/Topology/GeneralTopology/Regular/Variantf6b354549fa13be61a188ebb2a8d334f39d3148d51d0cdb3a65738de02ff81c1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9bcf0b0e60fca97bdde15e330c522f447b97ed5f27b22e118b3f2f6fea509872",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Regular/Variantf6b354549fa13be61a188ebb2a8d334f39d3148d51d0cdb3a65738de02ff81c1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9de7c6eb-75e1-5fb3-7821-3867fb773cc0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 348–373.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem measurableSet_of_open [OuterRegular μ] (H : InnerRegular μ p IsOpen) (h0 : p ∅)
    (hd : ∀ ⦃s U⦄, p s → IsOpen U → p (s \ U)) :
    InnerRegular μ p fun s => MeasurableSet s ∧ μ s ≠ ∞ := by
  rintro s ⟨hs, hμs⟩ r hr
  obtain ⟨ε, hε, hεs, rfl⟩ : ∃ (ε : _) (_ : ε ≠ 0), ε + ε ≤ μ s ∧ r = μ s - (ε + ε) := by
    use (μ s - r) / 2
    simp [*, hr.le, ENNReal.add_halves, ENNReal.sub_sub_cancel, le_add_right]
  rcases hs.exists_isOpen_diff_lt hμs hε with ⟨U, hsU, hUo, hUt, hμU⟩
  rcases (U \ s).exists_isOpen_lt_of_lt _ hμU with ⟨U', hsU', hU'o, hμU'⟩
  replace hsU' := diff_subset_comm.1 hsU'
  rcases H.exists_subset_lt_add h0 hUo hUt.ne hε with ⟨K, hKU, hKc, hKr⟩
  refine' ⟨K \ U', fun x hx => hsU' ⟨hKU hx.1, hx.2⟩, hd hKc hU'o, ENNReal.sub_lt_of_lt_add hεs _⟩
  calc
    μ s ≤ μ U := μ.mono hsU
    _ < μ K + ε := hKr
    _ ≤ μ (K \ U') + μ U' + ε := (add_le_add_right (tsub_le_iff_right.1 le_measure_diff) _)
    _ ≤ μ (K \ U') + ε + ε := by
      apply add_le_add_right; apply add_le_add_left
      exact hμU'.le
    _ = μ (K \ U') + (ε + ε) := add_assoc _ _ _
#align measure_theory.measure.inner_regular.measurable_set_of_open MeasureTheory.Measure.InnerRegular.measurableSet_of_open

open Finset

/-- In a finite measure space, assume that any open set can be approximated from inside by closed
sets. Then the measure is weakly regular. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Regular/Variantf6b354549fa13be61a188ebb2a8d334f39d3148d51d0cdb3a65738de02ff81c1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Regular/Variantf6b354549fa13be61a188ebb2a8d334f39d3148d51d0cdb3a65738de02ff81c1.lean#L348).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7e8f98e4ffedbc2b95abc544b092b5ddb633ad1b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
