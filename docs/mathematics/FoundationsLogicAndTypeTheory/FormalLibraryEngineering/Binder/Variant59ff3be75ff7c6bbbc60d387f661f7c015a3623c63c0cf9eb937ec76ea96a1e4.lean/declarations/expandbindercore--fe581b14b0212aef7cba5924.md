# expandBinderCore

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0e3a437161d8362dc8aae18537897c0170efd958d92c1dd19bdcb8c3e96a8ebf",
  "kind": "def",
  "lexical_name": "expandBinderCore",
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
  "slug": "expandbindercore--fe581b14b0212aef7cba5924",
  "source": {
    "blob": "04d7f70f4cbf5a6ee7ee8752f2ac5ca7493659cf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 168,
    "line": 112,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Binder/Variant59ff3be75ff7c6bbbc60d387f661f7c015a3623c63c0cf9eb937ec76ea96a1e4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:fe581b14b0212aef7cba59249eb88dbc642582ad67f64ebcb0c240c34afbfbb6",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Binder/Variant59ff3be75ff7c6bbbc60d387f661f7c015a3623c63c0cf9eb937ec76ea96a1e4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0e3a437161d8362dc8aae18537897c0170efd958d92c1dd19bdcb8c3e96a8ebf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 112–168.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
public def expandBinderCore
  (binders : Array BinderSyntaxView) (stx : Syntax)
: MacroM (Array BinderSyntaxView) := do
  let k := stx.getKind
  if stx.isIdent || k == ``Term.hole then
    -- binderIdent
    return binders.push {
      ref := stx
      id := ← expandBinderIdent stx,
      type := mkHoleFrom stx,
      info := .default
    }
  else if k == ``Lean.Parser.Term.explicitBinder then
    -- `(` binderIdent+ binderType (binderDefault <|> binderTactic)? `)`
    let ids ← getBinderIds stx[1]
    let type := stx[2]
    let modifier? := expandBinderModifier stx[3]
    ids.foldlM (init := binders) fun binders id => return binders.push {
      ref := stx
      id := ← expandBinderIdent id,
      type := expandBinderType id type,
      info := .default,
      modifier?
    }
  else if k == ``Lean.Parser.Term.implicitBinder then
    -- `{` binderIdent+ binderType `}`
    let ids ← getBinderIds stx[1]
    let type := stx[2]
    ids.foldlM (init := binders) fun binders id => return binders.push {
      ref := stx
      id := ← expandBinderIdent id
      type := expandBinderType id type
      info := .implicit
    }
  else if k == ``Lean.Parser.Term.strictImplicitBinder then
    -- `⦃` binderIdent+ binderType `⦄`
    let ids ← getBinderIds stx[1]
    let type := stx[2]
    ids.foldlM (init := binders) fun binders id => return binders.push {
      ref := stx
      id := ← expandBinderIdent id
      type := expandBinderType id type
      info := .strictImplicit
    }
  else if k == ``Lean.Parser.Term.instBinder then
    -- `[` optIdent type `]`
    let id := expandOptIdent stx[1]
    let type := stx[2]
    return binders.push {
      ref := stx
      id := ← expandBinderIdent id
      type := ⟨type⟩
      info := .instImplicit
    }
  else
    Macro.throwUnsupported

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Binder/Variant59ff3be75ff7c6bbbc60d387f661f7c015a3623c63c0cf9eb937ec76ea96a1e4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Binder/Variant59ff3be75ff7c6bbbc60d387f661f7c015a3623c63c0cf9eb937ec76ea96a1e4.lean#L112).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `04d7f70f4cbf5a6ee7ee8752f2ac5ca7493659cf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
