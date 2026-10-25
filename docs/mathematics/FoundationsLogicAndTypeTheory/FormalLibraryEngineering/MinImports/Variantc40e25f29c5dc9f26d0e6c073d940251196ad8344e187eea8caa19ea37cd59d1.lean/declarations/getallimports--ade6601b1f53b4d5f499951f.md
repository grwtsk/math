# getAllImports

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f35c723980ee0678157a9d0cb37c2efbb3af8ecd394a39935c63ed17ade7718f",
  "kind": "def",
  "lexical_name": "getAllImports",
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
  "slug": "getallimports--ade6601b1f53b4d5f499951f",
  "source": {
    "blob": "b4c5a3697bbd57676dd2a0e99725ad575a03de91",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 240,
    "line": 220,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MinImports/Variantc40e25f29c5dc9f26d0e6c073d940251196ad8344e187eea8caa19ea37cd59d1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ade6601b1f53b4d5f499951fdb98cb19455fad7f142c3d5d5ee1c6803873cb7e",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MinImports/Variantc40e25f29c5dc9f26d0e6c073d940251196ad8344e187eea8caa19ea37cd59d1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f35c723980ee0678157a9d0cb37c2efbb3af8ecd394a39935c63ed17ade7718f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 220–240.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def getAllImports (cmd id : Syntax) (dbg? : Bool := false) :
    CommandElabM NameSet := do
  let env ← getEnv
  -- We collect the implied declaration names, the `SyntaxNodeKinds` and the attributes.
  let ts ← getAllDependencies cmd id
  if dbg? then dbg_trace "{ts.toArray.qsort Name.lt}"
  let mut hm : Std.HashMap Nat Name := {}
  for imp in env.header.moduleNames do
    hm := hm.insert ((env.getModuleIdx? imp).getD default) imp
  let mut fins : NameSet := {}
  for t in ts do
    let new := match env.getModuleIdxFor? t with
      | some t => (hm.get? t).get!
      | none   => .anonymous -- instead of `getMainModule`, we omit the current module
    if !fins.contains new then fins := fins.insert new
  return fins.erase .anonymous

/-- `getIrredundantImports env importNames` takes an `Environment` and a `NameSet` as inputs.
Assuming that `importNames` are module names,
it returns the `NameSet` consisting of a minimal collection of module names whose transitive
closure is enough to parse (and elaborate) `cmd`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MinImports/Variantc40e25f29c5dc9f26d0e6c073d940251196ad8344e187eea8caa19ea37cd59d1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MinImports/Variantc40e25f29c5dc9f26d0e6c073d940251196ad8344e187eea8caa19ea37cd59d1.lean#L220).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b4c5a3697bbd57676dd2a0e99725ad575a03de91` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
