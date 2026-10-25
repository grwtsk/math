# simpInterlaced

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f8b5f8d989eac01f98cd4ebbd03af812ae72c0a034dfcb075ed9b9827cc10da3",
  "kind": "def",
  "lexical_name": "simpInterlaced",
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
  "slug": "simpinterlaced--f299b1aa38b3d53316bd0728",
  "source": {
    "blob": "559b0157c620291795eaf092087dd0ad761dabf3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 313,
    "line": 285,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/App/Variant5a40cf81ca4b91bf7e8dd0f5ffb0657a5c05114cbbf8dd973c882f63b6b36482.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f299b1aa38b3d53316bd07287ce5ec66925af4bc96859622c8e40449f5bd4418",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/App/Variant5a40cf81ca4b91bf7e8dd0f5ffb0657a5c05114cbbf8dd973c882f63b6b36482.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f8b5f8d989eac01f98cd4ebbd03af812ae72c0a034dfcb075ed9b9827cc10da3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 285–313.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
public def simpInterlaced (e : Expr) (rewritable : Array Bool) : SimpM Result := do
  let numArgs := e.getAppNumArgs
  if h : numArgs = 0 then
    -- Nothing to be done
    return .rfl
  else if h : numArgs > rewritable.size then
    simpOverApplied e (numArgs - rewritable.size) (go rewritable.size · (Nat.le_refl _))
  else
    go numArgs e (by omega)
where
  go (i : Nat) (e : Expr) (h : i ≤ rewritable.size) : SimpM Result := do
    if h : i = 0 then
      return .rfl
    else
      match h : e with
      | .app f a =>
        let fr ← go (i - 1) f (by omega)
        if rewritable[i - 1] then
          mkCongr e f a fr (← simp a) h
        -- Fixed (non-rewritable) argument: propagate `cd` from the function result.
        else match fr with
          | .rfl _ cd => return mkRflResultCD cd
          | .step f' hf _ cd => mkCongrFun e f a f' hf h (contextDependent := cd)
      | _ => unreachable!

/--
Helper function used at `congrThm`. The idea is to initialize `argResults` lazily
when we get the first non-`.rfl` result.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/App/Variant5a40cf81ca4b91bf7e8dd0f5ffb0657a5c05114cbbf8dd973c882f63b6b36482.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/App/Variant5a40cf81ca4b91bf7e8dd0f5ffb0657a5c05114cbbf8dd973c882f63b6b36482.lean#L285).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `559b0157c620291795eaf092087dd0ad761dabf3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
