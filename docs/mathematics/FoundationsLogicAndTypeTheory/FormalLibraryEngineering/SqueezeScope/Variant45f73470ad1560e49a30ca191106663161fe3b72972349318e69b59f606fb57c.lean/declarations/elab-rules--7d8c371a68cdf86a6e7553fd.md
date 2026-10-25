# Anonymous elab_rules

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:fed80b3c2c31df2358439f53710184a73a0a4bf37624f8e7ea20ed9da3179da3",
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
  "slug": "elab-rules--7d8c371a68cdf86a6e7553fd",
  "source": {
    "blob": "d967f5b719e776bdbb94baad1bad0f663b31c1e4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 92,
    "line": 76,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SqueezeScope/Variant45f73470ad1560e49a30ca191106663161fe3b72972349318e69b59f606fb57c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7d8c371a68cdf86a6e7553fd27a4f3213ede40029ce87d52d3f51c0c25866570",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SqueezeScope/Variant45f73470ad1560e49a30ca191106663161fe3b72972349318e69b59f606fb57c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `elab_rules` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:fed80b3c2c31df2358439f53710184a73a0a4bf37624f8e7ea20ed9da3179da3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 76–92.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
elab_rules : tactic
  | `(tactic| squeeze_scope $a => $tac) => do
    let a := a.getId
    let old ← squeezeScopes.modifyGet fun map => (map.find? a, map.insert a {})
    let reset map := match old with | some old => map.insert a old | none => map.erase a
    let new ← try
      Elab.Tactic.evalTactic tac
      squeezeScopes.modifyGet fun map => (map.find? a, reset map)
    catch e =>
      squeezeScopes.modify reset
      throw e
    if let some new := new then
      for (_, stx, usedSimps) in new do
        let usedSimps := usedSimps.foldl (fun s usedSimps => usedSimps.fold .insert s) {}
        let stx' ← mkSimpCallStx stx usedSimps
        TryThis.addSuggestion stx[0] stx' (origSpan? := stx)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SqueezeScope/Variant45f73470ad1560e49a30ca191106663161fe3b72972349318e69b59f606fb57c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SqueezeScope/Variant45f73470ad1560e49a30ca191106663161fe3b72972349318e69b59f606fb57c.lean#L76).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d967f5b719e776bdbb94baad1bad0f663b31c1e4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
