# specializePartialApp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5bff5024cf36e0799f1aa686354494593f1f31fe488a30bf25697ec1c58243f8",
  "kind": "def",
  "lexical_name": "specializePartialApp",
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
  "slug": "specializepartialapp--b22569ad0337545fecfdd6e3",
  "source": {
    "blob": "40a39239209d12be65a66298d6a8b85c3d651029",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 68,
    "line": 52,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variant43e6ac2921ffa6ee22d57364075f21b154d84fb00372e157f21aa794d527e571.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b22569ad0337545fecfdd6e32716b0ed60ac709b5d217f9951e46d21c5d955aa",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variant43e6ac2921ffa6ee22d57364075f21b154d84fb00372e157f21aa794d527e571.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5bff5024cf36e0799f1aa686354494593f1f31fe488a30bf25697ec1c58243f8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 52–68.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def specializePartialApp (info : InlineCandidateInfo) : SimpM (FunDecl .pure) := do
  let mut subst := {}
  for param in info.params, arg in info.args do
    subst := subst.insert param.fvarId arg
  let mut paramsNew := #[]
  for param in info.params[info.args.size...*] do
    let type ← replaceExprFVars param.type subst (translator := true)
    let paramNew ← mkAuxParam type
    paramsNew := paramsNew.push paramNew
    subst := subst.insert param.fvarId (.fvar paramNew.fvarId)
  let code ← info.value.internalize subst
  updateFunDeclInfo code
  mkAuxFunDecl paramsNew code

/--
Try to inline a join point.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variant43e6ac2921ffa6ee22d57364075f21b154d84fb00372e157f21aa794d527e571.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variant43e6ac2921ffa6ee22d57364075f21b154d84fb00372e157f21aa794d527e571.lean#L52).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `40a39239209d12be65a66298d6a8b85c3d651029` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
