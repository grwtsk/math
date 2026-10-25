# mkCongr

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:706f720b78e182c7317520720cdeca20cc49b23ca83537a275d24e4ab2018697",
  "kind": "def",
  "lexical_name": "mkCongr",
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
  "slug": "mkcongr--0df09fbf276552e1df5e5998",
  "source": {
    "blob": "e4171b932c4fa956f4f6011ce069f73d9bee1cda",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 82,
    "line": 52,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/App/Variant2c743cdc6c5ecf776ac1e3975348501acd64216a4a0a88778ef98b42628585a5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0df09fbf276552e1df5e599894cd8fafd6ad6cc04e2f8bb66e6178ed28b72b51",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/App/Variant2c743cdc6c5ecf776ac1e3975348501acd64216a4a0a88778ef98b42628585a5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:706f720b78e182c7317520720cdeca20cc49b23ca83537a275d24e4ab2018697`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 52–82.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
public def mkCongr (e : Expr) (f a : Expr) (fr : Result) (ar : Result) (_ : e = .app f a) : SymM Result := do
  let mkCongrPrefix (declName : Name) : SymM Expr := do
    let α ← inferType a
    let u ← getLevel α
    let β ← inferType e
    let v ← getLevel β
    return mkApp2 (mkConst declName [u, v]) α β
  -- Propagate `contextDependent` from both sub-results. If either `simp f` or `simp a`
  -- was context-dependent, the result for `f a` is too: in another local context, either
  -- sub-expression might simplify differently, changing the overall result.
  match fr, ar with
  | .rfl _ cd₁,  .rfl _ cd₂ => return mkRflResultCD (cd₁ || cd₂)
  | .step f' hf _ cd₁, .rfl _ cd₂ =>
    let e' ← mkAppS f' a
    let h := mkApp4 (← mkCongrPrefix ``congrFun') f f' hf a
    return .step e' h (contextDependent := cd₁ || cd₂)
  | .rfl _ cd₁, .step a' ha _ cd₂ =>
    let e' ← mkAppS f a'
    let h := mkApp4 (← mkCongrPrefix ``congrArg) a a' f ha
    return .step e' h (contextDependent := cd₁ || cd₂)
  | .step f' hf _ cd₁, .step a' ha _ cd₂ =>
    let e' ← mkAppS f' a'
    let h := mkApp6 (← mkCongrPrefix ``congr) f f' a a' hf ha
    return .step e' h (contextDependent := cd₁ || cd₂)

/--
Returns a proof using `congrFun`
```
congrFun.{u, v} {α : Sort u} {β : α → Sort v} {f g : (x : α) → β x} (h : f = g) (a : α) : f a = g a
```
-/
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/App/Variant2c743cdc6c5ecf776ac1e3975348501acd64216a4a0a88778ef98b42628585a5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/App/Variant2c743cdc6c5ecf776ac1e3975348501acd64216a4a0a88778ef98b42628585a5.lean#L52).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e4171b932c4fa956f4f6011ce069f73d9bee1cda` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
