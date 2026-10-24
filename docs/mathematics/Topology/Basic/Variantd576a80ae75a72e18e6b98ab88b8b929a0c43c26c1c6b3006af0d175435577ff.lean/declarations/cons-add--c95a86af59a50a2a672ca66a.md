# cons_add

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "263c7daadfb7d402ec094fdf8ad03049d5491729",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 402,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d5/d576a80ae75a72e18e6b98ab88b8b929a0c43c26c1c6b3006af0d175435577ff.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:42609775-4cd0-e484-d92d-cc2b9534bda1",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9b6ee05a-3445-1b55-f21f-1445427b393c",
  "kind": "theorem",
  "lexical_name": "cons_add",
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
  "slug": "cons-add--c95a86af59a50a2a672ca66a",
  "source": {
    "blob": "263c7daadfb7d402ec094fdf8ad03049d5491729",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 408,
    "line": 402,
    "path": "GRWTSK/Topology/Basic/Variantd576a80ae75a72e18e6b98ab88b8b929a0c43c26c1c6b3006af0d175435577ff.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c95a86af59a50a2a672ca66aedee099c63e0b27f4abdda0104a02e3fb20b198a",
  "verification": {
    "reference": "docs/verification/Topology/Basic/Variantd576a80ae75a72e18e6b98ab88b8b929a0c43c26c1c6b3006af0d175435577ff.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9b6ee05a-3445-1b55-f21f-1445427b393c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 402–408.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem cons_add (f : ContinuousMultilinearMap R M M₂) (m : ∀ i : Fin n, M i.succ) (x y : M 0) :
    f (cons (x + y) m) = f (cons x m) + f (cons y m) :=
  f.toMultilinearMap.cons_add m x y

/-- In the specific case of continuous multilinear maps on spaces indexed by `Fin (n+1)`, where one
can build an element of `(i : Fin (n+1)) → M i` using `cons`, one can express directly the
multiplicativity of a multilinear map along the first variable. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Topology/Basic/Variantd576a80ae75a72e18e6b98ab88b8b929a0c43c26c1c6b3006af0d175435577ff.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/Basic/Variantd576a80ae75a72e18e6b98ab88b8b929a0c43c26c1c6b3006af0d175435577ff.lean#L402).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `263c7daadfb7d402ec094fdf8ad03049d5491729` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
