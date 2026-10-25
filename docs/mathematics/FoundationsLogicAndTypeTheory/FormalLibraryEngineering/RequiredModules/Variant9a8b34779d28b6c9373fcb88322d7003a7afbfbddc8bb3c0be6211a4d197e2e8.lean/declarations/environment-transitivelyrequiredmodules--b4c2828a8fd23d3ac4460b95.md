# Environment.transitivelyRequiredModules'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:cf93e475145bf941961f20fda06bc5a6e4b915d92652792a189ab7b159fd615f",
  "kind": "def",
  "lexical_name": "Environment.transitivelyRequiredModules'",
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
  "slug": "environment-transitivelyrequiredmodules--b4c2828a8fd23d3ac4460b95",
  "source": {
    "blob": "26cfef4f6873418109a471d05c9d67276ba2497b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 158,
    "line": 106,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RequiredModules/Variant9a8b34779d28b6c9373fcb88322d7003a7afbfbddc8bb3c0be6211a4d197e2e8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b4c2828a8fd23d3ac4460b950c96461d7b7d5bf62ec737ec91c309f6c00147b6",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RequiredModules/Variant9a8b34779d28b6c9373fcb88322d7003a7afbfbddc8bb3c0be6211a4d197e2e8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:cf93e475145bf941961f20fda06bc5a6e4b915d92652792a189ab7b159fd615f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 106–158.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def Environment.transitivelyRequiredModules' (env : Environment) (modules : List Name) (verbose : Bool := false) :
    CoreM (NameMap NameSet) := do
  let N := env.header.moduleNames.size
  let mut c2m : NameMap (BitVec N) := {}
  let mut pushed : NameSet := {}
  let mut result : NameMap NameSet := {}
  for m in modules do
    if verbose then
      IO.println s!"Processing module {m}"
    let mut r : BitVec N := 0
    for n in env.header.moduleData[(env.header.moduleNames.idxOf? m).getD 0]!.constNames do
      if ! n.isInternal then
      -- This is messy: Mathlib is big enough that writing a recursive function causes a stack overflow.
      -- So we use an explicit stack instead. We visit each constant twice:
      -- once to record the constants transitively used by it,
      -- and again to record the modules which defined those constants.
      let mut stack : List (Name × Option NameSet) := [⟨n, none⟩]
      pushed := pushed.insert n
      while !stack.isEmpty do
        match stack with
        | [] => panic! "Stack is empty"
        | (c, used?) :: tail =>
          stack := tail
          match used? with
          | none =>
            if !c2m.contains c then
              let used := (← getConstInfo c).getUsedConstantsAsSet
              stack := ⟨c, some used⟩ :: stack
              for u in used do
                if !pushed.contains u then
                  stack := ⟨u, none⟩ :: stack
                  pushed := pushed.insert u
          | some used =>
            let usedModules : NameSet :=
              used.foldl (init := {}) (fun s u => if let some m := env.getModuleFor? u then s.insert m else s)
            let transitivelyUsed : BitVec N :=
              used.foldl (init := toBitVec usedModules) (fun s u => s ||| ((c2m.find? u).getD 0))
            c2m := c2m.insert c transitivelyUsed
      r := r ||| ((c2m.find? n).getD 0)
    result := result.insert m (toNameSet r)
  return result
where
  toBitVec {N : Nat} (s : NameSet) : BitVec N :=
    s.foldl (init := 0) (fun b n => b ||| BitVec.twoPow _ ((env.header.moduleNames.idxOf? n).getD 0))
  toNameSet {N : Nat} (b : BitVec N) : NameSet :=
    env.header.moduleNames.zipIdx.foldl (init := {}) (fun s (n, i) => if b.getLsbD i then s.insert n else s)

/--
Return the names of the modules in which constants used in the current file were defined.

Note that this will *not* account for tactics and syntax used in the file,
so the results may not suffice as imports.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RequiredModules/Variant9a8b34779d28b6c9373fcb88322d7003a7afbfbddc8bb3c0be6211a4d197e2e8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RequiredModules/Variant9a8b34779d28b6c9373fcb88322d7003a7afbfbddc8bb3c0be6211a4d197e2e8.lean#L106).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `26cfef4f6873418109a471d05c9d67276ba2497b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
