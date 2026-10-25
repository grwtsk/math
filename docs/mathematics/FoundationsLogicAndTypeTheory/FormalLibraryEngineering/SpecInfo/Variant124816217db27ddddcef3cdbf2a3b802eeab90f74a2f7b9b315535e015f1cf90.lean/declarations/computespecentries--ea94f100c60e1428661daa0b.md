# computeSpecEntries

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3fddf38d387e9b10a4ba2035eff3513310b342acb4cd3e170d64121a95a9384c",
  "kind": "def",
  "lexical_name": "computeSpecEntries",
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
  "slug": "computespecentries--ea94f100c60e1428661daa0b",
  "source": {
    "blob": "2995a8dc9e7f778efa46ff91b436581595930951",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 270,
    "line": 201,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SpecInfo/Variant124816217db27ddddcef3cdbf2a3b802eeab90f74a2f7b9b315535e015f1cf90.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ea94f100c60e1428661daa0b4aed890441fa96075ebbe3817ab3f74e8ff82d05",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SpecInfo/Variant124816217db27ddddcef3cdbf2a3b802eeab90f74a2f7b9b315535e015f1cf90.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3fddf38d387e9b10a4ba2035eff3513310b342acb4cd3e170d64121a95a9384c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 201–270.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def computeSpecEntries (decls : Array (Decl .pure)) (autoSpecialize : Name → Option (Array Nat) → Bool)
    (alreadySpecialized : Array Bool) : CompilerM (Array SpecEntry) := do
  let mut declsInfo := #[]
  for decl in decls do
    if hasNospecializeAttribute (← getEnv) decl.name then
      declsInfo := declsInfo.push (.replicate decl.params.size .other)
    else
      let specArgs? := getSpecializationArgs? (← getEnv) decl.name
      let contains (i : Nat) : Bool := specArgs?.getD #[] |>.contains i
      let mut paramsInfo : Array SpecParamInfo := #[]
      for h :i in *...decl.params.size do
        let param := decl.params[i]
        let info ←
          if contains i then
            pure .user
          /-
          If the user tagged class (e.g., `Inhabited`) with the `@[nospecialize]` attribute,
          then parameters of this type should not be considered for specialization.
          -/
          else if isNoSpecType (← getEnv) param.type then
            pure .other
          else if isTypeFormerType param.type then
            pure .fixedNeutral
          else if (← isArrowClass? param.type).isSome then
            pure (.fixedInst (weak := isWeakSpecType (← getEnv) param.type))
          /-
          Recall that if `specArgs? == some #[]`, then user annotated function with `@[specialize]`, but did not
          specify which arguments must be specialized besides instances. In this case, we try to specialize
          any "fixed higher-order argument"
          -/
          else if autoSpecialize decl.name specArgs? && param.type matches .forallE .. then
            pure .fixedHO
          else
            pure .other
        paramsInfo := paramsInfo.push info
        pure ()
      declsInfo := declsInfo.push paramsInfo
  if declsInfo.any fun paramsInfo => paramsInfo.any SpecParamInfo.causesSpecialization then
    let m := mkFixedParamsMap decls
    let mut entries := Array.emptyWithCapacity decls.size
    for hi : i in *...decls.size do
      let decl := decls[i]
      let mut paramsInfo := declsInfo[i]!
      let some mask := m.find? decl.name | unreachable!
      paramsInfo := Array.zipWith (as := paramsInfo) (bs := mask) fun info fixed =>
        if fixed || info matches .user then
          info
        else
          .other
      for j in *...paramsInfo.size do
        let mut info := paramsInfo[j]!
        if info matches .fixedNeutral && !hasFwdDeps decl paramsInfo j then
          paramsInfo := paramsInfo.set! j .other
      entries := entries.push {
        declName := decl.name,
        paramsInfo,
        alreadySpecialized := alreadySpecialized[i]!
      }
    return entries
  else
    return decls.mapIdx fun i decl => {
      declName := decl.name,
      paramsInfo := Array.replicate decl.params.size .other
      alreadySpecialized := alreadySpecialized[i]!
    }

/--
Compute and save specialization information for `decls`. Assumes that `decls` is an SCC of user
defined declarations.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SpecInfo/Variant124816217db27ddddcef3cdbf2a3b802eeab90f74a2f7b9b315535e015f1cf90.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SpecInfo/Variant124816217db27ddddcef3cdbf2a3b802eeab90f74a2f7b9b315535e015f1cf90.lean#L201).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2995a8dc9e7f778efa46ff91b436581595930951` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
