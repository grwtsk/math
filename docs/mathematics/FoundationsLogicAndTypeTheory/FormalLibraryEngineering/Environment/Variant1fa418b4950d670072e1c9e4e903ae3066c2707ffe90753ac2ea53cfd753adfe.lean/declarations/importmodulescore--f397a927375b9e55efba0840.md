# importModulesCore

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:598d5dd767c3ec5765906e88984f9d5292e1edc50abbb93404d4cc61c30fdd33",
  "kind": "def",
  "lexical_name": "importModulesCore",
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
  "slug": "importmodulescore--f397a927375b9e55efba0840",
  "source": {
    "blob": "59e340aebe9944d1482e6aba5da1f8ec52a51fee",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 2275,
    "line": 2115,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Environment/Variant1fa418b4950d670072e1c9e4e903ae3066c2707ffe90753ac2ea53cfd753adfe.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f397a927375b9e55efba0840b06e653bbfa3631698bcb6a086aec4e004c30f0c",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Environment/Variant1fa418b4950d670072e1c9e4e903ae3066c2707ffe90753ac2ea53cfd753adfe.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:598d5dd767c3ec5765906e88984f9d5292e1edc50abbb93404d4cc61c30fdd33`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 2115–2275.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def importModulesCore
    (imports : Array Import) (globalLevel : OLeanLevel := .private)
    (arts : NameMap ImportArtifacts := {}) (isExported : Bool := globalLevel < .private)
    -- leanir: ensure (at least) `.ir.sig` is loaded for every module with data; also ignore `meta`
    -- on imports
    (loadIRSig : Bool := false) :
    ImportStateM Unit := do
  go imports (importAll := true) (isExported := isExported) (needsData := true) (needsIRTrans := false)
  if globalLevel < .private then
    for i in imports do
      if let some mod := (← get).moduleNameMap[i.module]?.bind (·.mainModule?) then
        if !mod.isModule then
          throw <| IO.userError s!"cannot import non-`module` {i.module} from `module`"
/-
When the module system is disabled for the root, we import all transitively referenced modules and
ignore any module system annotations on the way.

When the module system is enabled for the root, each module may need to be imported at one of the
following levels:

* all: import public information into public scope and private information into private scope
* public: import public information into public scope
* privateAll: import public and private information into private scope
* private: import public information into private scope
* none: do not import any `.olean*`

These levels form a lattice in the following way:

* all > public > private > none
* all > privateAll > private > none

The level at which a module then is to be imported based on the given `import` relations is
determined by the least fixed point of the following rules:

* Root ≥ all
* A ≥ privateAll ∧ A `import all` B → B ≥ privateAll
* A ≥ private ∧ A `public (meta)? import` B → B ≥ private
* A ≥ public ∧ A `public (meta)? import` B → B ≥ public
* A ≥ privateAll ∧ A `(meta)? import` B → B ≥ private

As imports are a DAG, we may need to visit the same module multiple times until its minimum
necessary level is established.

The `meta` flag is special in that it only affects whether IR is needed. The rules for determining
this are as follows:

* A ≥ privateAll ∧ `meta import` B → needsIRTrans(B)
* A ≥ private ∧ A `public meta import` B → needsIRTrans(B)
* needsIRTrans(A) ∧ A `(public)? (meta)? import (all)?` B → needsIRTrans(B)

Note that in particular, A `meta import` B `import` C implies A `meta import` C, but
A `import` B `meta import` C does not.

As a final special case, we also load IR for `import all`, but non-transitively, to provide the same
information as for the current module.

* A ≥ privateAll → needsIR(A)
* needsIRTrans(A) → needsIR(A)

For implementation purposes, we represent elements in the lattice using two flags as follows:

* all = isExported && importAll
* privateAll = !isExported && importAll
* private = !isExported && !importAll
* public = isExported && !importAll

When neither `needsIR(A)` nor `A != none` is true, the module is not visited at all and missing from
the module map.
-/
where
  go (imports : Array Import) (importAll isExported needsData needsIRTrans : Bool) := do
    for i in imports do
      -- `B > none`?
      let needsData := needsData && (i.isExported || importAll)
      -- `B ≥ privateAll`?
      let importAll := globalLevel == .private || importAll && i.importAll
      -- `B ≥ public`?
      let isExported := isExported && i.isExported
      -- `leanir` (`loadIRSig`) only needs `.ir.sig` of direct imports, not transitive `.ir`
      -- through `meta` imports, so ignore the `meta` modifier under `loadIRSig`.
      let needsIRTrans := needsIRTrans || (!loadIRSig && needsData && i.isMeta)
      -- `loadIRSig` only loads `.ir.sig` for modules whose `.olean` is also loaded
      -- (i.e., `needsData`), preserving the invariant that IR is never present without its olean.
      let needsIR := needsIRTrans || importAll || globalLevel > .exported || (loadIRSig && needsData)
      if !needsData && !needsIR then
        continue

      let irPhases :=
        if importAll then .all
        else if needsIRTrans then .comptime  -- `globalLevel` should *not* be considered here
        else .runtime

      let goRec mod := do
        if let some mod := mod.mainModule? then
          go (importAll := importAll) (isExported := isExported) (needsData := needsData) (needsIRTrans := needsIRTrans) mod.imports

      if let some mod := (← get).moduleNameMap[i.module]? then
        -- when module is already imported, bump flags
        let importAll := importAll || mod.importAll
        let isExported := isExported || mod.isExported
        let needsData := needsData || mod.hasData
        let needsIRTrans := needsIRTrans || mod.needsIRTrans
        let needsIR := needsIRTrans || importAll || (loadIRSig && needsData)
        let irPhases := if irPhases == mod.irPhases then irPhases else .all
        let parts ← if needsData && mod.parts.isEmpty then loadData i else pure mod.parts
        let irParts ← if needsIR && mod.irParts.isEmpty then loadIR i else pure mod.irParts
        if importAll != mod.importAll || isExported != mod.isExported ||
            needsIRTrans != mod.needsIRTrans || needsData != mod.hasData || irPhases != mod.irPhases then
          modify fun s => { s with moduleNameMap := s.moduleNameMap.insert i.module { mod with
            importAll, isExported, irPhases, parts, irParts, hasData := needsData, needsIRTrans }}
          -- bump entire closure
          goRec mod
        continue

      -- newly discovered module
      let parts ← if needsData then loadData i else pure #[]
      let irParts ← if needsIR then loadIR i else pure #[]
      let mod := { i with importAll, isExported, irPhases, parts, irParts, needsIRTrans, hasData := needsData }
      goRec mod
      modify fun s => { s with
        moduleNameMap := s.moduleNameMap.insert i.module mod
        moduleNames := s.moduleNames.push i.module
      }
  -- .olean + .olean.server (optional) + .olean.private (optional)
  loadData i := do
    if let some arts := arts.find? i.module then
      -- Opportunistically load all available parts.
      -- Producer (e.g., Lake) should limit parts to the proper import level.
      let fnames := arts.oleanParts (inServer := globalLevel ≥ .server)
      readModuleDataParts fnames
    else
      readModuleDataPartsOfMod i.module
  -- .ir.sig + .ir (optional)
  loadIR i := do
    if let some arts := arts.find? i.module then
      -- Opportunistically load all available parts.
      -- Producer (e.g., Lake) should limit parts to the proper import level.
      readModuleDataParts arts.irParts
    else
      readIRPartsOfMod i.module

/--
Returns `true` if `cinfo₁` and `cinfo₂` represent the same theorem/axiom, with `cinfo₁` potentially
being a richer representation; under the module system, a theorem may be weakened to an axiom when
exported. We allow different modules to prove the same theorem.

Motivation: We want to generate equational theorems on demand and potentially
in different files, and we want them to have non-private names.
We may add support for other kinds of definitions in the future. For now, theorems are
sufficient for our purposes.

We may have to revise this design decision and eagerly generate equational theorems when
we implement the module system.

Remark: we do not check whether the theorem `value` field match. This feature is useful and
ensures the proofs for equational theorems do not need to be identical. This decision
relies on the fact that theorem types are propositions, we have proof irrelevance,
and theorems are (mostly) opaque in Lean. For `Acc.rec`, we may unfold theorems
during type-checking, but we are assuming this is not an issue in practice,
and we are planning to address this issue in the future.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Environment/Variant1fa418b4950d670072e1c9e4e903ae3066c2707ffe90753ac2ea53cfd753adfe.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Environment/Variant1fa418b4950d670072e1c9e4e903ae3066c2707ffe90753ac2ea53cfd753adfe.lean#L2115).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `59e340aebe9944d1482e6aba5da1f8ec52a51fee` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
