# foldConfigM

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ad1c70aa86ea33f7c04fac002785fa57a743fb61eff1b419b89069f0d9e84a95",
  "kind": "def",
  "lexical_name": "foldConfigM",
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
  "slug": "foldconfigm--93e25d1949e391a2c0dc5375",
  "source": {
    "blob": "da8b588ad75bbac0d376f2746fc662d763a88267",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 233,
    "line": 187,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant856867230d90acd6cdc16e53a4188b05281d62faaab4861832c257dbba16f20d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:93e25d1949e391a2c0dc537559b99a793f3648ae9fb6950a5986865ead3e5b3e",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant856867230d90acd6cdc16e53a4188b05281d62faaab4861832c257dbba16f20d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ad1c70aa86ea33f7c04fac002785fa57a743fb61eff1b419b89069f0d9e84a95`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 187–233.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[specialize] partial def foldConfigM
    (init : α) (cfg : Syntax)
    (k : α → ConfigItem → m α)
    (onErr : α → Syntax → m α) :
    m α := do
  let doFail (_ : Unit) : m α := withRef cfg do onErr init cfg
  let atomAsIdent (si : SourceInfo) (val : String) : Ident :=
    let n := if val.contains '.' then String.toName val else Name.mkSimple val
    ⟨.ident si val.toRawSubstring n []⟩
  -- Matches ident/atom. Trusts that atoms are valid as idents and converts to idents,
  -- preserving the original source info.
  let getIdent? (stx : Syntax) : Option Ident :=
    match stx with
    | .ident .. => some ⟨stx⟩
    | .atom si val => some <| atomAsIdent si val
    | _ => none
  let isPosNeg? (val : String) : Option Bool :=
    if val == "+" then some true
    else if val == "-" then some false
    else none
  if cfg.isOfKind nullKind then
    foldConfigsM init cfg.getArgs k onErr
  else if cfg.getNumArgs == 1 then
    foldConfigM init (cfg.getArg 0) k onErr
  else if cfg.getNumArgs ≥ 1 then
    match cfg.getArg 0 with
    | arg@(.atom _ val) =>
      if let some b := isPosNeg? val then
        if cfg.getNumArgs == 2 then
          if let some ident := getIdent? (cfg.getArg 1) then
            let value := if b then mkCIdentFrom arg ``true else mkCIdentFrom arg ``false
            return ← k init { ref := cfg, option := ident, bool? := some b, value }
      else if val == "(" then
        if cfg.getNumArgs ≤ 5 then
          if let some ident := getIdent? (cfg.getArg 1) then
            -- Assuming `cfg.getArg 2` is `:=`
            return ← k init { ref := cfg, option := ident, value := cfg.getArg 3 }
      doFail ()
    | _ => doFail ()
  else if let .atom si val := cfg then
    k init { ref := cfg, option := atomAsIdent si val, bool? := true, value := mkCIdentFrom cfg ``true  }
  else
    doFail ()

/--
Like `foldConfigM` but takes an array of configurations or configuration items.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant856867230d90acd6cdc16e53a4188b05281d62faaab4861832c257dbba16f20d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant856867230d90acd6cdc16e53a4188b05281d62faaab4861832c257dbba16f20d.lean#L187).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `da8b588ad75bbac0d376f2746fc662d763a88267` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
