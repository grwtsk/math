# GoToKind.determineTargetExprs

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:52a66f1fa6c7d64e7852ed8e483accab2dac0c3f34bb895e744ab4a3bb1c2583",
  "kind": "def",
  "lexical_name": "GoToKind.determineTargetExprs",
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
  "slug": "gotokind-determinetargetexprs--037fd1715c37e18813777c9b",
  "source": {
    "blob": "71e3d83a52e2418df471d9f5a0f040e59ab995b7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 49,
    "line": 35,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GoTo/Variantfe027fbbc71e6248e183228f8d7f3ba24b1aca901b2d220136b50a2e603c0795.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:037fd1715c37e18813777c9b3f25bf2672b1595d2f4c38f1146fa2dda6edb0af",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GoTo/Variantfe027fbbc71e6248e183228f8d7f3ba24b1aca901b2d220136b50a2e603c0795.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:52a66f1fa6c7d64e7852ed8e483accab2dac0c3f34bb895e744ab4a3bb1c2583`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 35–49.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def GoToKind.determineTargetExprs (kind : GoToKind) (ti : TermInfo) : MetaM (Array Expr) := do
  match kind with
  | .type =>
    let type ← instantiateMVars <| ← Meta.inferType ti.expr
    let (_, targetExprs) ← StateT.run (s := #[]) <| type.forEach fun e =>
      match e with
      | .fvar ..
      | .const .. =>
        modify (·.push e)
      | _ =>
        pure ()
    return targetExprs
  | _ =>
    return #[← instantiateMVars ti.expr]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GoTo/Variantfe027fbbc71e6248e183228f8d7f3ba24b1aca901b2d220136b50a2e603c0795.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GoTo/Variantfe027fbbc71e6248e183228f8d7f3ba24b1aca901b2d220136b50a2e603c0795.lean#L35).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `71e3d83a52e2418df471d9f5a0f040e59ab995b7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
