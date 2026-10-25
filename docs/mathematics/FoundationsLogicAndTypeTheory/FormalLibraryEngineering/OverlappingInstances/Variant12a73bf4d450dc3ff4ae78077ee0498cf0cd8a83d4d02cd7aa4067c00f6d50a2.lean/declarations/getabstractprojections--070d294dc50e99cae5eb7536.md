# getAbstractProjections

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5cc58211ec0820155b5569df8d804c66cb5813f50ca1eca4a50ec5e1b0c458ba",
  "kind": "def",
  "lexical_name": "getAbstractProjections",
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
  "slug": "getabstractprojections--070d294dc50e99cae5eb7536",
  "source": {
    "blob": "4537705553edf48bcceecd2b5eec17511a5d0865",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 97,
    "line": 68,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OverlappingInstances/Variant12a73bf4d450dc3ff4ae78077ee0498cf0cd8a83d4d02cd7aa4067c00f6d50a2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:070d294dc50e99cae5eb753620fdaf26b94a87fd2639f5a78f13e0c37ecb2c91",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OverlappingInstances/Variant12a73bf4d450dc3ff4ae78077ee0498cf0cd8a83d4d02cd7aa4067c00f6d50a2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5cc58211ec0820155b5569df8d804c66cb5813f50ca1eca4a50ec5e1b0c458ba`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 68–97.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def getAbstractProjections (cls : Name) : CoreM (Array Expr) := do
  let cinfo ← getConstInfo cls
  MetaM.run' <| forallTelescope cinfo.type fun xs type ↦ do
    withLocalDeclD `self (mkAppN (.const cls (cinfo.levelParams.map .param)) xs) fun inst ↦ do
      go cls inst #[] xs type.isProp |>.run' {}
where
  go (cls : Name) (inst : Expr) (acc : Array Expr) (xs : Array Expr) (isProp : Bool) :
      StateRefT NameSet MetaM (Array Expr) := do
    let type ← whnf (← inferType inst)
    let mut acc := acc
    let mut anyParent := false
    if let some info := getStructureInfo? (← getEnv) cls then
      let .const _ us := type.getAppFn | panic! s!"`{inst} is not an instance"
      for info in info.parentInfo do
        let parent := info.structName
        if (← get).contains parent then continue
        modify (·.insert parent)
        unless ← isInstance info.projFn do continue
        let isProp' := (← getConstInfo parent).type.getForallBody.isProp
        let proj := Expr.app (mkAppN (.const info.projFn us) type.getAppArgs) inst
        acc ← go parent proj acc xs isProp'
        -- When projecting from a data-carrying class to a `Prop` class,
        -- we record the data-carrying class. This helps with determining which overlaps have data.
        unless !isProp && isProp' do
          anyParent := true
    if !anyParent then
      acc := acc.push (← eraseInstances (type.abstract xs))
    return acc

/-- A cache for the result of `getAbstractDataProjections`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OverlappingInstances/Variant12a73bf4d450dc3ff4ae78077ee0498cf0cd8a83d4d02cd7aa4067c00f6d50a2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OverlappingInstances/Variant12a73bf4d450dc3ff4ae78077ee0498cf0cd8a83d4d02cd7aa4067c00f6d50a2.lean#L68).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4537705553edf48bcceecd2b5eec17511a5d0865` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
