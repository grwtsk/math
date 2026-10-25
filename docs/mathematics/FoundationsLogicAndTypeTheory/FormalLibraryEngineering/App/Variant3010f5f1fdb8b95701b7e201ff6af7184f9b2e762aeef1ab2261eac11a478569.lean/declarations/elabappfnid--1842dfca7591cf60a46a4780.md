# elabAppFnId

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2ebfad869b5f1b4274ccdd4cc2b550410a589bbb23861774922c366afe1f6881",
  "kind": "def",
  "lexical_name": "elabAppFnId",
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
  "slug": "elabappfnid--1842dfca7591cf60a46a4780",
  "source": {
    "blob": "b72a9e10f27f1a68631935a63623f43ea5fdc36a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1984,
    "line": 1952,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/App/Variant3010f5f1fdb8b95701b7e201ff6af7184f9b2e762aeef1ab2261eac11a478569.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1842dfca7591cf60a46a478043f118ef28bd068f7d9fd173e2daff9959241993",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/App/Variant3010f5f1fdb8b95701b7e201ff6af7184f9b2e762aeef1ab2261eac11a478569.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2ebfad869b5f1b4274ccdd4cc2b550410a589bbb23861774922c366afe1f6881`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1952–1984.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def elabAppFnId (fIdent : Syntax) (fExplicitUnivs : List Level) (lvals : List LVal)
    (namedArgs : Array NamedArg) (args : Array Arg) (expectedType? : Option Expr) (explicit ellipsis overloaded : Bool)
    (acc : Array (TermElabResult Expr)) :
    TermElabM (Array (TermElabResult Expr)) := do
  let (n, fRes) ← withRef fIdent <| resolveName' fIdent fExplicitUnivs expectedType?
  if fRes.isEmpty then throwUnknownIdWithSuggestions n
  elabAppFnResolutions fIdent fRes lvals namedArgs args expectedType? explicit ellipsis overloaded acc
where
  throwUnknownIdWithSuggestions (n : Name) := withRef fIdent do
    let env ← getEnv
    -- check for scope errors before trying auto implicits
    if env.isExporting then
      if let [(npriv, _)] ← withoutExporting <| resolveGlobalName (enableLog := false) n then
        throwUnknownNameWithSuggestions (declHint := npriv) n
    if !(← read).autoBoundImplicitForbidden n then
      if (← read).autoBoundImplicitContext.isSome then
        let allowed := autoImplicit.get (← getOptions)
        let relaxed := relaxedAutoImplicit.get (← getOptions)
        match checkValidAutoBoundImplicitName n (allowed := allowed) (relaxed := relaxed) with
          | .ok true => throwAutoBoundImplicitLocal n
          | .ok false => throwUnknownNameWithSuggestions n
          | .error msg => throwUnknownNameWithSuggestions (extraMsg := msg) n
    throwUnknownNameWithSuggestions n

/--
Resolves `(.$id:ident)` using the expected type to infer the namespace for `id`.

To infer a namespace from the expected type, we do the following operations:
- put it into WHNF using `whnfCore`, while consuming annotations
- enter the bodies of pi types
- if the type is of the form `c x₁ ... xₙ` with `c` a constant, then try using `c` as the namespace,
  and if that doesn't work, try unfolding the expression and continuing.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/App/Variant3010f5f1fdb8b95701b7e201ff6af7184f9b2e762aeef1ab2261eac11a478569.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/App/Variant3010f5f1fdb8b95701b7e201ff6af7184f9b2e762aeef1ab2261eac11a478569.lean#L1952).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b72a9e10f27f1a68631935a63623f43ea5fdc36a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
