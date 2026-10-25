# foldImportedDecls

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:bcd16c2ba2f246218b450c62c90d85f30d1463a93f07bb42d3365129f2e665ff",
  "kind": "def",
  "lexical_name": "foldImportedDecls",
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
  "slug": "foldimporteddecls--74f12744a2da53e724ecee21",
  "source": {
    "blob": "e402cebd80f9663a9ab8cdb39441b864dc84bf48",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 104,
    "line": 76,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FoldEnvironment/Variant7cb3feb496c0b68b99a630aa0abc8119f925df449224a6340bcc27faeff3fec7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:74f12744a2da53e724ecee213c1f0aa38a7b100f807d09591fb1c23830e6c1b4",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FoldEnvironment/Variant7cb3feb496c0b68b99a630aa0abc8119f925df449224a6340bcc27faeff3fec7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:bcd16c2ba2f246218b450c62c90d85f30d1463a93f07bb42d3365129f2e665ff`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 76–104.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
public def foldImportedDecls (init : α) (cfg : Config)
    (act : α → Name → ConstantInfo → MetaM α) (constantsPerTask : Nat := 5000) :
    CoreM (Array (Task (Except Exception α)) × FoldDeclErrorRef) := do
  let env ← getEnv
  let numModules := env.header.moduleData.size
  let mctx := { keyedConfig := cfg.toConfigWithKey }
  let cctx ← read
  let errorRef ← IO.mkRef {}
  let mut tasks := #[]
  let mut start := 0
  let mut count := 0
  for h : idx in *...numModules do
    count := count + env.header.moduleData[idx].constants.size
    if count > constantsPerTask then
      let (childNGen, parentNGen) := (← getNGen).mkChild
      setNGen parentNGen
      let t ← (foldModules childNGen errorRef env init act mctx cctx start (idx + 1)).asTask
      tasks := tasks.push t
      count := 0
      start := idx + 1
  if start < numModules then
    let (childNGen, parentNGen) := (← getNGen).mkChild
    setNGen parentNGen
    let t ← (foldModules childNGen errorRef env init act mctx cctx start numModules).asTask
    tasks := tasks.push t
  return (tasks, errorRef)

/-- Fold through all constants of the current file using `act`. -/
@[specialize]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FoldEnvironment/Variant7cb3feb496c0b68b99a630aa0abc8119f925df449224a6340bcc27faeff3fec7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FoldEnvironment/Variant7cb3feb496c0b68b99a630aa0abc8119f925df449224a6340bcc27faeff3fec7.lean#L76).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e402cebd80f9663a9ab8cdb39441b864dc84bf48` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
