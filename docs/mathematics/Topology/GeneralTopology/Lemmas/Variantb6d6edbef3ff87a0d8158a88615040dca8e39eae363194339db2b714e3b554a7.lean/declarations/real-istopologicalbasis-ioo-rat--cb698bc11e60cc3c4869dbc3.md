# Real.isTopologicalBasis_Ioo_rat

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "16e0bb058bc607baf07f47717d75da382ede54b4",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 26,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b6/b6d6edbef3ff87a0d8158a88615040dca8e39eae363194339db2b714e3b554a7.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:54c34979-30cd-2152-1d53-7fdff2f68252",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0a08a709-afab-d8da-5638-02e7159c09c1",
  "kind": "theorem",
  "lexical_name": "Real.isTopologicalBasis_Ioo_rat",
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
  "slug": "real-istopologicalbasis-ioo-rat--cb698bc11e60cc3c4869dbc3",
  "source": {
    "blob": "16e0bb058bc607baf07f47717d75da382ede54b4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 38,
    "line": 26,
    "path": "GRWTSK/Topology/GeneralTopology/Lemmas/Variantb6d6edbef3ff87a0d8158a88615040dca8e39eae363194339db2b714e3b554a7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cb698bc11e60cc3c4869dbc3980007ae5a5f9dab6a87755d8f3f1b4b41428b23",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Lemmas/Variantb6d6edbef3ff87a0d8158a88615040dca8e39eae363194339db2b714e3b554a7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0a08a709-afab-d8da-5638-02e7159c09c1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 26–38.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Real.isTopologicalBasis_Ioo_rat :
    @IsTopologicalBasis ℝ _ (⋃ (a : ℚ) (b : ℚ) (_ : a < b), {Ioo (a : ℝ) b}) :=
  isTopologicalBasis_of_isOpen_of_nhds (by simp +contextual [isOpen_Ioo])
    fun a _ hav hv =>
    let ⟨_, _, ⟨hl, hu⟩, h⟩ := mem_nhds_iff_exists_Ioo_subset.mp (IsOpen.mem_nhds hv hav)
    let ⟨q, hlq, hqa⟩ := exists_rat_btwn hl
    let ⟨p, hap, hpu⟩ := exists_rat_btwn hu
    ⟨Ioo q p, by
      simp only [mem_iUnion]
      exact ⟨q, p, Rat.cast_lt.1 <| hqa.trans hap, rfl⟩, ⟨hqa, hap⟩, fun _ ⟨hqa', ha'p⟩ =>
      h ⟨hlq.trans hqa', ha'p.trans hpu⟩⟩

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Lemmas/Variantb6d6edbef3ff87a0d8158a88615040dca8e39eae363194339db2b714e3b554a7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Lemmas/Variantb6d6edbef3ff87a0d8158a88615040dca8e39eae363194339db2b714e3b554a7.lean#L26).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `16e0bb058bc607baf07f47717d75da382ede54b4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
