# mkBelowInductive

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8869a6aedfb68cb874238058ad234969080b233f5ec3c24699e517154a80489c",
  "kind": "def",
  "lexical_name": "mkBelowInductive",
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
  "slug": "mkbelowinductive--d47683562e801518d2f8d068",
  "source": {
    "blob": "e7b0240e5c7d53163b28ee2991edb0d61b70eaef",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 129,
    "line": 91,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IndPredBelow/Variant13a9fd4a319964a342ed4d496c92fb49fec5bad267f5c73cb1c9fdad6076c296.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d47683562e801518d2f8d06858f67dd30892f89a1509b7b26cd1c250d8a09a17",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IndPredBelow/Variant13a9fd4a319964a342ed4d496c92fb49fec5bad267f5c73cb1c9fdad6076c296.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8869a6aedfb68cb874238058ad234969080b233f5ec3c24699e517154a80489c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 91–129.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def mkBelowInductive (motiveIdx minorIdx : Nat) (ctx : Context) : MetaM (Nat × InductiveType) := do
  let motive := ctx.motives[motiveIdx]!
  let motiveType ← inferType motive
  let name := ctx.belowNames[motiveIdx]!
  let paramsAndMotives := ctx.params ++ ctx.motives
  let type ← mkForallFVars paramsAndMotives (toImplicit motiveType)
  let mut minorIdx := minorIdx
  let mut ctors := #[]
  -- iterate through all minors with motive `motive`
  while minorIdx < ctx.minors.size do
    let minor := ctx.minors[minorIdx]!
    let minorName ← minor.fvarId!.getUserName
    let minorType ← inferType minor
    if minorType.getForallBody.getAppFn != motive then
      break
    let ctorName := name ++ minorName
    let ctorType ← forallTelescope minorType fun minorArgs body => do
      let rec go (i : Nat) (vars : Array Expr) : MetaM Expr := do
        if h : i < minorArgs.size then
          let type ← inferType minorArgs[i]
          if let some _ := isIH type ctx then
            -- minorArgs[i] : (a : Nat) → motive (f a)
            -- ==> (ih : (a : Nat) → ABC.below (f a)) (ih_1 : (a : Nat) → motive (f a))
            withLocalDeclD (← mkFreshUserName `ih) (ihTypeToBelowType type ctx) fun below =>
              go (i + 1) ((vars.push below).push minorArgs[i])
          else
            go (i + 1) (vars.push minorArgs[i])
        else
          mkForallFVars vars (ihTypeToBelowType body ctx)
      termination_by minorArgs.size - i
      go 0 paramsAndMotives
    ctors := ctors.push {
      name := ctorName
      type := ctorType
    }
    minorIdx := minorIdx + 1
  let induct : InductiveType := { name, type, ctors := ctors.toList }
  return (minorIdx, induct)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IndPredBelow/Variant13a9fd4a319964a342ed4d496c92fb49fec5bad267f5c73cb1c9fdad6076c296.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IndPredBelow/Variant13a9fd4a319964a342ed4d496c92fb49fec5bad267f5c73cb1c9fdad6076c296.lean#L91).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e7b0240e5c7d53163b28ee2991edb0d61b70eaef` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
