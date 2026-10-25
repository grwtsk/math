# Anonymous elab_rules

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:34aa0c4e0ca24a73ae925b61477d9da830d1e7362c3c057ac43e69e381428828",
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
  "slug": "elab-rules--2a8e42003717bebead206d48",
  "source": {
    "blob": "6b82412e40f6d57fd738b28148934f343d3ae5f7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 100,
    "line": 84,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SqueezeScope/Variantc1df3ddedefdc81c90f94714783323336a6bb6701faa7577e0ed014544f432f2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2a8e42003717bebead206d48ba2a241fe93d5774350a0308b68a28e3a67a4c9a",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SqueezeScope/Variantc1df3ddedefdc81c90f94714783323336a6bb6701faa7577e0ed014544f432f2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `elab_rules` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:34aa0c4e0ca24a73ae925b61477d9da830d1e7362c3c057ac43e69e381428828`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 84–100.

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

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SqueezeScope/Variantc1df3ddedefdc81c90f94714783323336a6bb6701faa7577e0ed014544f432f2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SqueezeScope/Variantc1df3ddedefdc81c90f94714783323336a6bb6701faa7577e0ed014544f432f2.lean#L84).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6b82412e40f6d57fd738b28148934f343d3ae5f7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
