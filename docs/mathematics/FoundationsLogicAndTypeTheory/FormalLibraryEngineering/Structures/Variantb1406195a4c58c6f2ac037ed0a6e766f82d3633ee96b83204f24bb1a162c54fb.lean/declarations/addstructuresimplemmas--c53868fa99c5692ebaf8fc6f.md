# addStructureSimpLemmas

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7a60cea11cd56ea8d92d144fc115862c11745f18878c79e82f597ca6ac976662",
  "kind": "def",
  "lexical_name": "addStructureSimpLemmas",
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
  "slug": "addstructuresimplemmas--c53868fa99c5692ebaf8fc6f",
  "source": {
    "blob": "208ad83ea771c1ce13b17a489ecabb882b6c2215",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 87,
    "line": 47,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Structures/Variantb1406195a4c58c6f2ac037ed0a6e766f82d3633ee96b83204f24bb1a162c54fb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c53868fa99c5692ebaf8fc6fe1a8f331172041c549fca20ea1ab937ba4ea4f20",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Structures/Variantb1406195a4c58c6f2ac037ed0a6e766f82d3633ee96b83204f24bb1a162c54fb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7a60cea11cd56ea8d92d144fc115862c11745f18878c79e82f597ca6ac976662`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 47–87.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
public def addStructureSimpLemmas (simprocs : Simprocs) (theorems : SimpTheoremsArray) :
    PreProcessM (Simprocs × SimpTheoremsArray) := do
  let mut simprocs := simprocs
  let mut theorems := theorems
  let interesting := (← PreProcessM.getTypeAnalysis).interestingStructures
  let env ← getEnv
  for const in interesting do
    let constInfo ← getConstInfoInduct const
    if let some extIffThm ← findExtIff? constInfo then
      trace[Meta.Tactic.bv] m!"Using ext_iff: {extIffThm}"
      theorems ← theorems.addTheorem (.decl extIffThm) (mkConst extIffThm)
    let fields := (getStructureInfo env const).fieldNames.size
    let numParams := constInfo.numParams
    for proj in 0...fields do
      -- We use the simprocs with pre such that we push in projections eagerly in order to
      -- potentially not have to simplify complex structure expressions that we only project one
      -- element out of.
      let path := mkApplyProjControlDiscrPath const numParams proj ``ite 5
      simprocs := simprocs.addCore path ``applyIteSimproc false (.inl applyIteSimproc)
      let path := mkApplyProjControlDiscrPath const numParams proj ``cond 4
      simprocs := simprocs.addCore path ``applyCondSimproc false (.inl applyCondSimproc)
  return (simprocs, theorems)
where
  findExtIff? (info : InductiveVal) : MetaM (Option Name) := do
    let pat ← mkConstAppWithMVars info.name
    let thms ← Ext.getExtTheorems pat
    if thms.isEmpty then return none
    let .str root s := thms[0]!.declName | return none
    let extIffThm := .str root (s ++ "_iff")
    unless (← getEnv).contains extIffThm do return none
    return some extIffThm

  /--
  Constructs `declName ?m.1 ?m.2 ...` as a synthetic discr tree pattern for ext theorems associated
  with `declName`.
  -/
  mkConstAppWithMVars (declName : Name) : MetaM Expr := do
    let c ← mkConstWithFreshMVarLevels declName
    let (mvars, _, _) ← forallMetaTelescopeReducing (← inferType c)
    return mkAppN c mvars

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Structures/Variantb1406195a4c58c6f2ac037ed0a6e766f82d3633ee96b83204f24bb1a162c54fb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Structures/Variantb1406195a4c58c6f2ac037ed0a6e766f82d3633ee96b83204f24bb1a162c54fb.lean#L47).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `208ad83ea771c1ce13b17a489ecabb882b6c2215` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
