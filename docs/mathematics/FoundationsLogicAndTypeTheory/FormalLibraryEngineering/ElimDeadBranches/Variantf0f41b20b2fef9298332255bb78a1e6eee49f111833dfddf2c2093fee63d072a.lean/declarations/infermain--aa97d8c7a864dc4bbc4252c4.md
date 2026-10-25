# inferMain

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b3df7fac5b23f1d42fe90c6ec9ae41bad095d622e28dbd3b1f8cb8f9a6da26e8",
  "kind": "def",
  "lexical_name": "inferMain",
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
  "slug": "infermain--aa97d8c7a864dc4bbc4252c4",
  "source": {
    "blob": "8b62986b401b14d81366e3bbe3e2275487d609cf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 616,
    "line": 602,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ElimDeadBranches/Variantf0f41b20b2fef9298332255bb78a1e6eee49f111833dfddf2c2093fee63d072a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:aa97d8c7a864dc4bbc4252c457292aeff338f8836c0bf73e7faf199879a1f187",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ElimDeadBranches/Variantf0f41b20b2fef9298332255bb78a1e6eee49f111833dfddf2c2093fee63d072a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b3df7fac5b23f1d42fe90c6ec9ae41bad095d622e28dbd3b1f8cb8f9a6da26e8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 602–616.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def inferMain (n : Nat := 0) : InterpM Unit := do
  let ctx ← read
  modify fun s => { s with assignments := ctx.decls.map fun _ => {} }
  let modified ← inferStep
  if modified then
    inferMain (n + 1)
  else
    trace[Compiler.elimDeadBranches] m!"Termination after {n} steps"
    return ()

/--
Use the information produced by the abstract interpreter to:
- Eliminate branches that we know cannot be hit
- Eliminate values that we know have to be constants.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ElimDeadBranches/Variantf0f41b20b2fef9298332255bb78a1e6eee49f111833dfddf2c2093fee63d072a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ElimDeadBranches/Variantf0f41b20b2fef9298332255bb78a1e6eee49f111833dfddf2c2093fee63d072a.lean#L602).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8b62986b401b14d81366e3bbe3e2275487d609cf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
