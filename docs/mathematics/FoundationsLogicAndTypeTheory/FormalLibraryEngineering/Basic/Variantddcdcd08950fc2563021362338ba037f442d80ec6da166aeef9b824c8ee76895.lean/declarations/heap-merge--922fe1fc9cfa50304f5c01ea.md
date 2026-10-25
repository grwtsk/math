# Heap.merge

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e75928caf30977c569cf4779b7fb15ced4c8ea02931b148fd6c0fbf10018c2fe",
  "kind": "def",
  "lexical_name": "Heap.merge",
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
  "slug": "heap-merge--922fe1fc9cfa50304f5c01ea",
  "source": {
    "blob": "8e447047ed43f813890b8b82b08eae7c0bc592ac",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 159,
    "line": 139,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantddcdcd08950fc2563021362338ba037f442d80ec6da166aeef9b824c8ee76895.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:922fe1fc9cfa50304f5c01ea41a48dfbd4abcfbaab76bfbc1b74a332dc42da65",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantddcdcd08950fc2563021362338ba037f442d80ec6da166aeef9b824c8ee76895.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e75928caf30977c569cf4779b7fb15ced4c8ea02931b148fd6c0fbf10018c2fe`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 139–159.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[specialize] def Heap.merge (le : α → α → Bool) : Heap α → Heap α → Heap α
  | .nil, h  => h
  | h,  .nil => h
  | s₁@(.cons r₁ a₁ n₁ t₁), s₂@(.cons r₂ a₂ n₂ t₂) =>
    if r₁ < r₂ then .cons r₁ a₁ n₁ (merge le t₁ s₂)
    else if r₂ < r₁ then .cons r₂ a₂ n₂ (merge le s₁ t₂)
    else
      let (a, n) := combine le a₁ a₂ n₁ n₂
      let r := r₁ + 1
      if t₁.rankGT r then if t₂.rankGT r
        then .cons r a n (merge le t₁ t₂)
        else merge le (.cons r a n t₁) t₂
      else if t₂.rankGT r
        then merge le t₁ (.cons r a n t₂)
        else .cons r a n (merge le t₁ t₂)
termination_by s₁ s₂ => s₁.length + s₂.length

/--
`O(log n)`. Convert a `HeapNode` to a `Heap` by reversing the order of the nodes
along the `sibling` spine.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantddcdcd08950fc2563021362338ba037f442d80ec6da166aeef9b824c8ee76895.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantddcdcd08950fc2563021362338ba037f442d80ec6da166aeef9b824c8ee76895.lean#L139).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8e447047ed43f813890b8b82b08eae7c0bc592ac` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
