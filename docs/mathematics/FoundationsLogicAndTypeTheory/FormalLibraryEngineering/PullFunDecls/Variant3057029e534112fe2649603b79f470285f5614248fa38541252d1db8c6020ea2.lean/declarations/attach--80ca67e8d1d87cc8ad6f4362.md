# attach

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:52cbb7a9732ab53f69abf5ee317b357eca5ec732df81c2b11c8b134154691a38",
  "kind": "def",
  "lexical_name": "attach",
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
  "slug": "attach--80ca67e8d1d87cc8ad6f4362",
  "source": {
    "blob": "9a761dd28b718b7fcb7103088b7348ee05f78d48",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 121,
    "line": 95,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PullFunDecls/Variant3057029e534112fe2649603b79f470285f5614248fa38541252d1db8c6020ea2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:80ca67e8d1d87cc8ad6f43624fc14a7305ef213e58dd788c4e3bf1e8f3c77087",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PullFunDecls/Variant3057029e534112fe2649603b79f470285f5614248fa38541252d1db8c6020ea2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:52cbb7a9732ab53f69abf5ee317b357eca5ec732df81c2b11c8b134154691a38`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 95–121.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def attach (ps : Array ToPull) (k : Code .pure) : Code .pure := Id.run do
  let visited := ps.map fun _ => false
  let (_, (k, _)) := go |>.run (k, visited)
  return k
where
  go : StateM (Code .pure × Array Bool) Unit := do
    for i in *...ps.size do
      visit i

  visited (i : Nat) : StateM (Code .pure × Array Bool) Bool :=
    return (← get).2[i]!

  visit (i : Nat) : StateM (Code .pure × Array Bool) Unit := do
    unless (← visited i) do
      modify fun (k, visited) => (k, visited.set! i true)
      let pi := ps[i]!
      for h : j in *...ps.size do
        unless (← visited j) do
          let pj := ps[j]
          if pj.used.contains pi.decl.fvarId then
            visit j
      modify fun (k, visited) => (pi.attach k, visited)

/--
Extract from the state any local function declarations that depends on the given
free variable, **and** attach to code `k`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PullFunDecls/Variant3057029e534112fe2649603b79f470285f5614248fa38541252d1db8c6020ea2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PullFunDecls/Variant3057029e534112fe2649603b79f470285f5614248fa38541252d1db8c6020ea2.lean#L95).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9a761dd28b718b7fcb7103088b7348ee05f78d48` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
