# mkDecreasingProof

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:06d930f8be2e06477a150f24f2cff5eb0d38ac742e671951f766e6a0c77697d9",
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
  "slug": "mkdecreasingproof--aba7a2cd75834628fedf4a38",
  "source": {
    "blob": "39b35edd3f1e666b6e8e366b3289e93b62eed3b5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 48,
    "line": 32,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fix/Variant8c5d3a1a5cd42491390d1879668490f343a262e21de22facd155467ffc9c3108.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:aba7a2cd75834628fedf4a38ce2f5b6d781c70966366b569b2f72b7df0993d42",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fix/Variant8c5d3a1a5cd42491390d1879668490f343a262e21de22facd155467ffc9c3108.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:06d930f8be2e06477a150f24f2cff5eb0d38ac742e671951f766e6a0c77697d9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 32–48.

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

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fix/Variant8c5d3a1a5cd42491390d1879668490f343a262e21de22facd155467ffc9c3108.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fix/Variant8c5d3a1a5cd42491390d1879668490f343a262e21de22facd155467ffc9c3108.lean#L32).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `39b35edd3f1e666b6e8e366b3289e93b62eed3b5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
