# mapAddEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:47d43072a13398702f88fdfe768234cfe2bedb9099c06a273736ce1e31e1031e",
  "kind": "def",
  "lexical_name": "mapAddEquiv",
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
  "slug": "mapaddequiv--bef0dc355f5f99d3f3967762",
  "source": {
    "blob": "b7440d7740f2bd4bdd004051074fccd2042c92f8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 249,
    "line": 240,
    "path": "GRWTSK/Algebra/GroupTheory/MapDomain/Variant62f1ceff9046d257493223d13460e80bfd6c9dae1d9de9738f797f3e4fb0319d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:bef0dc355f5f99d3f39677622ed60da8f7ce86ec1b38887957b2dcc5b93b96b0",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/MapDomain/Variant62f1ceff9046d257493223d13460e80bfd6c9dae1d9de9738f797f3e4fb0319d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:47d43072a13398702f88fdfe768234cfe2bedb9099c06a273736ce1e31e1031e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 240–249.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def mapAddEquiv (e : R ≃+ S) : R[M] ≃+ S[M] where
  toFun := .map e
  invFun := .map e.symm
  left_inv x := by ext; simp
  right_inv x := by ext; simp
  map_add' := MonoidAlgebra.map_add _

@[deprecated (since := "2026-03-20")] alias mapRangeAddEquiv := mapAddEquiv

@[to_additive (attr := simp)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/MapDomain/Variant62f1ceff9046d257493223d13460e80bfd6c9dae1d9de9738f797f3e4fb0319d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/MapDomain/Variant62f1ceff9046d257493223d13460e80bfd6c9dae1d9de9738f797f3e4fb0319d.lean#L240).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b7440d7740f2bd4bdd004051074fccd2042c92f8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
