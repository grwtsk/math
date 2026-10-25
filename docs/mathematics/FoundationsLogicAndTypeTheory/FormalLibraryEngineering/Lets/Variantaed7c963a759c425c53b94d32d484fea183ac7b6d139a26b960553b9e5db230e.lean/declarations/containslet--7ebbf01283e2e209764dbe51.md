# containsLet

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8c2b194577adbec491c85a578cf180c71aa7152afa646f8028158458df592427",
  "kind": "def",
  "lexical_name": "containsLet",
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
  "slug": "containslet--7ebbf01283e2e209764dbe51",
  "source": {
    "blob": "f74e98679e7a7eec0aab656beedf23975b71437d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 216,
    "line": 203,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lets/Variantaed7c963a759c425c53b94d32d484fea183ac7b6d139a26b960553b9e5db230e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7ebbf01283e2e209764dbe51147d9fee66613bcf9a3f7e6b122f92d06da5cfaa",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lets/Variantaed7c963a759c425c53b94d32d484fea183ac7b6d139a26b960553b9e5db230e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8c2b194577adbec491c85a578cf180c71aa7152afa646f8028158458df592427`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 203–216.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def containsLet (e : Expr) : Bool :=
  Option.isSome <| e.find? (·.isLet)

/--
Extracts lets from `e`.
- `fvars` is an array of all the local variables from going under binders,
  used to detect whether an expression is extractable. Extracted `let`s do not have their fvarids in this list.
  This is not part of the cache key since it's an optimization and in principle derivable.
- `topLevel` is whether we are still looking at the top-level expression.
  The body of an extracted top-level let is also considered to be top-level.
  This is part of the cache key since it affects what is extracted.

Note: the return value may refer to fvars that are not in the current local context, but they are in the `decls` list.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lets/Variantaed7c963a759c425c53b94d32d484fea183ac7b6d139a26b960553b9e5db230e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lets/Variantaed7c963a759c425c53b94d32d484fea183ac7b6d139a26b960553b9e5db230e.lean#L203).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f74e98679e7a7eec0aab656beedf23975b71437d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
