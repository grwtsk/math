# uncurryND

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b5d8e3b710c10f60fdcefac0c405540deff40572ed07831d59f9bea88ad6791e",
  "kind": "def",
  "lexical_name": "uncurryND",
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
  "slug": "uncurrynd--649659ff5f40665738dbfdd0",
  "source": {
    "blob": "0a5ae703aafdb4f3075c9fae1e3fa45a9849c0d2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 530,
    "line": 520,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ArgsPacker/Variant0dac9ecd55844b8160095c6018db12688e7c918811ebeefa31d68a5528e7ef7e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:649659ff5f40665738dbfdd04eb9292c577dd3a785bd85d68f1de381e7e36ce5",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ArgsPacker/Variant0dac9ecd55844b8160095c6018db12688e7c918811ebeefa31d68a5528e7ef7e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b5d8e3b710c10f60fdcefac0c405540deff40572ed07831d59f9bea88ad6791e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 520–530.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
def uncurryND (argsPacker : ArgsPacker) (es : Array Expr) : MetaM Expr := do
  let unary ← Array.zipWithM Unary.uncurry argsPacker.varNamess es
  Mutual.uncurryND unary

/--
Given expression `e` of type `(x : a₁ ⊗' b₁ ⊕' a₂ ⊗' d₂ …) → e[x]`, uncurries the expression and
projects to the `i`th function of type,
```
((x : aᵢ) → (y : bᵢ) → e[.inr….inl (x,y)])
```
-/
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ArgsPacker/Variant0dac9ecd55844b8160095c6018db12688e7c918811ebeefa31d68a5528e7ef7e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ArgsPacker/Variant0dac9ecd55844b8160095c6018db12688e7c918811ebeefa31d68a5528e7ef7e.lean#L520).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0a5ae703aafdb4f3075c9fae1e3fa45a9849c0d2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
