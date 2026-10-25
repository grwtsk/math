# mkDecreasingProof

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1fa8ffc655c2bdb3ea1eeab83b15f4ce05f24752d870adcb3410da811d4a99a0",
  "kind": "def",
  "lexical_name": "mkDecreasingProof",
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
  "slug": "mkdecreasingproof--d510d3b8a8f36fc8b31b8cbd",
  "source": {
    "blob": "21aa83fd323f9a3d86ab7141429a8685d10abc0e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 56,
    "line": 40,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fix/Variant4b4bbab7245c1185f5971be4a632240acb69dcb8623fe829d545550268f55c94.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d510d3b8a8f36fc8b31b8cbd1e6f0638225e5cc0fba4a41c99dbada418a49d71",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fix/Variant4b4bbab7245c1185f5971be4a632240acb69dcb8623fe829d545550268f55c94.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1fa8ffc655c2bdb3ea1eeab83b15f4ce05f24752d870adcb3410da811d4a99a0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 40–56.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def mkDecreasingProof (decreasingProp : Expr) : TermElabM Expr := do
  -- We store the current Ref in the MVar as a RecApp annotation around the type
  let ref ← getRef
  let ty := mkRecAppWithSyntax decreasingProp ref
  let mvar ← mkFreshExprSyntheticOpaqueMVar ty
  let mvarId := mvar.mvarId!
  let _mvarId ← mvarId.cleanup
  return mvar

/--
Below we need a way to identify local contexts, and check if one is included in the other.
We use the last free variable for that. This works because

* the code below never sees an empty context
* contexts are extended with fresh variable names
* we do not clear free variable in this code
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fix/Variant4b4bbab7245c1185f5971be4a632240acb69dcb8623fe829d545550268f55c94.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fix/Variant4b4bbab7245c1185f5971be4a632240acb69dcb8623fe829d545550268f55c94.lean#L40).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `21aa83fd323f9a3d86ab7141429a8685d10abc0e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
