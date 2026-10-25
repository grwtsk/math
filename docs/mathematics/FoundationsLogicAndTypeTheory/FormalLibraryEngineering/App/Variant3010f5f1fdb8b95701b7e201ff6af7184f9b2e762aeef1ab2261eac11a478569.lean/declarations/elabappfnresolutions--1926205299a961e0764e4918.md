# elabAppFnResolutions

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:74adcbdda246b219611f0b4de094a1c5e91f112821e2f4a7258ae7dfecbfe7c2",
  "kind": "def",
  "lexical_name": "elabAppFnResolutions",
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
  "slug": "elabappfnresolutions--1926205299a961e0764e4918",
  "source": {
    "blob": "b72a9e10f27f1a68631935a63623f43ea5fdc36a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1951,
    "line": 1926,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/App/Variant3010f5f1fdb8b95701b7e201ff6af7184f9b2e762aeef1ab2261eac11a478569.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1926205299a961e0764e491861dcc366409470d9744191de782210cd92972e24",
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

Occurrence: `declaration:74adcbdda246b219611f0b4de094a1c5e91f112821e2f4a7258ae7dfecbfe7c2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1926–1951.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def elabAppFnResolutions (fRef : Syntax) (fns : List (Expr × Syntax × List Syntax × List Level)) (lvals : List LVal)
    (namedArgs : Array NamedArg) (args : Array Arg) (expectedType? : Option Expr) (explicit ellipsis overloaded : Bool)
    (acc : Array (TermElabResult Expr)) (forceTermInfo : Bool := false) :
    TermElabM (Array (TermElabResult Expr)) := do
  let overloaded := overloaded || fns.length > 1
  -- Set `errToSorry` to `false` if `fns` > 1. See comment above about the interaction between `errToSorry` and `observing`.
  withReader (fun ctx => { ctx with errToSorry := fns.length == 1 && ctx.errToSorry }) do
    fns.foldlM (init := acc) fun acc (f, fIdent, fields, projLevels) => do
      let lastIdx := fields.length - 1
      let lvals' := fields.mapIdx fun idx field =>
        let suffix? := if idx == 0       then some <| toName fields else none
        let levels  := if idx == lastIdx then projLevels            else []
        LVal.fieldName field field.getId.getString! levels suffix? fRef
      let s ← observing do
        checkDeprecated fIdent f
        let f ← addTermInfo fIdent f expectedType? (force := forceTermInfo)
        let e ← elabAppLVals f (lvals' ++ lvals) namedArgs args expectedType? explicit ellipsis
        if overloaded then ensureHasType expectedType? e else return e
      return acc.push s
where
  toName (fields : List Syntax) : Name :=
    let rec go
      | []              => .anonymous
      | field :: fields => .mkStr (go fields) field.getId.toString
    go fields.reverse

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/App/Variant3010f5f1fdb8b95701b7e201ff6af7184f9b2e762aeef1ab2261eac11a478569.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/App/Variant3010f5f1fdb8b95701b7e201ff6af7184f9b2e762aeef1ab2261eac11a478569.lean#L1926).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b72a9e10f27f1a68631935a63623f43ea5fdc36a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
