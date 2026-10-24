# exists_Finpartition_sum_ge

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f850a858bd40c3b7c73c17995acb523c35eafa48",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 120,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f8/f8b88eed5663f11a808ea5908188833630604d46b2075c2254a4400a9e96aca3.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:fa1ff432-eceb-d6d1-28d1-8d79b3e97d4e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ca53d90d-4f8c-901e-8a2e-0ae8839ea4a9",
  "kind": "lemma",
  "lexical_name": "exists_Finpartition_sum_ge",
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
  "slug": "exists-finpartition-sum-ge--c87a4f539cff705eff3854e1",
  "source": {
    "blob": "f850a858bd40c3b7c73c17995acb523c35eafa48",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 141,
    "line": 120,
    "path": "GRWTSK/Analysis/MeasureTheory/PreVariation/Variantf8b88eed5663f11a808ea5908188833630604d46b2075c2254a4400a9e96aca3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c87a4f539cff705eff3854e1067e7ccfacbbb001a58cfe1d881006e1ca334c04",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/PreVariation/Variantf8b88eed5663f11a808ea5908188833630604d46b2075c2254a4400a9e96aca3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ca53d90d-4f8c-901e-8a2e-0ae8839ea4a9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 120–141.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma exists_Finpartition_sum_ge {s : Set X} (hs : MeasurableSet s) {ε : ℝ≥0} (hε : 0 < ε)
    (h : preVariationFun f s ≠ ∞) :
    ∃ P : Finpartition (⟨s, hs⟩ : Subtype MeasurableSet),
    preVariationFun f s ≤ ∑ p ∈ P.parts, f p + ε := by
  let ε' := min ε (preVariationFun f s).toNNReal
  have hε' : ε' ≤ preVariationFun f s := by simp_all [ε']
  have : ε' ≤ ε := by simp_all [ε']
  obtain hw | hw : preVariationFun f s ≠ 0 ∨ preVariationFun f s = 0 := ne_or_eq _ _
  · have : 0 < ε' := by
      simp only [lt_inf_iff, ε']
      exact ⟨hε, toNNReal_pos hw h⟩
    let a := preVariationFun f s - ε'
    have ha : a < preVariationFun f s := ENNReal.sub_lt_self h hw (by positivity)
    obtain ⟨P, hP⟩ := exists_Finpartition_sum_gt f hs ha
    use P
    calc preVariationFun f s
      _ = a + ε' := (tsub_add_cancel_of_le hε').symm
      _ ≤ ∑ p ∈ P.parts, f p + ε' := by
        exact (ENNReal.add_le_add_iff_right coe_ne_top).mpr (le_of_lt hP)
      _ ≤ ∑ p ∈ P.parts, f p + ε := by gcongr
  · simp [*]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/PreVariation/Variantf8b88eed5663f11a808ea5908188833630604d46b2075c2254a4400a9e96aca3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/PreVariation/Variantf8b88eed5663f11a808ea5908188833630604d46b2075c2254a4400a9e96aca3.lean#L120).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f850a858bd40c3b7c73c17995acb523c35eafa48` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
