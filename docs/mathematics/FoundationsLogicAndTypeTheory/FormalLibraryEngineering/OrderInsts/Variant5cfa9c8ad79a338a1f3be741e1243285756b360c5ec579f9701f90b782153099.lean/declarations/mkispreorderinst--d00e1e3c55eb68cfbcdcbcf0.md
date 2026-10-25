# mkIsPreorderInst?

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0522113bacee6ab911fe35fb4da2ac148593876ae69c0305ffc0e67a3553f4ef",
  "kind": "def",
  "lexical_name": "mkIsPreorderInst?",
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
  "slug": "mkispreorderinst--d00e1e3c55eb68cfbcdcbcf0",
  "source": {
    "blob": "ce49ec1775bb7d6f49fa08ff5fa3260152990c90",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 31,
    "line": 24,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OrderInsts/Variant5cfa9c8ad79a338a1f3be741e1243285756b360c5ec579f9701f90b782153099.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d00e1e3c55eb68cfbcdcbcf0a8a8fdd350d1ce40740881cb5fa52c54d6017e8e",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OrderInsts/Variant5cfa9c8ad79a338a1f3be741e1243285756b360c5ec579f9701f90b782153099.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0522113bacee6ab911fe35fb4da2ac148593876ae69c0305ffc0e67a3553f4ef`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 24–31.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def mkIsPreorderInst? (u : Level) (type : Expr) (leInst? : Option Expr) : GoalM (Option Expr) := do
  let some leInst := leInst? | return none
  let isPreorderType := mkApp2 (mkConst ``Std.IsPreorder [u]) type leInst
  let some inst ← synthInstance? isPreorderType
    | reportDbgIssue! "type has `LE`, but is not a preorder, failed to synthesize{indentExpr isPreorderType}"
      return none
  return some inst

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OrderInsts/Variant5cfa9c8ad79a338a1f3be741e1243285756b360c5ec579f9701f90b782153099.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OrderInsts/Variant5cfa9c8ad79a338a1f3be741e1243285756b360c5ec579f9701f90b782153099.lean#L24).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ce49ec1775bb7d6f49fa08ff5fa3260152990c90` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
