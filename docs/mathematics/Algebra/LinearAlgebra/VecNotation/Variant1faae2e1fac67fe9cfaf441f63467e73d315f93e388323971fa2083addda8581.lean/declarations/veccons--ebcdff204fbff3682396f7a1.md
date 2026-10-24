# vecCons

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:930e6cbce7b5b2b4cc0f2e57c7a89f3578e17cf1a53472e08a3a3488bcdf61df",
  "kind": "def",
  "lexical_name": "vecCons",
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
  "slug": "veccons--ebcdff204fbff3682396f7a1",
  "source": {
    "blob": "864bc4b5024d96d66ffd5a4981f92d2547d6f413",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 71,
    "line": 61,
    "path": "GRWTSK/Algebra/LinearAlgebra/VecNotation/Variant1faae2e1fac67fe9cfaf441f63467e73d315f93e388323971fa2083addda8581.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ebcdff204fbff3682396f7a1eb10eb499b5ca9d4dab88dfff82356a960087013",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/VecNotation/Variant1faae2e1fac67fe9cfaf441f63467e73d315f93e388323971fa2083addda8581.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:930e6cbce7b5b2b4cc0f2e57c7a89f3578e17cf1a53472e08a3a3488bcdf61df`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 61–71.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def vecCons {n : ℕ} (h : α) (t : Fin n → α) : Fin n.succ → α :=
  Fin.cons h t

/-- `![...]` notation is used to construct a vector `Fin n → α` using `Matrix.vecEmpty` and
`Matrix.vecCons`.

For instance, `![a, b, c] : Fin 3` is syntax for `vecCons a (vecCons b (vecCons c vecEmpty))`.

Note that this should not be used as syntax for `Matrix` as it generates a term with the wrong type.
The `!![a, b; c, d]` syntax (provided by `Matrix.matrixNotation`) should be used instead.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/VecNotation/Variant1faae2e1fac67fe9cfaf441f63467e73d315f93e388323971fa2083addda8581.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/VecNotation/Variant1faae2e1fac67fe9cfaf441f63467e73d315f93e388323971fa2083addda8581.lean#L61).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `864bc4b5024d96d66ffd5a4981f92d2547d6f413` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
