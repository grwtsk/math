# Module.packLtar

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9a01104b8aa52128afbde10b4986c0ca956bbf78b0c180159c218cb2ed7c1c77",
  "kind": "def",
  "lexical_name": "Module.packLtar",
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
  "slug": "module-packltar--24495e5f086c661730fd79f0",
  "source": {
    "blob": "3e86af6463090dc2137ba05b5b4fed84e5d42a26",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 945,
    "line": 906,
    "path": "GRWTSK/Algebra/LinearAlgebra/Module/Variant7103b317139438b461bb2f72cd6cf118c4b83fbb6136d1f064672e3f82ed7e44.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:24495e5f086c661730fd79f06dad51bb7ea281b1b1864f6464f21e4799e840b2",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Module/Variant7103b317139438b461bb2f72cd6cf118c4b83fbb6136d1f064672e3f82ed7e44.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9a01104b8aa52128afbde10b4986c0ca956bbf78b0c180159c218cb2ed7c1c77`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 906–945.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Module.packLtar (self : Module) (arts : ModuleOutputArtifacts) : JobM Artifact := do
  let arts ← id do
    if (← self.checkArtifactsExist arts.isModule) then
      return arts
    else self.restoreAllArtifacts arts
  let args ← id do
    -- `-s` strips the `depHash` so archive bytes depend only on outputs.
    -- Consumers reinject the hash on unpack (see `Module.unpackLtar`).
    let mut args := #[
      "-s",
      "-C", self.leanLibDir.toString,
      "-C", self.irDir.toString,
      self.ltarFile.toString,
      self.fileName "trace"
    ]
    let addArt args idx art :=
      args.push "-i" |>.push idx |>.push (self.fileName art.ext)
    -- Note: oleans parts must be in the order of `.olean`, `.olean.server`, `.olean.private`
    args := addArt args "0" arts.olean
    if let some art := arts.oleanServer? then
      args := addArt args "0" art
    if let some art := arts.oleanPrivate? then
      args := addArt args "0" art
    args := addArt args "0" arts.ilean
    if let some art := arts.irSig? then
      args := addArt args "0" art
    if let some art := arts.ir? then
      args := addArt args "0" art
    args := addArt args "1" arts.c
    if Lean.Internal.hasLLVMBackend () then
      let some art := arts.bc?
        | error "LLVM backend enabled but module outputs lack bitcode"
      args := addArt args "1" art
    return args
  proc (quiet := true) {cmd := (← getLeantar).toString, args}
  if (← self.pkg.isArtifactCacheWritable) then
    cacheArtifact self.ltarFile "ltar" (useLocalFile := ← self.pkg.restoreAllArtifacts)
  else
    computeArtifact self.ltarFile "ltar"

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Module/Variant7103b317139438b461bb2f72cd6cf118c4b83fbb6136d1f064672e3f82ed7e44.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Module/Variant7103b317139438b461bb2f72cd6cf118c4b83fbb6136d1f064672e3f82ed7e44.lean#L906).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3e86af6463090dc2137ba05b5b4fed84e5d42a26` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
