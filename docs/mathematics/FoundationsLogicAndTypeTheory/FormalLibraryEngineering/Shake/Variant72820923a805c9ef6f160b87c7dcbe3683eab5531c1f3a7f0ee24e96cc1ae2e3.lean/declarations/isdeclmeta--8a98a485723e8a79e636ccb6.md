# isDeclMeta'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:865c361eaf0ffef04e239aa2f2068a7b585753387f23c460d505401e17cd8b24",
  "kind": "def",
  "lexical_name": "isDeclMeta'",
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
  "slug": "isdeclmeta--8a98a485723e8a79e636ccb6",
  "source": {
    "blob": "b83293af180ce45823c46310efb782862baeb4aa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 249,
    "line": 235,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Shake/Variant72820923a805c9ef6f160b87c7dcbe3683eab5531c1f3a7f0ee24e96cc1ae2e3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8a98a485723e8a79e636ccb6362c4c62f6873c7df9856205d40f10d4ae67d02f",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Shake/Variant72820923a805c9ef6f160b87c7dcbe3683eab5531c1f3a7f0ee24e96cc1ae2e3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:865c361eaf0ffef04e239aa2f2068a7b585753387f23c460d505401e17cd8b24`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 235–249.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def isDeclMeta' (env : Environment) (declName : Name) : Bool :=
  -- Matchers are not compiled by themselves but inlined by the compiler, so there is no IR decl
  -- to be tagged as `meta`.
  -- TODO: It would be better to base the entire `meta` inference on the IR only and consider module
  -- references from any other context as compatible with both phases.
  let inferFor :=
    if declName.isStr && (declName.getString!.startsWith "match_" || declName.getString! == "_unsafe_rec") then declName.getPrefix else declName
  -- `isMarkedMeta` knows about non-defs such as `meta structure`, isDeclMeta knows about decls
  -- implicitly marked meta
  isMarkedMeta env inferFor || isDeclMeta env inferFor

/--
Given an `Expr` reference, returns the declaration name that should be considered the reference, if
any.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Shake/Variant72820923a805c9ef6f160b87c7dcbe3683eab5531c1f3a7f0ee24e96cc1ae2e3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Shake/Variant72820923a805c9ef6f160b87c7dcbe3683eab5531c1f3a7f0ee24e96cc1ae2e3.lean#L235).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b83293af180ce45823c46310efb782862baeb4aa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
