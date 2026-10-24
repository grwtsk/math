# computeModuleDeps

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:86683d4ca308512c5596cb869f3173187f9442301d637d34f4aff3d881699300",
  "kind": "def",
  "lexical_name": "computeModuleDeps",
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
  "slug": "computemoduledeps--06330ecc849090ae574fbe87",
  "source": {
    "blob": "1266fd0bf4094833269c7f4467edf175e110db67",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 223,
    "line": 195,
    "path": "GRWTSK/Algebra/LinearAlgebra/Module/Variantcd7b3e4802980fb9a9c1ed116650b2a95231917e4e024ca5b46b4f3821effa5c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:06330ecc849090ae574fbe874ffc83218182b04dfad40179d6df8cfc08c20b4f",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Module/Variantcd7b3e4802980fb9a9c1ed116650b2a95231917e4e024ca5b46b4f3821effa5c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:86683d4ca308512c5596cb869f3173187f9442301d637d34f4aff3d881699300`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 195–223.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def computeModuleDeps
  (impLibs : Array Dynlib) (externLibs : Array Dynlib)
  (dynlibs : Array Dynlib) (plugins : Array Dynlib)
: FetchM ModuleDeps := do
  /-
  Requirements:
  * Lean wants the external library symbols before module symbols.
  * Unix requires the file extension of the dynlib.
  * For some reason, building from the Lean server requires full paths.
    Everything else loads fine with just the augmented library path.
  * Linux needs the augmented path to resolve nested dependencies in dynlibs.
  -/
  let impLibs ← mkLoadOrder impLibs
  let mut dynlibs := externLibs ++ dynlibs
  let mut plugins := plugins
  for impLib in impLibs do
    if impLib.plugin then
      plugins := plugins.push impLib
    else
      dynlibs := dynlibs.push impLib
  /-
  On MacOS, Lake must be loaded as a plugin for
  `import Lake` to work with precompiled modules.
  https://github.com/leanprover/lean4/issues/7388
  -/
  if Platform.isOSX && !(plugins.isEmpty && dynlibs.isEmpty) then
    plugins := plugins.push (← getLakeInstall).sharedDynlib
  return {dynlibs, plugins}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Module/Variantcd7b3e4802980fb9a9c1ed116650b2a95231917e4e024ca5b46b4f3821effa5c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Module/Variantcd7b3e4802980fb9a9c1ed116650b2a95231917e4e024ca5b46b4f3821effa5c.lean#L195).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1266fd0bf4094833269c7f4467edf175e110db67` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
