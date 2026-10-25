# sineQuaNon

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:004396c385d82b584a5684293943186a5b5d271c85bac6fd8d68db8b8faab458",
  "kind": "def",
  "lexical_name": "sineQuaNon",
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
  "slug": "sinequanon--e073053e528dd31ae6e5d945",
  "source": {
    "blob": "078961b9a4c5100949c193bdd043fe8e6eb43fb5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 197,
    "line": 158,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SineQuaNon/Variantc561375345abec099be0b50c50bbdd00f54c782237afa0f9bc204949efbc698e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e073053e528dd31ae6e5d94541f9e75d23676b5b5c025cbc297904bc0b68453a",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SineQuaNon/Variantc561375345abec099be0b50c50bbdd00f54c782237afa0f9bc204949efbc698e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:004396c385d82b584a5684293943186a5b5d271c85bac6fd8d68db8b8faab458`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 158–197.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
public partial def sineQuaNon (names : NameSet) (maxSuggestions : Nat) (depthFactor := 1.5) (frequencyWeight : Float := 0.01) :
    MetaM (Array Suggestion) := do
  let denyList := triggerDenyListExt.getState (← getEnv)
  let targets := names \ denyList
  let r ← go denyList targets
    (Std.TreeSet.ofList (← targets.toList.mapM (fun n => return (← frequencyScore n, n)))) #[] {}
  return r.map (fun (n, f) => { name := n, score := 1 / f })
where go (denyList : NameSet)(pastTriggers : NameSet) (triggerQueue : Std.TreeSet (Float × Name) compare)
    (acceptedTheorems : Array (Name × Float)) (queuedTheorems : Std.TreeSet (Float × Name) compare) : MetaM (Array (Name × Float)) := do
  if acceptedTheorems.size ≥ maxSuggestions then return acceptedTheorems else
  -- Is there a companion to `min?` that gives the minimum element along with the rest of the set?
  match triggerQueue.min? with
  | some (tf, t) => do
    let qf? := queuedTheorems.min?.map (·.1)
    if match qf? with | none => true | some qf => tf < qf then
      trace[sineQuaNon] m!"\
        acceptedTheorems: {acceptedTheorems}\n\
        pastTriggers: {pastTriggers.toList}\n\
        triggerQueue: {triggerQueue.toList}\n\
        queuedTheorems: {queuedTheorems.toList}"
      let theorems ← sineQuaNonTheorems t
      return ← go denyList pastTriggers (triggerQueue.erase (tf, t)) acceptedTheorems
        (theorems.foldl (init := queuedTheorems) fun acc (p, pf) => acc.insert (pf * tf, p))
  | none => pure ()
  match queuedTheorems.min? with
  | none => return acceptedTheorems
  | some (qf, q) =>
    let ci ← getConstInfo q
    let (pastTriggers', triggersQueue') ← (← ci.type.relevantConstants).foldlM (init := (pastTriggers, triggerQueue))
      fun ⟨pastTriggers', triggersQueue'⟩ n => do
        if pastTriggers'.contains n || denyList.contains n then
          pure ⟨pastTriggers', triggersQueue'⟩
        else
          pure <| ⟨pastTriggers'.insert n, triggersQueue'.insert (qf * depthFactor * (← frequencyScore n frequencyWeight), n)⟩
    go denyList pastTriggers' triggersQueue' (acceptedTheorems.push (q, qf)) (queuedTheorems.erase (qf, q))

end SineQuaNon

open SineQuaNon

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SineQuaNon/Variantc561375345abec099be0b50c50bbdd00f54c782237afa0f9bc204949efbc698e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SineQuaNon/Variantc561375345abec099be0b50c50bbdd00f54c782237afa0f9bc204949efbc698e.lean#L158).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `078961b9a4c5100949c193bdd043fe8e6eb43fb5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
