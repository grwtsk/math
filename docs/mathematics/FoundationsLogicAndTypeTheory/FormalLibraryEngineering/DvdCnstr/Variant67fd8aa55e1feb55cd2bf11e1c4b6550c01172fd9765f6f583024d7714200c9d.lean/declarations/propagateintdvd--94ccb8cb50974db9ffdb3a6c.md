# propagateIntDvd

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9f1f7e0bb47bad2bbfa27feb2c2e01f854ca7cc7cd9e2d0cd0e89c551f3c8d0b",
  "kind": "def",
  "lexical_name": "propagateIntDvd",
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
  "slug": "propagateintdvd--94ccb8cb50974db9ffdb3a6c",
  "source": {
    "blob": "a236938cf0cabd7d8fdc5a85f244d653f3b836e1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 120,
    "line": 109,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DvdCnstr/Variant67fd8aa55e1feb55cd2bf11e1c4b6550c01172fd9765f6f583024d7714200c9d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:94ccb8cb50974db9ffdb3a6c750af4301257a4375cfc612cca976c8f4ae15517",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DvdCnstr/Variant67fd8aa55e1feb55cd2bf11e1c4b6550c01172fd9765f6f583024d7714200c9d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9f1f7e0bb47bad2bbfa27feb2c2e01f854ca7cc7cd9e2d0cd0e89c551f3c8d0b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 109–120.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def propagateIntDvd (e : Expr) : GoalM Unit := do
  let_expr Dvd.dvd _ inst a b ← e | return ()
  unless (← Structural.isInstDvdInt inst) do return ()
  let some d ← getIntValue? a
    | reportIssue! "non-linear divisibility constraint found{indentExpr e}"; return ()
  if (← isEqTrue e) then
    let p ← toPoly b
    let c := { d, p, h := .core e : DvdCnstr }
    c.assertCore
  else if (← isEqFalse e) then
    pushNewFact <| mkApp4 (mkConst ``Int.Internal.Linear.of_not_dvd) a b eagerReflBoolTrue (mkOfEqFalseCore e (← mkEqFalseProof e))

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DvdCnstr/Variant67fd8aa55e1feb55cd2bf11e1c4b6550c01172fd9765f6f583024d7714200c9d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DvdCnstr/Variant67fd8aa55e1feb55cd2bf11e1c4b6550c01172fd9765f6f583024d7714200c9d.lean#L109).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a236938cf0cabd7d8fdc5a85f244d653f3b836e1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
