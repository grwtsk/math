# normalize_pop

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:27675e31-0add-2279-10d7-02366d6d063c",
  "kind": "theorem",
  "lexical_name": "normalize_pop",
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
  "slug": "normalize-pop--3001be3e7b9176608bdc0ea1",
  "source": {
    "blob": "72fb149c7256c4d4cff8f7731e83005382dbcfce",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 146,
    "line": 129,
    "path": "GRWTSK/InformationTheory/Huffman/HeapRefinement.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3001be3e7b9176608bdc0ea1490bd5b6af540ba0d586ff2a85da2504d748bccd",
  "verification": {
    "reference": "docs/verification/InformationTheory/SourceCoding/Lossless/PrefixCodes/Huffman/HeapRefinement.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:27675e31-0add-2279-10d7-02366d6d063c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 129–146.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem normalize_pop {queue : List Entry} {head : Entry} {tail : List Entry}
    (hu : UniqueMinima queue) (hp : Pop queue head tail) :
    orderEntries queue = head :: orderEntries tail := by
  have hs : (head :: orderEntries tail).Pairwise KeyLE := by
    apply List.pairwise_cons.mpr
    refine ⟨?_, orderEntries_sorted tail⟩
    intro entry he
    exact hp.least entry (hp.permutation.symm.subset
      (List.mem_cons_of_mem _ ((orderEntries_perm tail).subset he)))
  have hperm : (orderEntries queue).Perm (head :: orderEntries tail) :=
    (orderEntries_perm queue).trans
      (hp.permutation.trans ((orderEntries_perm tail).cons head).symm)
  apply hperm.eq_of_pairwise _ (orderEntries_sorted queue) hs
  intro x y hx hy hxy hyx
  exact unique_minimum hu ((orderEntries_perm queue).subset hx)
    ((orderEntries_perm queue).subset (hperm.symm.subset hy)) (keyLE_minimum_eq hxy hyx)

/-- Exactly two API pops choose exactly the first two canonical entries. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/InformationTheory/SourceCoding/Lossless/PrefixCodes/Huffman/HeapRefinement.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/InformationTheory/Huffman/HeapRefinement.lean#L129).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `72fb149c7256c4d4cff8f7731e83005382dbcfce` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
