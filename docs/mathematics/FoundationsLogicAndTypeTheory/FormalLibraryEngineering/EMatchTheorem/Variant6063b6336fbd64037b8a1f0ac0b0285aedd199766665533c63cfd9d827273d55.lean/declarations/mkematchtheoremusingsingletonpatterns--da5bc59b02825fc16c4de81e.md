# mkEMatchTheoremUsingSingletonPatterns

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ea3620106da0a6f34ce12029628810c9f032b010c96f37cf33597dd599e5a836",
  "kind": "def",
  "lexical_name": "mkEMatchTheoremUsingSingletonPatterns",
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
  "slug": "mkematchtheoremusingsingletonpatterns--da5bc59b02825fc16c4de81e",
  "source": {
    "blob": "654387b687c2b34418a7dd62aa266d893b498135",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1360,
    "line": 1332,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EMatchTheorem/Variant6063b6336fbd64037b8a1f0ac0b0285aedd199766665533c63cfd9d827273d55.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:da5bc59b02825fc16c4de81edacb05b6c6a72236502a62db3764a0e8706efcf6",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EMatchTheorem/Variant6063b6336fbd64037b8a1f0ac0b0285aedd199766665533c63cfd9d827273d55.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ea3620106da0a6f34ce12029628810c9f032b010c96f37cf33597dd599e5a836`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1332–1360.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def mkEMatchTheoremUsingSingletonPatterns (origin : Origin) (levelParams : Array Name) (proof : Expr) (minPrio : Nat) (symPrios : SymbolPriorities)
    (showInfo := false) : MetaM (Array EMatchTheorem) := do
  let type ← inferEMatchProofType proof (gen := false)
  withReducible <| forallTelescopeReducing type fun xs type => withDefault do
    let (_, s) ← go xs type |>.run {} |>.run { proof, xs } |>.run' {} { symPrios, minPrio } |>.run' {}
    let numParams := xs.size
    let mut thms := #[]
    for (p, symbols) in s do
      let patterns := [p]
      logPatternWhen showInfo origin patterns
      let thm : EMatchTheorem := {
        proof, patterns, numParams, symbols,
        levelParams, origin, kind := .default false
        minIndexable := false
      }
      thms := thms.push thm
    return thms
where
  go (xs : Array Expr) (type : Expr) : StateT (Array (Expr × List HeadIndex)) CollectorM Unit := do
    for x in xs do
      collectSingletons (← inferType x)
    collectSingletons type

/--
Creates an E-match theorem using the given proof and kind.
If `groundPatterns` is `true`, it accepts patterns without pattern variables. This is useful for
theorems such as `theorem evenZ : Even 0`. For local theorems, we use `groundPatterns := false`
since the theorem is already in the `grind` state and there is nothing to be instantiated.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EMatchTheorem/Variant6063b6336fbd64037b8a1f0ac0b0285aedd199766665533c63cfd9d827273d55.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EMatchTheorem/Variant6063b6336fbd64037b8a1f0ac0b0285aedd199766665533c63cfd9d827273d55.lean#L1332).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `654387b687c2b34418a7dd62aa266d893b498135` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
