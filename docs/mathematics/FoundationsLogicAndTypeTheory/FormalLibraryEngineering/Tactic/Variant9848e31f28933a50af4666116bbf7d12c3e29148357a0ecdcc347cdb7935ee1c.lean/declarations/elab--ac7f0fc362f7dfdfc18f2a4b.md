# Anonymous elab

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:60744c11bc04b0fe04bb23326f2ac120d5025b3316581365d6b5527aaf02f9f8",
  "kind": "elab",
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
  "slug": "elab--ac7f0fc362f7dfdfc18f2a4b",
  "source": {
    "blob": "7060cb9d42d749fb5e375660a7efb22ed264b602",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 79,
    "line": 62,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tactic/Variant9848e31f28933a50af4666116bbf7d12c3e29148357a0ecdcc347cdb7935ee1c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ac7f0fc362f7dfdfc18f2a4badea457cafb53ceb1a4a866791e44685f7418618",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tactic/Variant9848e31f28933a50af4666116bbf7d12c3e29148357a0ecdcc347cdb7935ee1c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `elab` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:60744c11bc04b0fe04bb23326f2ac120d5025b3316581365d6b5527aaf02f9f8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 62–79.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
elab "blueprint_using" " [" ids:ident,* "]" : tactic => do
  for id in ids.getElems do
    let used ← realizeGlobalConstNoOverloadWithInfo id
    let info ← getConstInfo used
    -- Instantiate universe level parameters with 0, to avoid errors
    let lvls := List.replicate info.numLevelParams levelZero
    let ty := info.instantiateTypeLevelParams lvls
    let const := mkConst used lvls
    liftMetaTactic1 fun g => do
      let g' ← g.define (← mkFreshBinderNameForTactic `blueprint_using) ty const
      let (_, g'') ← g'.intro1P
      return g''

/--
`sorry_using [a, b]` is the same as `sorry`, but adds `a` and `b` as dependencies for the blueprint metadata.

It is basically similar to `let := a; let := b; sorry`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tactic/Variant9848e31f28933a50af4666116bbf7d12c3e29148357a0ecdcc347cdb7935ee1c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tactic/Variant9848e31f28933a50af4666116bbf7d12c3e29148357a0ecdcc347cdb7935ee1c.lean#L62).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7060cb9d42d749fb5e375660a7efb22ed264b602` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
