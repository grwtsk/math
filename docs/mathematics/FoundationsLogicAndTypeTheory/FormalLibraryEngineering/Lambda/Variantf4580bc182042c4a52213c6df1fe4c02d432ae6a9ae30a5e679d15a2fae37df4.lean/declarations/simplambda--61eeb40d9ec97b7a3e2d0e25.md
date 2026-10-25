# simpLambda'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3ac7a30a69fa9c278bfacd99aa81590cd2738153497cb89731e91e2c0078a3ce",
  "kind": "def",
  "lexical_name": "simpLambda'",
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
  "slug": "simplambda--61eeb40d9ec97b7a3e2d0e25",
  "source": {
    "blob": "bf40b8a763bdeb33c0b6abb9dffcce89be76a1a6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 79,
    "line": 56,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lambda/Variantf4580bc182042c4a52213c6df1fe4c02d432ae6a9ae30a5e679d15a2fae37df4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:61eeb40d9ec97b7a3e2d0e25a9acd4afbe1ee440d6dd42d266552ee7fccbe32d",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lambda/Variantf4580bc182042c4a52213c6df1fe4c02d432ae6a9ae30a5e679d15a2fae37df4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3ac7a30a69fa9c278bfacd99aa81590cd2738153497cb89731e91e2c0078a3ce`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 56–79.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
public def simpLambda' (simpBody : Simproc) (e : Expr) : SimpM Result := do
  lambdaTelescope e fun xs b => withFreshTransientCache do
    main xs (← shareCommon b)
where
  main (xs : Array Expr) (b : Expr) : SimpM Result := do
    -- Propagate `cd` from the body: in another context the body might simplify differently.
    match (← simpBody b) with
    | .rfl _ cd => return mkRflResultCD cd
    | .step b' h _ cd =>
      let h ← mkLambdaFVars xs h
      let e' ← shareCommon (← mkLambdaFVars xs b')
      let funext ← getFunext xs b
      return .step e' (mkApp3 funext e e' h) (contextDependent := cd)

  getFunext (xs : Array Expr) (b : Expr) : SimpM Expr := do
    let key ← inferType e
    if let some h := (← get).funext.find? { expr := key } then
      return h
    else
      let β ← inferType b
      let h ← mkFunextFor xs β
      modify fun s => { s with funext := s.funext.insert { expr := key } h }
      return h

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lambda/Variantf4580bc182042c4a52213c6df1fe4c02d432ae6a9ae30a5e679d15a2fae37df4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lambda/Variantf4580bc182042c4a52213c6df1fe4c02d432ae6a9ae30a5e679d15a2fae37df4.lean#L56).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bf40b8a763bdeb33c0b6abb9dffcce89be76a1a6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
