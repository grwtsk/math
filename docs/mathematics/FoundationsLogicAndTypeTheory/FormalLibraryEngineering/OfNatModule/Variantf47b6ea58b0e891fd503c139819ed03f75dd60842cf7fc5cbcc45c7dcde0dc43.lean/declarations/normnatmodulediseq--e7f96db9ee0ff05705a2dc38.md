# normNatModuleDiseq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b89924e8ec7f5e8049a83547a52982ae9750214c918b26be14fd434eacd57a1e",
  "kind": "def",
  "lexical_name": "normNatModuleDiseq",
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
  "slug": "normnatmodulediseq--e7f96db9ee0ff05705a2dc38",
  "source": {
    "blob": "cb142c49a56fa0a8159c1cf20eec98ab5ef27968",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 205,
    "line": 189,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OfNatModule/Variantf47b6ea58b0e891fd503c139819ed03f75dd60842cf7fc5cbcc45c7dcde0dc43.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e7f96db9ee0ff05705a2dc38a1ff3fe5e19cac4bbf6f652ede20a7acfbbb6327",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OfNatModule/Variantf47b6ea58b0e891fd503c139819ed03f75dd60842cf7fc5cbcc45c7dcde0dc43.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b89924e8ec7f5e8049a83547a52982ae9750214c918b26be14fd434eacd57a1e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 189–205.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def normNatModuleDiseq (a b : Expr) : OfNatModuleM Unit := ReifyM.run do
  let ea ← reify a
  let eb ← reify b
  let pa := ea.toPolyN
  let pb := eb.toPolyN
  if pa == pb then
    let ns ← getNatStruct
    -- contradiction detected
    let vars := (← get).vars
    let ctx ← if h : 0 < vars.size then
      RArray.toExpr ns.type id (RArray.ofFn (vars[·]) h)
    else
      RArray.toExpr ns.type id (RArray.leaf ns.zero)
    let heq := mkApp6 (mkConst ``Grind.Linarith.eq_normN [ns.u]) ns.type ns.natModuleInst ctx (toExpr ea) (toExpr eb) eagerReflBoolTrue
    closeGoal <| mkApp (← mkDiseqProof a b) heq

end Lean.Meta.Grind.Arith.Linear
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OfNatModule/Variantf47b6ea58b0e891fd503c139819ed03f75dd60842cf7fc5cbcc45c7dcde0dc43.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OfNatModule/Variantf47b6ea58b0e891fd503c139819ed03f75dd60842cf7fc5cbcc45c7dcde0dc43.lean#L189).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cb142c49a56fa0a8159c1cf20eec98ab5ef27968` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
