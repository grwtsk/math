# setLIntegral_rnDerivAux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "15b5289d204c14c22bccd67a5b3a396fc7501f15",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 132,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e8/e8da09304f743f876989370359deca9236c7bc0af19754643e01522c384a9982.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:0601d024-1c16-74c1-e967-95f58bb39d14",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e49b67d6-a45f-b438-5660-325aa6f98dc9",
  "kind": "lemma",
  "lexical_name": "setLIntegral_rnDerivAux",
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
  "slug": "setlintegral-rnderivaux--6329821fc064dbf11bf1342a",
  "source": {
    "blob": "15b5289d204c14c22bccd67a5b3a396fc7501f15",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 148,
    "line": 132,
    "path": "GRWTSK/Analysis/MeasureTheory/RadonNikodym/Variante8da09304f743f876989370359deca9236c7bc0af19754643e01522c384a9982.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6329821fc064dbf11bf1342a24573c3aabd23a6b12791705f4d7067aa7459edb",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/RadonNikodym/Variante8da09304f743f876989370359deca9236c7bc0af19754643e01522c384a9982.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e49b67d6-a45f-b438-5660-325aa6f98dc9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 132–148.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma setLIntegral_rnDerivAux (κ η : Kernel α γ) [IsFiniteKernel κ] [IsFiniteKernel η]
    (a : α) {s : Set γ} (hs : MeasurableSet s) :
    ∫⁻ x in s, ENNReal.ofReal (rnDerivAux κ (κ + η) a x) ∂(κ + η) a = κ a s := by
  have h_le : κ ≤ κ + η := le_add_of_nonneg_right bot_le
  simp_rw [rnDerivAux]
  split_ifs with hα
  · have h_ac : κ a ≪ (κ + η) a := Measure.absolutelyContinuous_of_le (h_le a)
    rw [← Measure.setLIntegral_rnDeriv h_ac]
    refine setLIntegral_congr_fun hs ?_
    filter_upwards [Measure.rnDeriv_lt_top (κ a) ((κ + η) a)] with x hx_lt _
    rw [ENNReal.ofReal_toReal hx_lt.ne]
  · have := hαγ.countableOrCountablyGenerated.resolve_left hα
    rw [setLIntegral_density ((fst_map_id_prod _ measurable_const).trans_le h_le) _
      MeasurableSet.univ hs, map_apply' _ (by fun_prop) _ (hs.prod MeasurableSet.univ)]
    congr with x
    simp

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/RadonNikodym/Variante8da09304f743f876989370359deca9236c7bc0af19754643e01522c384a9982.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/RadonNikodym/Variante8da09304f743f876989370359deca9236c7bc0af19754643e01522c384a9982.lean#L132).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `15b5289d204c14c22bccd67a5b3a396fc7501f15` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
