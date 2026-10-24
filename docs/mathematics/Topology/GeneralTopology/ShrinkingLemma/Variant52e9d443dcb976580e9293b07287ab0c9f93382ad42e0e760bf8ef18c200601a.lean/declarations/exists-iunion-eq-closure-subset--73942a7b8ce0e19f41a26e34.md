# exists_iUnion_eq_closure_subset

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f3ef08a5f6a7e0a2c9bca8d17105ea95cf00ca2d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 240,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/52/52e9d443dcb976580e9293b07287ab0c9f93382ad42e0e760bf8ef18c200601a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:083dc4c7-0921-aee3-0971-fe3561194a9d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8f3c77b3-ecaa-5472-ddc6-84a6f8ef6879",
  "kind": "theorem",
  "lexical_name": "exists_iUnion_eq_closure_subset",
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
  "slug": "exists-iunion-eq-closure-subset--73942a7b8ce0e19f41a26e34",
  "source": {
    "blob": "f3ef08a5f6a7e0a2c9bca8d17105ea95cf00ca2d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 248,
    "line": 240,
    "path": "GRWTSK/Topology/GeneralTopology/ShrinkingLemma/Variant52e9d443dcb976580e9293b07287ab0c9f93382ad42e0e760bf8ef18c200601a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:73942a7b8ce0e19f41a26e346ca168e630971d43158d77d84aa45f7fde179da0",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ShrinkingLemma/Variant52e9d443dcb976580e9293b07287ab0c9f93382ad42e0e760bf8ef18c200601a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8f3c77b3-ecaa-5472-ddc6-84a6f8ef6879`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 240–248.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_iUnion_eq_closure_subset (uo : ∀ i, IsOpen (u i)) (uf : ∀ x, { i | x ∈ u i }.Finite)
    (uU : ⋃ i, u i = univ) :
    ∃ v : ι → Set X, iUnion v = univ ∧ (∀ i, IsOpen (v i)) ∧ ∀ i, closure (v i) ⊆ u i :=
  let ⟨v, vU, hv⟩ := exists_subset_iUnion_closure_subset isClosed_univ uo (fun x _ => uf x) uU.ge
  ⟨v, univ_subset_iff.1 vU, hv⟩

/-- Shrinking lemma. A point-finite open cover of a closed subset of a normal space can be "shrunk"
to a new closed cover so that each of the new closed sets is contained in the corresponding
original open set. See also `exists_iUnion_eq_closure_subset` for a stronger statement. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ShrinkingLemma/Variant52e9d443dcb976580e9293b07287ab0c9f93382ad42e0e760bf8ef18c200601a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ShrinkingLemma/Variant52e9d443dcb976580e9293b07287ab0c9f93382ad42e0e760bf8ef18c200601a.lean#L240).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f3ef08a5f6a7e0a2c9bca8d17105ea95cf00ca2d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
