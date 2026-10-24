# loadModules

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5c1acf94bb04e2be7596c4ecdab973945f20e772ae96b97ea5a0619d8f3868fa",
  "kind": "def",
  "lexical_name": "loadModules",
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
  "slug": "loadmodules--ff4335bd91b6e79d67603fa6",
  "source": {
    "blob": "84ef88a1e784d3939ea9cccb7dcf29aeff1b44c8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 210,
    "line": 167,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Main/Variant2e603eabed2a2afc6d266c13ad220c41db0a4c13b13f5dea45fe81a75371f519.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ff4335bd91b6e79d67603fa6a2f89442890483cb294041e3dcf2f57fa475a8d8",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Main/Variant2e603eabed2a2afc6d266c13ad220c41db0a4c13b13f5dea45fe81a75371f519.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5c1acf94bb04e2be7596c4ecdab973945f20e772ae96b97ea5a0619d8f3868fa`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 167–210.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def loadModules (imports : Array Import) : StateT State IO (Array USize × Bitset) := do
  let mut imps := #[]
  let mut transImps := 0
  for imp in imports do
    let s ← get
    if let some i := s.toIdx[imp.module]? then
      imps := imps.push i
      transImps := transImps ||| s.transDeps[i]!
    else
      let mFile ← findOLean imp.module
      unless (← mFile.pathExists) do
        throw <| IO.userError s!"object file '{mFile}' of module {imp.module} does not exist"
      let (mod, _) ← readModuleData mFile
      let (deps, transDeps) ← loadModules mod.imports
      let s ← get
      let n := s.mods.size.toUSize
      let transDeps := transDeps ||| (1 <<< n.toNat)
      imps := imps.push n
      transImps := transImps ||| transDeps
      set (σ := State) {
        toIdx := s.toIdx.insert imp.module n
        modNames := s.modNames.push imp.module
        mods := s.mods.push mod
        deps := s.deps.push deps
        transDeps := s.transDeps.push transDeps
        needs := s.needs
        constToIdx := mod.constNames.foldl (init := s.constToIdx) fun m a =>
          match m.getThenInsertIfNew? a n with
          | (some (some _), m) =>
            -- Note: If a constant is found in multiple modules, we assume it is an auto-generated
            -- definition which is created on demand, and therefore it is safe to ignore any
            -- dependencies via this definition because it will just be re-created in the current
            -- module if we don't import it.
            m.insert a none
          | (_, m) => m
      }
  return (imps, transImps)

/-- The list of edits that will be applied in `--fix`. `edits[i] = (removed, added)` where:

* If `j ∈ removed` then we want to delete module named `j` from the imports of `i`
* If `j ∈ added` then we want to add module index `j` to the imports of `i`.
  We keep this as a bitset because we will do transitive reduction before applying it
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Main/Variant2e603eabed2a2afc6d266c13ad220c41db0a4c13b13f5dea45fe81a75371f519.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Main/Variant2e603eabed2a2afc6d266c13ad220c41db0a4c13b13f5dea45fe81a75371f519.lean#L167).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `84ef88a1e784d3939ea9cccb7dcf29aeff1b44c8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
