# delabIVarDisplay

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:bbdd6d399940848839be12cd43476614508d177d0514924dbbd17af662e50670",
  "kind": "def",
  "lexical_name": "delabIVarDisplay",
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
  "slug": "delabivardisplay--a07216fb081b2740e886ee73",
  "source": {
    "blob": "a21596c5fd171d93ebb749eefa4d31c2a0e24138",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 87,
    "line": 76,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant53738a953f740a9b8fd74da58b845278d05544e7737c719d3c4fa408e1fbc2e4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a07216fb081b2740e886ee73ace1542bbe3e2265151e0083fdaff2cc90fbaacb",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant53738a953f740a9b8fd74da58b845278d05544e7737c719d3c4fa408e1fbc2e4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:bbdd6d399940848839be12cd43476614508d177d0514924dbbd17af662e50670`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 76–87.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def delabIVarDisplay : Delab := do
  let iVarDisplayExpr ← getExpr
  let some (.letE _ _ _ _ _) := annotation? `Inclusion.Internal.iVarDisplay iVarDisplayExpr
    | failure
  let exprSyntax ← withMDataExpr (withLetValue delab)
  let stx ← `($(mkIdent `I)[$exprSyntax])
  let stx ← annotateCurPos ⟨stx.raw.rewriteBottomUp (·.setInfo .none)⟩
  let infoStx : Term := ⟨stx.raw.setKind `Inclusion.Internal.iVarDisplay⟩
  addDelabTermInfo (← getPos) infoStx iVarDisplayExpr (explicit := false)
  return stx

/-- Construct the expression used to display `setVar` as `I[iExpr.expr]`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant53738a953f740a9b8fd74da58b845278d05544e7737c719d3c4fa408e1fbc2e4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant53738a953f740a9b8fd74da58b845278d05544e7737c719d3c4fa408e1fbc2e4.lean#L76).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a21596c5fd171d93ebb749eefa4d31c2a0e24138` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
