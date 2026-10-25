# deprecatedHashMap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:30b4e510dec168f5b863d692975f096dc047ea90a8728ba17f9fa853dcb89c85",
  "kind": "def",
  "lexical_name": "deprecatedHashMap",
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
  "slug": "deprecatedhashmap--4949b09c4c9b19532c611bd1",
  "source": {
    "blob": "a919edf350e4c178bff0d205153e11355a32ab00",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 164,
    "line": 133,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FindDeprecations/Variant71155d79f364d513551484c2dd8982734a08cdf033478351e421d294a6fa9e4b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4949b09c4c9b19532c611bd15a6e962bc864ddb6d839b036a44680743cf12b17",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FindDeprecations/Variant71155d79f364d513551484c2dd8982734a08cdf033478351e421d294a6fa9e4b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:30b4e510dec168f5b863d692975f096dc047ea90a8728ba17f9fa853dcb89c85`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 133–164.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def deprecatedHashMap (oldDate newDate : String) :
    CommandElabM (Std.HashMap (Name × String) (Array (Name × Lean.Syntax.Range))) := do
  let mut fin := ∅
  --let searchPath ← getSrcSearchPath
  for (nm, _) in (← getEnv).constants.map₁ do
    if let some ⟨modName, decl, rgStart, rgStop, since⟩ ← getDeprecatedInfo nm false
    then
      unless repos.contains modName.getRoot do continue
      if !(oldDate ≤ since && since ≤ newDate) then
        continue
      -- Ideally, `lean` would be computed by `← findLean (← getSrcSearchPath) modName`
      -- However, while this works locally, CI throws the error ` unknown module prefix 'Mathlib'`
      let lean := (modName.components.foldl (init := "")
        fun a b => (a.push System.FilePath.pathSeparator) ++ b.toString) ++ ".lean" |>.drop 1
          |>.copy
      --let lean ← findLean searchPath modName
      let file ← IO.FS.readFile lean
      let fm := FileMap.ofString file
      let rg : Lean.Syntax.Range := ⟨fm.ofPosition rgStart, fm.ofPosition rgStop⟩
      fin := fin.alter (modName, lean) fun a =>
        (a.getD #[]).binInsert (·.2.1 < ·.2.1) (decl, rg)
  return fin

/--
`removeRanges file rgs` removes from the string `file` the substrings whose ranges are in the array
`rgs`.

*Notes*.
* The command makes the assumption that `rgs` is *sorted*.
* The command removes all consecutive whitespace following the end of each range.
-/
public -- for use in unit tests, but perhaps useful more broadly
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FindDeprecations/Variant71155d79f364d513551484c2dd8982734a08cdf033478351e421d294a6fa9e4b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FindDeprecations/Variant71155d79f364d513551484c2dd8982734a08cdf033478351e421d294a6fa9e4b.lean#L133).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a919edf350e4c178bff0d205153e11355a32ab00` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
