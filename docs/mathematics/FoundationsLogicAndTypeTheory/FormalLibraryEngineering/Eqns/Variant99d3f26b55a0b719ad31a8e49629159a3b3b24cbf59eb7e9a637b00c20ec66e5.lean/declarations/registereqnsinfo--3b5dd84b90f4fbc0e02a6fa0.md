# registerEqnsInfo

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1703ca5b88dc11fffe4aba0e60b0aa50bc2b7c81edff379fa5a943c3f5bf61d0",
  "kind": "def",
  "lexical_name": "registerEqnsInfo",
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
  "slug": "registereqnsinfo--3b5dd84b90f4fbc0e02a6fa0",
  "source": {
    "blob": "69a38f359706de2f2302770b92137774ab31e0e0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 56,
    "line": 33,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Eqns/Variant99d3f26b55a0b719ad31a8e49629159a3b3b24cbf59eb7e9a637b00c20ec66e5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3b5dd84b90f4fbc0e02a6fa0c3f52d0ca406b2a9a43baa05335c4fa4cc8cce3c",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Eqns/Variant99d3f26b55a0b719ad31a8e49629159a3b3b24cbf59eb7e9a637b00c20ec66e5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1703ca5b88dc11fffe4aba0e60b0aa50bc2b7c81edff379fa5a943c3f5bf61d0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 33–56.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
public def registerEqnsInfo (preDefs : Array PreDefinition) (declNameNonRec : Name) (fixedParamPerms : FixedParamPerms)
    (argsPacker : ArgsPacker) : MetaM Unit := do
  preDefs.forM fun preDef => ensureEqnReservedNamesAvailable preDef.declName
  /-
  See issue #2327.
  Remark: we could do better for mutual declarations that mix theorems and definitions. However, this is a rare
  combination, and we would have add support for it in the equation generator. I did not check which assumptions are made there.
  -/
  unless preDefs.all fun p => p.kind.isTheorem do
    unless (← preDefs.allM fun p => isProp p.type) do
      let declNames := preDefs.map (·.declName)
      modifyEnv fun env =>
        preDefs.foldl (init := env) fun env preDef =>
          eqnInfoExt.insert env preDef.declName { preDef with
            declNames, declNameNonRec, argsPacker, fixedParamPerms }

/--
This is a hack to fix fallout from #8519, where a non-exposed wfrec definition `foo`
in a module would cause `foo.eq_def` to be defined eagerly and privately,
but it should still be visible from non-module files.

So we create a unfold equation generator that aliases an existing private `eq_def` to
wherever the current module expects it.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Eqns/Variant99d3f26b55a0b719ad31a8e49629159a3b3b24cbf59eb7e9a637b00c20ec66e5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Eqns/Variant99d3f26b55a0b719ad31a8e49629159a3b3b24cbf59eb7e9a637b00c20ec66e5.lean#L33).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `69a38f359706de2f2302770b92137774ab31e0e0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
