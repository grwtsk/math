# recordExtraModUseFromDecl

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:91698ebf428537539f0fca9771bea37112b1a93cb24ce23af25ff5617553b87d",
  "kind": "def",
  "lexical_name": "recordExtraModUseFromDecl",
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
  "slug": "recordextramodusefromdecl--5229ea8f381dfbbf98f4d70d",
  "source": {
    "blob": "34069cafc5045084e03030f1c0103aab6d3fe2fc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 119,
    "line": 111,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExtraModUses/Variantfc0b803286ddb3fc4d209b6cfd18e501bd47a6df0f66706493684ed03d2bf33d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5229ea8f381dfbbf98f4d70dc912e0285bdb8f6b5d93432a209eedd2890da737",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExtraModUses/Variantfc0b803286ddb3fc4d209b6cfd18e501bd47a6df0f66706493684ed03d2bf33d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:91698ebf428537539f0fca9771bea37112b1a93cb24ce23af25ff5617553b87d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 111–119.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
public def recordExtraModUseFromDecl (declName : Name) (isMeta : Bool) : m Unit := do
  let env ← getEnv
  if let some mod := env.getModuleIdxFor? declName |>.bind (env.header.modules[·]?) then
    -- If the declaration itself is already `meta`, no need to mark the import.
    let isMeta := isMeta && !isMarkedMeta (← getEnv) declName
    recordExtraModUseCore mod.module isMeta (hint := declName)
    for modIdx in (indirectModUseExt.getState (asyncMode := .local) env)[declName]?.getD #[] do
      recordExtraModUseCore env.header.modules[modIdx]!.module (isMeta := false) (hint := declName)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExtraModUses/Variantfc0b803286ddb3fc4d209b6cfd18e501bd47a6df0f66706493684ed03d2bf33d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExtraModUses/Variantfc0b803286ddb3fc4d209b6cfd18e501bd47a6df0f66706493684ed03d2bf33d.lean#L111).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `34069cafc5045084e03030f1c0103aab6d3fe2fc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
