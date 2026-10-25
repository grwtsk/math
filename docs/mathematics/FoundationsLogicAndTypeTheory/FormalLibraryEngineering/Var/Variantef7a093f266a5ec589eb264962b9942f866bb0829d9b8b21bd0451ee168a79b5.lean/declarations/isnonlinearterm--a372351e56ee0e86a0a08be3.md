# isNonlinearTerm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4e89f2baab0e79edc686228f1554f285175cb9d5d859816d7263ee6eff301e19",
  "kind": "def",
  "lexical_name": "isNonlinearTerm",
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
  "slug": "isnonlinearterm--a372351e56ee0e86a0a08be3",
  "source": {
    "blob": "991ae05099a8aab00d3b427dbc7fd350e89803c4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 41,
    "line": 32,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Var/Variantef7a093f266a5ec589eb264962b9942f866bb0829d9b8b21bd0451ee168a79b5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a372351e56ee0e86a0a08be38fdc6631b3622f87c7595aaa7bb13606d32c7a17",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Var/Variantef7a093f266a5ec589eb264962b9942f866bb0829d9b8b21bd0451ee168a79b5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4e89f2baab0e79edc686228f1554f285175cb9d5d859816d7263ee6eff301e19`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 32–41.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def isNonlinearTerm (e : Expr) : MetaM Bool := do
  match_expr e with
  | HMul.hMul _ _ _ i _ _ => isInstHMulInt i
  | HDiv.hDiv _ _ _ i _ b => pure (← getIntValue? b).isNone <&&> isInstHDivInt i
  | HMod.hMod _ _ _ i _ b => pure (← getIntValue? b).isNone <&&> isInstHModInt i
  | HPow.hPow _ _ _ i a b =>
    unless (← isInstHPowInt i) do return false
    return (← getIntValue? a).isNone || (← getIntValue? b).isNone
  | _ => return false

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Var/Variantef7a093f266a5ec589eb264962b9942f866bb0829d9b8b21bd0451ee168a79b5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Var/Variantef7a093f266a5ec589eb264962b9942f866bb0829d9b8b21bd0451ee168a79b5.lean#L32).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `991ae05099a8aab00d3b427dbc7fd350e89803c4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
