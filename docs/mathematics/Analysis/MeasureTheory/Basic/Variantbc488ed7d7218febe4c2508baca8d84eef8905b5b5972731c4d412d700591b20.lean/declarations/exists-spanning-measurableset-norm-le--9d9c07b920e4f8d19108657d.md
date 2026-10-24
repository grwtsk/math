# exists_spanning_measurableSet_norm_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "54ee612fcbf62feb05db72a60e85689615b71f4a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1079,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/bc/bc488ed7d7218febe4c2508baca8d84eef8905b5b5972731c4d412d700591b20.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:29ff06e3-5539-acd0-82f4-c7a3afd32e97",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e850fc72-480f-f7db-f4c8-27fbb96949c8",
  "kind": "theorem",
  "lexical_name": "exists_spanning_measurableSet_norm_le",
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
  "slug": "exists-spanning-measurableset-norm-le--9d9c07b920e4f8d19108657d",
  "source": {
    "blob": "54ee612fcbf62feb05db72a60e85689615b71f4a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1095,
    "line": 1079,
    "path": "GRWTSK/Analysis/MeasureTheory/Basic/Variantbc488ed7d7218febe4c2508baca8d84eef8905b5b5972731c4d412d700591b20.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9d9c07b920e4f8d19108657d9765ec0f991a300f5fbec78effa6f1314f27b6db",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Basic/Variantbc488ed7d7218febe4c2508baca8d84eef8905b5b5972731c4d412d700591b20.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e850fc72-480f-f7db-f4c8-27fbb96949c8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1079–1095.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_spanning_measurableSet_norm_le [SeminormedAddCommGroup β] {m m0 : MeasurableSpace α}
    (hm : m ≤ m0) (hf : StronglyMeasurable[m] f) (μ : Measure α) [SigmaFinite (μ.trim hm)] :
    ∃ s : ℕ → Set α,
      (∀ n, MeasurableSet[m] (s n) ∧ μ (s n) < ∞ ∧ ∀ x ∈ s n, ‖f x‖ ≤ n) ∧
      ⋃ i, s i = Set.univ := by
  obtain ⟨s, hs, hs_univ⟩ :=
    @exists_spanning_measurableSet_le _ m _ hf.nnnorm.measurable (μ.trim hm) _
  refine ⟨s, fun n ↦ ⟨(hs n).1, (le_trim hm).trans_lt (hs n).2.1, fun x hx ↦ ?_⟩, hs_univ⟩
  have hx_nnnorm : ‖f x‖₊ ≤ n := (hs n).2.2 x hx
  rw [← coe_nnnorm]
  norm_cast

end StronglyMeasurable

/-! ## Finitely strongly measurable functions -/


```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Basic/Variantbc488ed7d7218febe4c2508baca8d84eef8905b5b5972731c4d412d700591b20.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Basic/Variantbc488ed7d7218febe4c2508baca8d84eef8905b5b5972731c4d412d700591b20.lean#L1079).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `54ee612fcbf62feb05db72a60e85689615b71f4a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
