# WantedCmdKind

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c594aa0471dc7bc519a53cd2e12ecc456b7df221b293773dab736ef2e8b2a969",
  "kind": "structure",
  "lexical_name": "WantedCmdKind",
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
  "slug": "wantedcmdkind--492d551cc6cb6f7b639c42b9",
  "source": {
    "blob": "0127b0d5b9669304194635d542c0d0d58a98fc0f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 150,
    "line": 135,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProofWanted/Varianta819246929aca25a341c2f546e5ddccbcf4e1da3245bfea37c2529d484e23936.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:492d551cc6cb6f7b639c42b9f53f032928f2ff659c61fa043c4ff031805d55f4",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProofWanted/Varianta819246929aca25a341c2f546e5ddccbcf4e1da3245bfea37c2529d484e23936.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c594aa0471dc7bc519a53cd2e12ecc456b7df221b293773dab736ef2e8b2a969`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 135–150.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private structure WantedCmdKind where
  /-- Command keyword used in error messages, e.g. `theorem_wanted`. -/
  cmdName : String
  /-- Wrapper constant emitted in the placeholder, e.g. ``ProofWanted``. -/
  wrapper : Name
  /-- If `true`, the recorded statement must be a `Prop` (the placeholder is ascribed `: Prop`,
  and `theorem` is used for the "Try this:" fallback). -/
  requireProp : Bool
  /-- If `true`, the wanted declaration is an `instance_wanted`: the recorded payload must
  be a typeclass, the `Try this:` fallback is `instance`, and the declared name is registered
  in `wantedInstancesExt` so subsequent wanted decls auto-include it. -/
  isInstance : Bool := false

/-- The keyword used in the `Try this:` suggestion and in the error message when a body has
no `❰…❱` reference. `instance_wanted` → `instance`, `theorem_wanted` / `proof_wanted` → `theorem`,
`def_wanted` → `def`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProofWanted/Varianta819246929aca25a341c2f546e5ddccbcf4e1da3245bfea37c2529d484e23936.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProofWanted/Varianta819246929aca25a341c2f546e5ddccbcf4e1da3245bfea37c2529d484e23936.lean#L135).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0127b0d5b9669304194635d542c0d0d58a98fc0f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
