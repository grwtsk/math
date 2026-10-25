# shouldGroupWithNext

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3ce14e24c32e8eb321c250b823df220e16fe1333ae71fb30209528ac3536ca70",
  "kind": "def",
  "lexical_name": "shouldGroupWithNext",
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
  "slug": "shouldgroupwithnext--dc51f85e70c703b08382b73b",
  "source": {
    "blob": "3a43e15944e75cf221e11cb3e1100a21e4476b87",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 939,
    "line": 915,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Builtins/Variant652cebf48737d1c828275f276abe730d620ccd9bd53c718d0eaf861acc8df79d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:dc51f85e70c703b08382b73ba08567f278f1de4e47f910170c5ecef861802797",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Builtins/Variant652cebf48737d1c828275f276abe730d620ccd9bd53c718d0eaf861acc8df79d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3ce14e24c32e8eb321c250b823df220e16fe1333ae71fb30209528ac3536ca70`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 915–939.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def shouldGroupWithNext : DelabM Bool := do
  let e ← getExpr
  let ppEType ← getPPOption (getPPBinderTypes e)
  let go (e' : Expr) := do
    let ppE'Type ← withBindingBody `_ $ getPPOption (getPPBinderTypes e)
    pure $ e.binderInfo == e'.binderInfo &&
      e.bindingDomain! == e'.bindingDomain! &&
      e'.binderInfo != BinderInfo.instImplicit &&
      ppEType == ppE'Type
  match e with
  | Expr.lam _ _     e'@(Expr.lam _ _ _ _) _     => go e'
  | Expr.forallE _ _ e'@(Expr.forallE _ _ _ _) _ => go e'
  | _ => pure false
where
  getPPBinderTypes (e : Expr) :=
    if e.isForall then getPPPiBinderTypes else getPPFunBinderTypes

/--
Accumulate names (`Syntax.ident`s with position information) of the current, unfinished
binder group `(d e ...)` as determined by `shouldGroupWithNext`. We cannot do grouping
inside-out, on the Syntax level, because it depends on comparing the Expr binder types.

The `allNames` set is used to make sure names in the same `fun` binders are unique.
Users have reported than `fun x x x => x` is confusing.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Builtins/Variant652cebf48737d1c828275f276abe730d620ccd9bd53c718d0eaf861acc8df79d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Builtins/Variant652cebf48737d1c828275f276abe730d620ccd9bd53c718d0eaf861acc8df79d.lean#L915).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3a43e15944e75cf221e11cb3e1100a21e4476b87` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
