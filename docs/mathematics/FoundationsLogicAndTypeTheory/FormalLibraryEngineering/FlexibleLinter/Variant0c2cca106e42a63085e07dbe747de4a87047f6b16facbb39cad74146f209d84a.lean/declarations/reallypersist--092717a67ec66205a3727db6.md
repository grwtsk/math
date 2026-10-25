# reallyPersist

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:59b10a349ecb309aca03073664770402e716cba36df152cf7af16c4e66fcc2f1",
  "kind": "def",
  "lexical_name": "reallyPersist",
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
  "slug": "reallypersist--092717a67ec66205a3727db6",
  "source": {
    "blob": "1178328c5f20b71eb5fb9ad5a4fc48fa30fe3f4a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 379,
    "line": 357,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FlexibleLinter/Variant0c2cca106e42a63085e07dbe747de4a87047f6b16facbb39cad74146f209d84a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:092717a67ec66205a3727db636e5e12d975d097b277dc6fb6cb33dba80b78676",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FlexibleLinter/Variant0c2cca106e42a63085e07dbe747de4a87047f6b16facbb39cad74146f209d84a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:59b10a349ecb309aca03073664770402e716cba36df152cf7af16c4e66fcc2f1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 357–379.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def reallyPersist
    (fmvars : Array (FVarId × MVarId)) (mvs0 mvs1 : List MVarId) (ctx0 ctx1 : MetavarContext) :
    Array (FVarId × MVarId) := Id.run do
  -- split the input `fmvars` into
  -- * the `active` ones, whose `mvar` appears in `mvs0` and
  -- * the `inert` ones, the rest.
  -- `inert` gets copied unchanged, while we transform `active`
  let (active, inert) := fmvars.partition fun (_, mv) => mvs0.contains mv
  let mut new := #[]
  for (fvar, mvar) in active do       -- for each `active` pair `(fvar, mvar)`
    match ctx0.decls.find? mvar with  -- check if `mvar` is managed by `ctx0` (it should be)
      | none => -- the `mvar` is not managed by `ctx0`: no change
        new := new.push (fvar, mvar)
      | some mvDecl0 => -- the `mvar` *is* managed by `ctx0`: push the pair `(fvar, mvar)` through
        for mv1 in mvs1 do  -- for each new `MVarId` in `mvs1`
          match ctx1.decls.find? mv1 with  -- check if `mv1` is managed by `ctx1` (it should be)
            | none => dbg_trace "'really_persist' could this happen?" default -- ??? maybe `.push`?
            | some mvDecl1 =>  -- we found a "new" declaration
              let persisted_fv := persistFVars fvar mvDecl0.lctx mvDecl1.lctx  -- persist `fv`
              new := new.push (persisted_fv, mv1)
  return inert ++ new

/-- The main implementation of the flexible linter. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FlexibleLinter/Variant0c2cca106e42a63085e07dbe747de4a87047f6b16facbb39cad74146f209d84a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FlexibleLinter/Variant0c2cca106e42a63085e07dbe747de4a87047f6b16facbb39cad74146f209d84a.lean#L357).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1178328c5f20b71eb5fb9ad5a4fc48fa30fe3f4a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
