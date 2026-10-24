# adjacentSwap_braid

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "03dc33b9273d4e9dfd0e528d4746248e8a08f31e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 358,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/57/57a1c0a970722ac83f5a0fbcdb4fb4045bc265a21807ffc9fbdb997bc317e32f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c55afa3e-522b-3e77-1a28-87a7af6b57c6",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:35853c61-1cd1-f6c8-d7c5-355e723da29a",
  "kind": "theorem",
  "lexical_name": "adjacentSwap_braid",
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
  "slug": "adjacentswap-braid--320da97c39d842a53e5e7dd4",
  "source": {
    "blob": "03dc33b9273d4e9dfd0e528d4746248e8a08f31e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 369,
    "line": 358,
    "path": "GRWTSK/Algebra/LinearAlgebra/CyclicFiberHop/Variant57a1c0a970722ac83f5a0fbcdb4fb4045bc265a21807ffc9fbdb997bc317e32f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:320da97c39d842a53e5e7dd49f39967fae3832befb087f7a8badc923448d8ff2",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/CyclicFiberHop/Variant57a1c0a970722ac83f5a0fbcdb4fb4045bc265a21807ffc9fbdb997bc317e32f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:35853c61-1cd1-f6c8-d7c5-355e723da29a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 358–369.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem adjacentSwap_braid :
    adjacentSwap01 * adjacentSwap12 * adjacentSwap01 =
      adjacentSwap12 * adjacentSwap01 * adjacentSwap12 := by
  ext coordinate
  fin_cases coordinate <;> rfl

/--
The adjacent linear hops satisfy the braid relation and both Coxeter
square-one relations.  This is explicit `S₃` quotient data: it does not assert
a faithful representation of the braid group `B₃`.
-/
@[surface_novel, surface_published]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/CyclicFiberHop/Variant57a1c0a970722ac83f5a0fbcdb4fb4045bc265a21807ffc9fbdb997bc317e32f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/CyclicFiberHop/Variant57a1c0a970722ac83f5a0fbcdb4fb4045bc265a21807ffc9fbdb997bc317e32f.lean#L358).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `03dc33b9273d4e9dfd0e528d4746248e8a08f31e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
