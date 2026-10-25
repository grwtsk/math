# card_filter_edgeFinset_toFinset_subset

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9e643b4766c26940297ac1e8120c1dcaf37a2d00",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 755,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/92/92fbffd4306819f936b33beea6db53a2e3b0e1e8ab7913e354119e411eda9a6f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f2a080fe-2741-4c69-b7ef-5b2240c3196f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9883703f-7280-11ff-cd56-e5d55473b9de",
  "kind": "theorem",
  "lexical_name": "card_filter_edgeFinset_toFinset_subset",
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
  "slug": "card-filter-edgefinset-tofinset-subset--29db5ed78115f4430784a064",
  "source": {
    "blob": "9e643b4766c26940297ac1e8120c1dcaf37a2d00",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 769,
    "line": 755,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Finite/Variant92fbffd4306819f936b33beea6db53a2e3b0e1e8ab7913e354119e411eda9a6f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:29db5ed78115f4430784a064619938833cc986d5dce994261b37db886d94a84e",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Finite/Variant92fbffd4306819f936b33beea6db53a2e3b0e1e8ab7913e354119e411eda9a6f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9883703f-7280-11ff-cd56-e5d55473b9de`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 755–769.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem card_filter_edgeFinset_toFinset_subset [DecidableEq V] (s : Finset V) :
    #{e ∈ G.edgeFinset | e.toFinset ⊆ s} = #(G.induce ↑s).edgeFinset := by
  have h := congrArg Finset.card (map_edgeFinset_induce (s := (↑s : Set V)) (G := G))
  rw [card_map, toFinset_coe] at h
  rw [filter_edgeFinset_toFinset_subset]
  convert h.symm using 1
  congr!

end Support

section Map

variable [Fintype V] {W : Type*} [Fintype W] [DecidableEq W]

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Finite/Variant92fbffd4306819f936b33beea6db53a2e3b0e1e8ab7913e354119e411eda9a6f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Finite/Variant92fbffd4306819f936b33beea6db53a2e3b0e1e8ab7913e354119e411eda9a6f.lean#L755).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9e643b4766c26940297ac1e8120c1dcaf37a2d00` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
