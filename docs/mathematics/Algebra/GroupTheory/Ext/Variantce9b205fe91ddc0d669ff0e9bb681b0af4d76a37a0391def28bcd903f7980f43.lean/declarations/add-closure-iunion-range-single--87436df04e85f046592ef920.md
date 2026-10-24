# add_closure_iUnion_range_single

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "44fe9661a9fc48be3315ed9625bb44ea1e659dda",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 37,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ce/ce9b205fe91ddc0d669ff0e9bb681b0af4d76a37a0391def28bcd903f7980f43.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:cce8412d-5039-70b5-c565-e4813c487c18",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b25c57a5-2472-0929-dbc6-41c5ed856180",
  "kind": "theorem",
  "lexical_name": "add_closure_iUnion_range_single",
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
  "slug": "add-closure-iunion-range-single--87436df04e85f046592ef920",
  "source": {
    "blob": "44fe9661a9fc48be3315ed9625bb44ea1e659dda",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 47,
    "line": 37,
    "path": "GRWTSK/Algebra/GroupTheory/Ext/Variantce9b205fe91ddc0d669ff0e9bb681b0af4d76a37a0391def28bcd903f7980f43.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:87436df04e85f046592ef92059968596e986ca37d3a4477422f8e063c92cd4fc",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Ext/Variantce9b205fe91ddc0d669ff0e9bb681b0af4d76a37a0391def28bcd903f7980f43.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b25c57a5-2472-0929-dbc6-41c5ed856180`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 37–47.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem add_closure_iUnion_range_single :
    AddSubmonoid.closure (⋃ i : ι, Set.range (single i : β i → Π₀ i, β i)) = ⊤ :=
  top_unique fun x _ => by
    apply DFinsupp.induction x
    · exact AddSubmonoid.zero_mem _
    exact fun a b f _ _ hf =>
      AddSubmonoid.add_mem _
        (AddSubmonoid.subset_closure <| Set.mem_iUnion.2 ⟨a, Set.mem_range_self _⟩) hf

/-- If two additive homomorphisms from `Π₀ i, β i` are equal on each `single a b`, then
they are equal. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Ext/Variantce9b205fe91ddc0d669ff0e9bb681b0af4d76a37a0391def28bcd903f7980f43.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Ext/Variantce9b205fe91ddc0d669ff0e9bb681b0af4d76a37a0391def28bcd903f7980f43.lean#L37).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `44fe9661a9fc48be3315ed9625bb44ea1e659dda` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
