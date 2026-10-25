# Anonymous elab_rules

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:47a2fe35a044904bd925e377cbebef221ea0dd847ec2cd93d66ac320c630d24c",
  "kind": "elab_rules",
  "lexical_name": null,
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
  "slug": "elab-rules--a6d5a696cecad94e1dfdccfb",
  "source": {
    "blob": "e9428e5902051ec63a66149f38eaa8c16c504068",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 43,
    "line": 34,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExtendDoc/Varianta0e84a544274bd7946cd8c321ab4d372c6df15faf085c44498832495ae36744c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a6d5a696cecad94e1dfdccfb644d9b36869a71f1a499523525c2ba0466c6752a",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExtendDoc/Varianta0e84a544274bd7946cd8c321ab4d372c6df15faf085c44498832495ae36744c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `elab_rules` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:47a2fe35a044904bd925e377cbebef221ea0dd847ec2cd93d66ac320c630d24c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 34–43.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
elab_rules : command
  | `(command| extend_docs $na:ident $[before $bef:str]? $[after $aft:str]?) => do
    if bef.isNone && aft.isNone then throwError "expected at least one of 'before' or 'after'"
    let declName ← liftCoreM <| Elab.realizeGlobalConstNoOverloadWithInfo na
    let bef := if bef.isNone then "" else (bef.get!).getString ++ "\n\n"
    let aft := if aft.isNone then "" else "\n\n" ++ (aft.get!).getString
    let oldDoc := (← findDocString? (← getEnv) declName).getD ""
    addDocStringCore declName <| bef ++ oldDoc ++ aft

end Mathlib.Tactic.ExtendDocs
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExtendDoc/Varianta0e84a544274bd7946cd8c321ab4d372c6df15faf085c44498832495ae36744c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExtendDoc/Varianta0e84a544274bd7946cd8c321ab4d372c6df15faf085c44498832495ae36744c.lean#L34).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e9428e5902051ec63a66149f38eaa8c16c504068` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
