# evalRewrite

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:05222fdce80c332bd99249faa91adf015bff938f2d3726c551ec4f4076e27679",
  "kind": "def",
  "lexical_name": "evalRewrite",
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
  "slug": "evalrewrite--8e9ad3983cf90c586cdd2ff7",
  "source": {
    "blob": "934530d4156821d2a47b06606e21691934dc4345",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 26,
    "line": 17,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rewrite/Variant5a4ee797864c58cb5e40ef58796f06dae9e1c0e7c846473d7561980fa18ec1fd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8e9ad3983cf90c586cdd2ff7ad4a76380dd9ee268ab80d09a0d0b15fbcbe2a76",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rewrite/Variant5a4ee797864c58cb5e40ef58796f06dae9e1c0e7c846473d7561980fa18ec1fd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:05222fdce80c332bd99249faa91adf015bff938f2d3726c551ec4f4076e27679`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 17–26.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[builtin_tactic Lean.Parser.Tactic.Conv.rewrite] def evalRewrite : Tactic := fun stx => do
  let config ← Tactic.elabRewriteConfig stx[1]
  withRWRulesSeq stx[0] stx[2] fun symm term => withMainContext do
    let r ← Term.withSynthesize do
      elabRewrite (← getMainGoal) (← getLhs) term symm (config := config)
    let r ← finishElabRewrite r
    updateLhs r.eNew r.eqProof
    replaceMainGoal ((← getMainGoal) :: r.mvarIds)

end Lean.Elab.Tactic.Conv
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rewrite/Variant5a4ee797864c58cb5e40ef58796f06dae9e1c0e7c846473d7561980fa18ec1fd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rewrite/Variant5a4ee797864c58cb5e40ef58796f06dae9e1c0e7c846473d7561980fa18ec1fd.lean#L17).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `934530d4156821d2a47b06606e21691934dc4345` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
