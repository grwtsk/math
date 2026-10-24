# measurable_add_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "256cb3bff218421de976104a3231aacad07c5b6e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 191,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c6/c630b30043afead15bd717dcdfaaec9ffb5ff17a1228542e40694b67cf61bc0a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3ddda8ac-c7db-635b-f728-ab4ddb0014fc",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8fe95900-ff0f-bedb-1d10-83279b0c3e60",
  "kind": "lemma",
  "lexical_name": "measurable_add_one",
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
  "slug": "measurable-add-one--b63d4fb6c8ac31a466798b9f",
  "source": {
    "blob": "256cb3bff218421de976104a3231aacad07c5b6e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 204,
    "line": 191,
    "path": "GRWTSK/Analysis/MeasureTheory/Predictable/Variantc630b30043afead15bd717dcdfaaec9ffb5ff17a1228542e40694b67cf61bc0a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b63d4fb6c8ac31a466798b9fdecd44e86610b6cdbdc78822980d1ea11e77595d",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Predictable/Variantc630b30043afead15bd717dcdfaaec9ffb5ff17a1228542e40694b67cf61bc0a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8fe95900-ff0f-bedb-1d10-83279b0c3e60`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 191–204.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma measurable_add_one {𝓕 : Filtration ℕ m} {u : ℕ → Ω → E}
    (h𝓕 : IsStronglyPredictable 𝓕 u) (n : ℕ) : StronglyMeasurable[𝓕 n] (u (n + 1)) := by
  let : MeasurableSpace (ℕ × Ω) := 𝓕.predictable
  let : MeasurableSpace Ω := 𝓕 n
  let X m := (Function.curry (h𝓕.approx m) (n + 1))
  refine ⟨(fun m ↦ SimpleFunc.mk (X m) ?_ ?_), (fun ω ↦ h𝓕.tendsto_approx ⟨(n + 1), ω⟩)⟩
  · intro s
    rw [(by aesop : X m ⁻¹' {s} = {ω | (n + 1, ω) ∈ h𝓕.approx m ⁻¹' {s}})]
    apply measurableSet_prodMk_add_one_of_predictable
    apply (h𝓕.approx m).measurableSet_fiber
  · apply (h𝓕.approx m).finite_range.subset
    rw [Set.range_subset_iff]
    aesop

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Predictable/Variantc630b30043afead15bd717dcdfaaec9ffb5ff17a1228542e40694b67cf61bc0a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Predictable/Variantc630b30043afead15bd717dcdfaaec9ffb5ff17a1228542e40694b67cf61bc0a.lean#L191).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `256cb3bff218421de976104a3231aacad07c5b6e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
