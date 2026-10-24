# addContent_iUnion_eq_tsum_of_addContent_iUnion_eq_iSup

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "36511f3c1ee578146fd740b5241d08316d783442",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 659,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/03/0345798209e37802b387be6c7ff051914c1924e165450e101692fe555f39772f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:afb410a7-9161-78b1-c01a-78233224269e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:bd0b6599-e34b-1c2f-4249-a3c8ecd01fb4",
  "kind": "theorem",
  "lexical_name": "addContent_iUnion_eq_tsum_of_addContent_iUnion_eq_iSup",
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
  "slug": "addcontent-iunion-eq-tsum-of-addcontent-iunion-eq-isup--35587c02299cb2cc20efefb7",
  "source": {
    "blob": "36511f3c1ee578146fd740b5241d08316d783442",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 675,
    "line": 659,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/AddContent/Variant0345798209e37802b387be6c7ff051914c1924e165450e101692fe555f39772f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:35587c02299cb2cc20efefb7894f6b6398895ec23b192676cb753e06262a6f77",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/AddContent/Variant0345798209e37802b387be6c7ff051914c1924e165450e101692fe555f39772f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bd0b6599-e34b-1c2f-4249-a3c8ecd01fb4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 659–675.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem addContent_iUnion_eq_tsum_of_addContent_iUnion_eq_iSup
    (hC : IsSetRing C) (m : AddContent ℝ≥0∞ C)
    {s : ℕ → Set α} (hd : Pairwise (Disjoint on s)) (hs : ∀ i, s i ∈ C)
    (hm_iSup : ∀ ⦃s : ℕ → Set α⦄, (∀ n, s n ∈ C) → Monotone s → m (⋃ n, s n) = ⨆ n, m (s n)) :
    m (⋃ i, s i) = ∑' i, m (s i) :=
  calc
    m (⋃ i, s i) = m (⋃ i, accumulate s i) := by simp
    _ = ⨆ i, m (accumulate s i) :=
      hm_iSup (fun n ↦ IsSetRing.accumulate_mem hC hs n) monotone_accumulate
    _ = ⨆ i, ∑ j ∈ range (i + 1), m (s j) :=
      iSup_congr fun i ↦ addContent_accumulate m hC hd hs i
    _ = ∑' i, m (s i) :=
      (ENNReal.tsum_eq_iSup_nat' (tendsto_add_atTop_nat 1)).symm

end IsSetRing

end MeasureTheory
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/AddContent/Variant0345798209e37802b387be6c7ff051914c1924e165450e101692fe555f39772f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/AddContent/Variant0345798209e37802b387be6c7ff051914c1924e165450e101692fe555f39772f.lean#L659).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `36511f3c1ee578146fd740b5241d08316d783442` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
