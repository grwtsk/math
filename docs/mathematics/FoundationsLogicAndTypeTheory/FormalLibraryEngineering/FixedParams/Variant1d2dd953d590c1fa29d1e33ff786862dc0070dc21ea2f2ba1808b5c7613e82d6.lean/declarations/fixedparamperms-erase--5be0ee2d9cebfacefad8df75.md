# FixedParamPerms.erase

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:bf553d571219d6dcd2577617ccd0bfd7732153b45a114538b5951adfe6384215",
  "kind": "def",
  "lexical_name": "FixedParamPerms.erase",
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
  "slug": "fixedparamperms-erase--5be0ee2d9cebfacefad8df75",
  "source": {
    "blob": "40a8b5d26013b73ac5fa85ff0e020f1e3b240148",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 506,
    "line": 462,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FixedParams/Variant1d2dd953d590c1fa29d1e33ff786862dc0070dc21ea2f2ba1808b5c7613e82d6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5be0ee2d9cebfacefad8df7552cfdacc7eec86b7dcd40e70805d50d3895d7968",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FixedParams/Variant1d2dd953d590c1fa29d1e33ff786862dc0070dc21ea2f2ba1808b5c7613e82d6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:bf553d571219d6dcd2577617ccd0bfd7732153b45a114538b5951adfe6384215`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 462–506.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def FixedParamPerms.erase  (fixedParamPerms : FixedParamPerms) (xs : Array Expr)
    (toErase : Array (Array Nat)) : (FixedParamPerms × Array Expr × Array FVarId) := Id.run do
  assert! xs.all (·.isFVar)
  assert! fixedParamPerms.numFixed  = xs.size
  assert! toErase.size = fixedParamPerms.perms.size
  -- Calculate a mask on the fixed parameters of variables to erase
  let mut mask := Array.replicate fixedParamPerms.numFixed false
  for funIdx in *...toErase.size, paramIdxs in toErase, mapping in fixedParamPerms.perms do
    for paramIdx in paramIdxs do
      assert! paramIdx < mapping.size
      if let some fixedParamIdx := mapping[paramIdx]! then
        mask := mask.set! fixedParamIdx true
  -- Take the transitive closure under under `fixedParamPerms.revDeps`.
  let mut changed := true
  while changed do
    changed := false
    for h : funIdx in *...fixedParamPerms.perms.size do
      for h : paramIdx₁ in *...fixedParamPerms.perms[funIdx].size do
        if let some fixedParamIdx₁ := fixedParamPerms.perms[funIdx][paramIdx₁] then
          if mask[fixedParamIdx₁]! then
            for paramIdx₂ in fixedParamPerms.revDeps[funIdx]![paramIdx₁]! do
              if let some fixedParamIdx₂ := fixedParamPerms.perms[funIdx][paramIdx₂]! then
                if !mask[fixedParamIdx₂]! then
                  mask := mask.set! fixedParamIdx₂ true
                  changed := true
  -- Calculate reindexing map, variables to keep, variables to erase
  let mut reindex := #[]
  let mut fvarsToErase :=#[]
  let mut toKeep :=#[]
  for i in *...mask.size, erase in mask, x in xs do
    if erase then
      reindex := reindex.push none
      fvarsToErase := fvarsToErase.push x.fvarId!
    else
      reindex := reindex.push (Option.some toKeep.size)
      toKeep := toKeep.push x
  let fixedParamPerms' : FixedParamPerms := {
    numFixed := toKeep.size
    perms := fixedParamPerms.perms.map (·.map (·.bind (reindex[·]!)))
    revDeps := fixedParamPerms.revDeps
  }
  return (fixedParamPerms', toKeep, fvarsToErase)

end Lean.Elab

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FixedParams/Variant1d2dd953d590c1fa29d1e33ff786862dc0070dc21ea2f2ba1808b5c7613e82d6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FixedParams/Variant1d2dd953d590c1fa29d1e33ff786862dc0070dc21ea2f2ba1808b5c7613e82d6.lean#L462).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `40a8b5d26013b73ac5fa85ff0e020f1e3b240148` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
