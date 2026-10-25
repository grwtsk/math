# elabFunBinderViews

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ae84a1a7df9b2df7ee05a9aeacd2731769e4f9d67a89549d2f1176f7e88af1ac",
  "kind": "def",
  "lexical_name": "elabFunBinderViews",
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
  "slug": "elabfunbinderviews--0a89df494a8eedf7e411f942",
  "source": {
    "blob": "11f38a712a1b2233d5a315c2f28f444b04e00086",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 451,
    "line": 423,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Binders/Variantab286e710611d4dd0c56ae4ca0c8f050fb687aa94cd5ae286b9a4448d9e135e0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0a89df494a8eedf7e411f942c78cf6ffa6720f9c46b176d29f100cc51c366c32",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Binders/Variantab286e710611d4dd0c56ae4ca0c8f050fb687aa94cd5ae286b9a4448d9e135e0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ae84a1a7df9b2df7ee05a9aeacd2731769e4f9d67a89549d2f1176f7e88af1ac`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 423–451.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private partial def elabFunBinderViews (binderViews : Array BinderView) (i : Nat) (s : State) : TermElabM State := do
  if h : i < binderViews.size then
    let binderView := binderViews[i]
    ensureAtomicBinderName binderView
    withRef binderView.type <| withLCtx s.lctx s.localInsts do
      let type ← elabType binderView.type
      registerFailedToInferBinderTypeInfo type binderView
      let fvarId ← mkFreshFVarId
      let fvar  := mkFVar fvarId
      let s     := { s with fvars := s.fvars.push fvar }
      let id    := binderView.id.getId
      let kind  := .ofBinderName id
      /-
        We do **not** want to support default and auto arguments in lambda abstractions.
        Example: `fun (x : Nat := 10) => x+1`.
        We do not believe this is an useful feature, and it would complicate the logic here.
      -/
      let lctx  := s.lctx.mkLocalDecl fvarId id type binderView.bi kind
      addTermInfo' (lctx? := some lctx) (isBinder := true) binderView.ref fvar
      let s ← withRef binderView.id <| propagateExpectedType fvar type s
      let s := { s with lctx }
      match ← isClass? type, kind with
      | some className, .default =>
        let localInsts := s.localInsts.push { className, fvar := mkFVar fvarId }
        elabFunBinderViews binderViews (i+1) { s with localInsts }
      | _, _ => elabFunBinderViews binderViews (i+1) s
  else
    pure s

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Binders/Variantab286e710611d4dd0c56ae4ca0c8f050fb687aa94cd5ae286b9a4448d9e135e0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Binders/Variantab286e710611d4dd0c56ae4ca0c8f050fb687aa94cd5ae286b9a4448d9e135e0.lean#L423).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `11f38a712a1b2233d5a315c2f28f444b04e00086` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
