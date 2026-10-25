# mkToExpr

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d2ea2f2dee9200541917961002a9de0408be29d0feea2858cf39d76e56218c56",
  "kind": "def",
  "lexical_name": "mkToExpr",
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
  "slug": "mktoexpr--9dbcbd1ae2af434e3460eb5d",
  "source": {
    "blob": "2ec9947250df88e78330210acb37f9e960cb8d45",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 149,
    "line": 142,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BuiltinEvalCommand/Variant2f6bdac9d72d21a4354a9821b69e4cc7a0658abb7639ba56e4b3db78b8bae0d6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9dbcbd1ae2af434e3460eb5dd64b357f6d0f5e8a473dbe2f0580c12f98d23dcb",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BuiltinEvalCommand/Variant2f6bdac9d72d21a4354a9821b69e4cc7a0658abb7639ba56e4b3db78b8bae0d6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d2ea2f2dee9200541917961002a9de0408be29d0feea2858cf39d76e56218c56`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 142–149.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def mkToExpr (e : Expr) (ty? : Option Expr := none) : MetaM Expr := do
  mkDeltaInstProj ``ToExpr ``toExpr e ty?

/--
Returns a representation of `e` using `Format`, or else fails.
If the `eval.derive.repr` option is true, then tries automatically deriving a `Repr` instance first.
Currently auto-derivation does not attempt to derive recursively.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BuiltinEvalCommand/Variant2f6bdac9d72d21a4354a9821b69e4cc7a0658abb7639ba56e4b3db78b8bae0d6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BuiltinEvalCommand/Variant2f6bdac9d72d21a4354a9821b69e4cc7a0658abb7639ba56e4b3db78b8bae0d6.lean#L142).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2ec9947250df88e78330210acb37f9e960cb8d45` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
