# MVarId.introsWithBinderIdents

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:975996c6f9f71bbfe0a0f459aa3da97d7ec8681cd8eb0bdedfccabbb5fa00252",
  "kind": "def",
  "lexical_name": "MVarId.introsWithBinderIdents",
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
  "slug": "mvarid-introswithbinderidents--5e58aecf96febd0c015e2bd7",
  "source": {
    "blob": "aac70184d582b32391c0f2e474b4393d63d608aa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 100,
    "line": 73,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variantdbd5b628cc18dbb9cf9414f42f50b9aade3bcae1815ed035dcd655365503ef78.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5e58aecf96febd0c015e2bd7ac1a2d282a701e423a915c9c146a67be518b25a0",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variantdbd5b628cc18dbb9cf9414f42f50b9aade3bcae1815ed035dcd655365503ef78.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:975996c6f9f71bbfe0a0f459aa3da97d7ec8681cd8eb0bdedfccabbb5fa00252`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 73–100.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def MVarId.introsWithBinderIdents
    (g : MVarId) (ids : List (TSyntax ``binderIdent)) :
    MetaM (List (TSyntax ``binderIdent) × Array FVarId × MVarId) := do
  let type ← g.getType
  let type ← instantiateMVars type
  let n := getIntrosSize type
  if n == 0 then
    return (ids, #[], g)
  let mut ids := ids
  let mut names := #[]
  for _ in [0:n] do
    names := names.push (ids.headD (Unhygienic.run `(binderIdent| _)))
    ids := ids.tail
  let (xs, g) ← g.introN n <| names.toList.map fun stx =>
    match stx.raw with
    | `(binderIdent| $n:ident) => n.getId
    | _ => `_
  g.withContext do
    for n in names, fvar in xs do
      (Expr.fvar fvar).addLocalVarInfoForBinderIdent n
  return (ids, xs, g)

end Lean

namespace Mathlib.Tactic

-- FIXME: we cannot write this line when `Lean.Parser.Tactic` is open,
-- or it will get an extra `group`
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variantdbd5b628cc18dbb9cf9414f42f50b9aade3bcae1815ed035dcd655365503ef78.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variantdbd5b628cc18dbb9cf9414f42f50b9aade3bcae1815ed035dcd655365503ef78.lean#L73).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `aac70184d582b32391c0f2e474b4393d63d608aa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
