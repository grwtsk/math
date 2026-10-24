# containsThenInsert!

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9e2148bf4966dad59786805fd8af85eb7d37741b266615c9c5b5b1a2881feaf0",
  "kind": "def",
  "lexical_name": "containsThenInsert!",
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
  "slug": "containstheninsert--24ee6d5018e2452c8409a621",
  "source": {
    "blob": "e339bb93aac40bc1487e93c83d949400f061b3fb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 382,
    "line": 371,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Operations/Variant8c635c967a0a6c0784fc944ae2140094c38a7fb475a839c0b3c8aa59b8a8f8fa.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:24ee6d5018e2452c8409a6217d58839319b02a1aa742a120d37505a484d039c1",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Operations/Variant8c635c967a0a6c0784fc944ae2140094c38a7fb475a839c0b3c8aa59b8a8f8fa.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9e2148bf4966dad59786805fd8af85eb7d37741b266615c9c5b5b1a2881feaf0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 371–382.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def containsThenInsert! [Ord α] (k : α) (v : β k) (t : Impl α β) :
    Bool × Impl α β :=
  let sz := size t
  let m := t.insert! k v
  (sz == m.size, m)
where -- workaround for https://github.com/leanprover/lean4/issues/6058
  size : Impl α β → Nat
  | leaf => 0
  | inner sz _ _ _ _ => sz

/-- Adds a new mapping to the tree, leaving the tree unchanged if the key is already present. -/
@[inline]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Operations/Variant8c635c967a0a6c0784fc944ae2140094c38a7fb475a839c0b3c8aa59b8a8f8fa.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Operations/Variant8c635c967a0a6c0784fc944ae2140094c38a7fb475a839c0b3c8aa59b8a8f8fa.lean#L371).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e339bb93aac40bc1487e93c83d949400f061b3fb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
