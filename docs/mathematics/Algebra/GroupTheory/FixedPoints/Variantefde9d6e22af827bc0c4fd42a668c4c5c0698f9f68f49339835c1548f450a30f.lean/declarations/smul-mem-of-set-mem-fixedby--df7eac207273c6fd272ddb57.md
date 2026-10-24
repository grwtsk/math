# smul_mem_of_set_mem_fixedBy

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6806dcbb64df9e2bf9dc80feb7fc43690ff020b9",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 129,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ef/efde9d6e22af827bc0c4fd42a668c4c5c0698f9f68f49339835c1548f450a30f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:fe5aff83-759e-928b-08f1-fd5b82bb3081",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:377bc640-8263-c6d9-06a4-917b0270f3ac",
  "kind": "theorem",
  "lexical_name": "smul_mem_of_set_mem_fixedBy",
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
  "slug": "smul-mem-of-set-mem-fixedby--df7eac207273c6fd272ddb57",
  "source": {
    "blob": "6806dcbb64df9e2bf9dc80feb7fc43690ff020b9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 141,
    "line": 129,
    "path": "GRWTSK/Algebra/GroupTheory/FixedPoints/Variantefde9d6e22af827bc0c4fd42a668c4c5c0698f9f68f49339835c1548f450a30f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:df7eac207273c6fd272ddb574b142095d98fe4fdfdad0244941ee190443df0be",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/FixedPoints/Variantefde9d6e22af827bc0c4fd42a668c4c5c0698f9f68f49339835c1548f450a30f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:377bc640-8263-c6d9-06a4-917b0270f3ac`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 129–141.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem smul_mem_of_set_mem_fixedBy {s : Set α} {g : G} (s_in_fixedBy : s ∈ fixedBy (Set α) g)
    {x : α} : g • x ∈ s ↔ x ∈ s := (set_mem_fixedBy_iff s g).mp s_in_fixedBy x

/--
If `s ⊆ fixedBy α g`, then `g • s = s`, which means that `s ∈ fixedBy (Set α) g`.

Note that the reverse implication is in general not true, as `s ∈ fixedBy (Set α) g` is a
weaker statement (it allows for points `x ∈ s` for which `g • x ≠ x` and `g • x ∈ s`).
-/
@[to_additive "If `s ⊆ fixedBy α g`, then `g +ᵥ s = s`, which means that `s ∈ fixedBy (Set α) g`.

Note that the reverse implication is in general not true, as `s ∈ fixedBy (Set α) g` is a
weaker statement (it allows for points `x ∈ s` for which `g +ᵥ x ≠ x` and `g +ᵥ x ∈ s`)."]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/FixedPoints/Variantefde9d6e22af827bc0c4fd42a668c4c5c0698f9f68f49339835c1548f450a30f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/FixedPoints/Variantefde9d6e22af827bc0c4fd42a668c4c5c0698f9f68f49339835c1548f450a30f.lean#L129).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6806dcbb64df9e2bf9dc80feb7fc43690ff020b9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
