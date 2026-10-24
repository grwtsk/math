# tendsto_vectorMeasure_iInter_atTop_nat

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5550c98cde2070a8825dfc4d48cc41cebd2b815a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 196,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/9b/9b693bfa01701a37f1a29d839e62c8e0de285c80c2526573fa8a73dca3985706.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:32f1ff15-627b-352b-dde9-a1ebd5aa57a3",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:48755fb3-670f-3b4f-d8d3-1a552959c3ae",
  "kind": "theorem",
  "lexical_name": "tendsto_vectorMeasure_iInter_atTop_nat",
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
  "slug": "tendsto-vectormeasure-iinter-attop-nat--949014c507360a642777b52a",
  "source": {
    "blob": "5550c98cde2070a8825dfc4d48cc41cebd2b815a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 210,
    "line": 196,
    "path": "GRWTSK/Analysis/MeasureTheory/Basic/Variant9b693bfa01701a37f1a29d839e62c8e0de285c80c2526573fa8a73dca3985706.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:949014c507360a642777b52ad657df26211f04db8213bf21df6bad40d12207de",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Basic/Variant9b693bfa01701a37f1a29d839e62c8e0de285c80c2526573fa8a73dca3985706.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:48755fb3-670f-3b4f-d8d3-1a552959c3ae`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 196–210.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tendsto_vectorMeasure_iInter_atTop_nat
    {M : Type*} [AddCommGroup M] [TopologicalSpace M] [T2Space M] [ContinuousSub M]
    {v : VectorMeasure α M} {s : ℕ → Set α} (hm : Antitone s) (hs : ∀ i, MeasurableSet (s i)) :
    Tendsto (fun n ↦ v (s n)) atTop (𝓝 (v (⋂ n, s n))) := by
  have I n : v (s n) = v univ - v (s n)ᶜ := by simp [of_compl (hs n)]
  have J : v (⋂ n, s n) = v univ - v (⋃ n, (s n)ᶜ) := by
    rw [← of_compl (MeasurableSet.iUnion (fun n ↦ (hs n).compl))]
    simp
  simp_rw [I, J]
  apply tendsto_const_nhds.sub
  exact tendsto_vectorMeasure_iUnion_atTop_nat (fun i j hij ↦ by simpa using hm hij)
    (fun i ↦ (hs i).compl)

/-- If two vector measures give the same mass to the whole space and coincide on a
generating π-system, then they coincide. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Basic/Variant9b693bfa01701a37f1a29d839e62c8e0de285c80c2526573fa8a73dca3985706.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Basic/Variant9b693bfa01701a37f1a29d839e62c8e0de285c80c2526573fa8a73dca3985706.lean#L196).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5550c98cde2070a8825dfc4d48cc41cebd2b815a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
