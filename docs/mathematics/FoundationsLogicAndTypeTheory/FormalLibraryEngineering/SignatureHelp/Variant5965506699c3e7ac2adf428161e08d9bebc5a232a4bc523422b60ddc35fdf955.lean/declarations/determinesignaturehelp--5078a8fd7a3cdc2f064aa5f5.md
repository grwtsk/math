# determineSignatureHelp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8d2c3ef1c7b688d8a029843befe18253a5533aae673bbfd6031a17a072ade5da",
  "kind": "def",
  "lexical_name": "determineSignatureHelp",
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
  "slug": "determinesignaturehelp--5078a8fd7a3cdc2f064aa5f5",
  "source": {
    "blob": "d494fd8f74af1d64052c7cbddfef48d85eeb215d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 61,
    "line": 28,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SignatureHelp/Variant5965506699c3e7ac2adf428161e08d9bebc5a232a4bc523422b60ddc35fdf955.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5078a8fd7a3cdc2f064aa5f500f1765fea97ce992611de35a80047e1f18aa51a",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SignatureHelp/Variant5965506699c3e7ac2adf428161e08d9bebc5a232a4bc523422b60ddc35fdf955.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8d2c3ef1c7b688d8a029843befe18253a5533aae673bbfd6031a17a072ade5da`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 28–61.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def determineSignatureHelp (tree : Elab.InfoTree) (appStx : Syntax)
    : IO (Option Lsp.SignatureHelp) := do
  let some (appCtx, .ofTermInfo appInfo) := tree.smallestInfo? fun
      | .ofTermInfo ti =>
        -- HACK: Use range of syntax to figure out corresponding `TermInfo`.
        -- This is necessary because in order to accurately determine which `Syntax` to use,
        -- we have to use the original command syntax before macro expansions,
        -- whereas the `Syntax` in the `InfoTree` is always from some stage of elaboration.
        ti.stx.getRangeWithTrailing? == appStx.getRangeWithTrailing?
      | _ => false
    | return none
  let app := appInfo.expr
  let some fmt ← appCtx.runMetaM appInfo.lctx do
      let appType ← instantiateMVars <| ← Meta.inferType app
      if ! appType.isForall then
        return none
      let (stx, _) ← PrettyPrinter.delabCore appType
        (delab := PrettyPrinter.Delaborator.delabForallWithSignature)
      return some <| ← PrettyPrinter.ppTerm ⟨stx⟩
    | return none
  return some {
    signatures := #[{ label := toString fmt : Lsp.SignatureInformation }]
    activeSignature? := some 0
    -- We do not mark the active parameter at all, as this would require retaining parameter indices
    -- through the delaborator.
    -- However, since we display the signature help using the `TermInfo` of the application,
    -- not the function itself, this is not a problem:
    -- The parameters keeps reducing as one adds arguments to the function, and the active
    -- parameter is then always the first explicit one.
    -- This feels very intuitive, so we don't need to thread any additional information
    -- through the delaborator for highlighting the active parameter.
    activeParameter? := none
  }

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SignatureHelp/Variant5965506699c3e7ac2adf428161e08d9bebc5a232a4bc523422b60ddc35fdf955.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SignatureHelp/Variant5965506699c3e7ac2adf428161e08d9bebc5a232a4bc523422b60ddc35fdf955.lean#L28).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d494fd8f74af1d64052c7cbddfef48d85eeb215d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
