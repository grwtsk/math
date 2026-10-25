# packMutual

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e842719cc6cd5416720736a62abc1ba810a0566fe621f50ccbea9c619f815666",
  "kind": "def",
  "lexical_name": "packMutual",
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
  "slug": "packmutual--0c7e72ccf2c37a8c3a4a3d5e",
  "source": {
    "blob": "f4e2c9f92076cb8f31efcf7dd9dde526049fdcf4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 122,
    "line": 87,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PackMutual/Variant8baa99ff0dcf870e25eddc8f4aeba7c81d4b6992d6422fdc4a4f0851f546fc5b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0c7e72ccf2c37a8c3a4a3d5ecb7009aa1c36c8a1b9fd52be62aa1805d66f6d7c",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PackMutual/Variant8baa99ff0dcf870e25eddc8f4aeba7c81d4b6992d6422fdc4a4f0851f546fc5b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e842719cc6cd5416720736a62abc1ba810a0566fe621f50ccbea9c619f815666`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 87–122.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
def packMutual (fixedParamPerms : FixedParamPerms) (argsPacker : ArgsPacker) (preDefs : Array PreDefinition) : MetaM PreDefinition := do
  let newFn := mutualName fixedParamPerms argsPacker preDefs
  if newFn = preDefs[0]!.declName then
    return preDefs[0]!
  -- Bring the fixed prefix into scope
  fixedParamPerms.perms[0]!.forallTelescope preDefs[0]!.type fun ys => do
    let types ← preDefs.mapIdxM fun i preDef =>
      fixedParamPerms.perms[i]!.instantiateForall preDef.type ys
    let vals ← preDefs.mapIdxM fun i preDef =>
      fixedParamPerms.perms[i]!.instantiateLambda preDef.value ys

    let type ← argsPacker.uncurryType types

    -- Temporarily add the unary function as an axiom, so that all expressions
    -- are still type correct
    let type ← mkForallFVars ys type
    let preDefNew := { preDefs[0]! with declName := newFn, type }
    addAsAxiom preDefNew

    let us := preDefs[0]!.levelParams.map mkLevelParam
    let f := mkAppN (mkConst newFn us) ys

    let value ← argsPacker.uncurry vals
    let value ← packCalls fixedParamPerms argsPacker (preDefs.map (·.declName)) f value
    let value ← mkLambdaFVars ys value
    return { preDefNew with value }

/--
Collect the names of the varying variables (excluding the fixed parameters); this also determines the
arity for the well-founded translations, and is turned into an `ArgsPacker`.
We use the term to determine the arity, but take the name from the type, for better names in the
```
fun : (n : Nat) → Nat | 0 => 0 | n+1 => fun n
```
idiom.
-/
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PackMutual/Variant8baa99ff0dcf870e25eddc8f4aeba7c81d4b6992d6422fdc4a4f0851f546fc5b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PackMutual/Variant8baa99ff0dcf870e25eddc8f4aeba7c81d4b6992d6422fdc4a4f0851f546fc5b.lean#L87).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f4e2c9f92076cb8f31efcf7dd9dde526049fdcf4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
