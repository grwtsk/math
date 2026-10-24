# toAdd_list_sum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a76b3f0fb0897b29a1e1b93f83b4dd42394bae9c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 833,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/14/14a3360c23c520eaf0b086fb131c5238904387d4caf5f443bdd1cda6fe216fb5.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b7dbe395-132a-154c-9deb-96d5ec6154cb",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:308f4ff8-8087-fdcd-98ef-95cfe80fb6a5",
  "kind": "theorem",
  "lexical_name": "toAdd_list_sum",
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
  "slug": "toadd-list-sum--f006cb8aae9e597931609d59",
  "source": {
    "blob": "a76b3f0fb0897b29a1e1b93f83b4dd42394bae9c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 842,
    "line": 833,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Defs/Variant14a3360c23c520eaf0b086fb131c5238904387d4caf5f443bdd1cda6fe216fb5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f006cb8aae9e597931609d59d7a773b48af636fed6f2ea70b6a9fd405daacd09",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Defs/Variant14a3360c23c520eaf0b086fb131c5238904387d4caf5f443bdd1cda6fe216fb5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:308f4ff8-8087-fdcd-98ef-95cfe80fb6a5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 833–842.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem toAdd_list_sum (s : List (Multiplicative α)) : s.prod.toAdd = (s.map toAdd).sum := by
  simp [toAdd, ofAdd]; rfl

end AddMonoid

section CommMonoid

variable [CommMonoid α]

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Defs/Variant14a3360c23c520eaf0b086fb131c5238904387d4caf5f443bdd1cda6fe216fb5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Defs/Variant14a3360c23c520eaf0b086fb131c5238904387d4caf5f443bdd1cda6fe216fb5.lean#L833).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a76b3f0fb0897b29a1e1b93f83b4dd42394bae9c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
