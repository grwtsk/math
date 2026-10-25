# zetaDeltaImplDetailsInProps

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c2a23032ec73ce66172b3ea874f4d05974dfe48c2edbfcd718742626481bb8d0",
  "kind": "def",
  "lexical_name": "zetaDeltaImplDetailsInProps",
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
  "slug": "zetadeltaimpldetailsinprops--30487583f45001df2eb5dc36",
  "source": {
    "blob": "5493e3d025e608ffc68d856f0b5b683431f64b09",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 722,
    "line": 707,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/StructInst/Variantdd2f836a88d0ba35a06702af406d643d5ca55ca202c61411d0696e97dfd00d04.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:30487583f45001df2eb5dc36bc6b191346bc50f323d48bf5da7849779327bbfe",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/StructInst/Variantdd2f836a88d0ba35a06702af406d643d5ca55ca202c61411d0696e97dfd00d04.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c2a23032ec73ce66172b3ea874f4d05974dfe48c2edbfcd718742626481bb8d0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 707–722.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def zetaDeltaImplDetailsInProps (e : Expr) : MetaM Expr := do
  let unfoldPre (e : Expr) : MetaM TransformStep := do
    let .fvar fvarId := e.getAppFn | return .continue
    let decl ← fvarId.getDecl
    if decl.isLet && decl.kind matches .implDetail then
      return .visit <| (← instantiateMVars decl.value).beta e.getAppArgs
    else
      return .continue
  let pre (e : Expr) : MetaM TransformStep := do
    if ← Meta.isProp e then
      let e ← transform e (pre := unfoldPre)
      return .done e
    else
      return .continue
  transform (← instantiateMVars e) (pre := pre)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/StructInst/Variantdd2f836a88d0ba35a06702af406d643d5ca55ca202c61411d0696e97dfd00d04.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/StructInst/Variantdd2f836a88d0ba35a06702af406d643d5ca55ca202c61411d0696e97dfd00d04.lean#L707).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5493e3d025e608ffc68d856f0b5b683431f64b09` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
