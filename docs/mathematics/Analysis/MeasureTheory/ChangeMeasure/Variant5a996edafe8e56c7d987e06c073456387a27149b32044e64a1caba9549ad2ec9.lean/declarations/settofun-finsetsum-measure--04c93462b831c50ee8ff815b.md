# setToFun_finsetSum_measure

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "13853316b27cc24ecbbdab8cc1b4391a8f93e64f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 219,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/5a/5a996edafe8e56c7d987e06c073456387a27149b32044e64a1caba9549ad2ec9.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1df9e98f-6e7e-6b7c-d49e-14c466200120",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:bcdc815b-0981-fdf9-921e-dd5e7dace62f",
  "kind": "theorem",
  "lexical_name": "setToFun_finsetSum_measure",
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
  "slug": "settofun-finsetsum-measure--04c93462b831c50ee8ff815b",
  "source": {
    "blob": "13853316b27cc24ecbbdab8cc1b4391a8f93e64f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 233,
    "line": 219,
    "path": "GRWTSK/Analysis/MeasureTheory/ChangeMeasure/Variant5a996edafe8e56c7d987e06c073456387a27149b32044e64a1caba9549ad2ec9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:04c93462b831c50ee8ff815b08154de60ad269ca077a472e629da073a16f5a68",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/ChangeMeasure/Variant5a996edafe8e56c7d987e06c073456387a27149b32044e64a1caba9549ad2ec9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bcdc815b-0981-fdf9-921e-dd5e7dace62f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 219–233.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem setToFun_finsetSum_measure {ι} {s : Finset ι} (hs : s.Nonempty)
    {μ : ι → Measure α} {T : ι → Set α → E →L[ℝ] F} {C : ι → ℝ}
    (hTs : ∀ i, DominatedFinMeasAdditive (μ i) (T i) (C i))
    (hf : ∀ i ∈ s, Integrable f (μ i)) :
    setToFun (∑ i ∈ s, μ i) (∑ i ∈ s, T i)
      (DominatedFinMeasAdditive.finsetSum_measure hs μ T C hTs) f =
      ∑ i ∈ s, setToFun (μ i) (T i) (hTs i) f := by
  induction hs using Finset.Nonempty.cons_induction with
  | singleton i => simp
  | @cons i s his hs' ih =>
    simpa [his, ih fun j hj => hf j (Finset.mem_cons_of_mem hj)] using!
      setToFun_add_measure (hTs i) (DominatedFinMeasAdditive.finsetSum_measure hs' μ T C hTs)
      (hf i (Finset.mem_cons_self i s))
      (integrable_finsetSum_measure.2 fun j hj => hf j (Finset.mem_cons_of_mem hj))

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/ChangeMeasure/Variant5a996edafe8e56c7d987e06c073456387a27149b32044e64a1caba9549ad2ec9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/ChangeMeasure/Variant5a996edafe8e56c7d987e06c073456387a27149b32044e64a1caba9549ad2ec9.lean#L219).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `13853316b27cc24ecbbdab8cc1b4391a8f93e64f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
