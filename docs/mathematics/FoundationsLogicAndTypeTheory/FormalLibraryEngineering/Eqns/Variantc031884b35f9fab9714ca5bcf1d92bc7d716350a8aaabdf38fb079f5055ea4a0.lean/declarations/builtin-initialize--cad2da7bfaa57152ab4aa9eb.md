# Anonymous builtin_initialize

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:32c7e8a6ce004353cee432f52a112ec1442d9adf0d9cbd0f598cd9f02b8be287",
  "kind": "builtin_initialize",
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
  "slug": "builtin-initialize--cad2da7bfaa57152ab4aa9eb",
  "source": {
    "blob": "c20d482ac3768a3b66110cc5b0078a36dbc4bff2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 348,
    "line": 334,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Eqns/Variantc031884b35f9fab9714ca5bcf1d92bc7d716350a8aaabdf38fb079f5055ea4a0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:cad2da7bfaa57152ab4aa9eb91d67b938b02a2424efe8096790b3cf4699a07fe",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Eqns/Variantc031884b35f9fab9714ca5bcf1d92bc7d716350a8aaabdf38fb079f5055ea4a0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `builtin_initialize` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:32c7e8a6ce004353cee432f52a112ec1442d9adf0d9cbd0f598cd9f02b8be287`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 334–348.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
builtin_initialize
  registerReservedNameAction fun name => do
    withTraceNode `ReservedNameAction (fun _ => pure m!"Lean.Meta.Eqns reserved name action for {name}") do
      if let some (declName, suffix) := declFromEqLikeName (← getEnv) name then
        if name == mkEqLikeNameFor (← getEnv) declName suffix then
          if isEqnReservedNameSuffix suffix then
            return (← MetaM.run' <| getEqnsFor? declName).isSome
          if suffix == unfoldThmSuffix then
            return (← MetaM.run' <| getUnfoldEqnFor? declName (nonRec := true)).isSome
      return false

  registerTraceClass `Elab.definition.eqns


end Lean.Meta
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Eqns/Variantc031884b35f9fab9714ca5bcf1d92bc7d716350a8aaabdf38fb079f5055ea4a0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Eqns/Variantc031884b35f9fab9714ca5bcf1d92bc7d716350a8aaabdf38fb079f5055ea4a0.lean#L334).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c20d482ac3768a3b66110cc5b0078a36dbc4bff2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
