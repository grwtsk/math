# stateDependencies

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:810a8e5c96197512991dfb20e1523f5ea1c8ed522be107e6d041623c0feac558",
  "kind": "def",
  "lexical_name": "stateDependencies",
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
  "slug": "statedependencies--a08a11d95e58adf867103a33",
  "source": {
    "blob": "4b4597a6e57f81205bf10775d267679832b3c0c4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 79,
    "line": 35,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bee89e566bb6789071274f30c98e2be2f388ed84d833060b9323b8a294afe152DependencyProbe/Variantfff0abd26a8eb265caed612cdd53549f9ab027c23e226606d2f1bdf5f791f8c6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a08a11d95e58adf867103a335292da97d3295cca37cfb76dfd6c7661d107a3f2",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bee89e566bb6789071274f30c98e2be2f388ed84d833060b9323b8a294afe152DependencyProbe/Variantfff0abd26a8eb265caed612cdd53549f9ab027c23e226606d2f1bdf5f791f8c6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:810a8e5c96197512991dfb20e1523f5ea1c8ed522be107e6d041623c0feac558`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 35–79.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def stateDependencies (info : ConstantInfo) : Array Name := Id.run do
  let mut names := info.getUsedConstantsAsSet
  match info with
  | .inductInfo i =>
      for n in i.all ++ i.ctors do names := names.insert n
  | .ctorInfo c => names := names.insert c.induct
  | .recInfo r =>
      for n in r.all do names := names.insert n
      for rule in r.rules do
        names := names.insert rule.ctor
        for n in rule.rhs.getUsedConstants do names := names.insert n
  | _ => pure ()
  return names.toArray.qsort Name.lt
run_cmd do
  let env ← getEnv
  let roots : Array Name := #[`FormalResearch.MathematicalTooling.Coverage.forall_on_of_finite_cover_and_tail]
  let mut pending := roots
  let mut seen : NameSet := {}
  while !pending.isEmpty do
    let name := pending.back!
    pending := pending.pop
    if seen.contains name then continue
    seen := seen.insert name
    let some info := env.checked.get.find? name | throwError "missing dependency: {name}"
    let dependencies := stateDependencies info
    pending := pending ++ dependencies
    let levels := info.levelParams.zipIdx.map fun (_, i) => Level.param (.str .anonymous ("u" ++ toString i))
    let normalize := fun e => reprStr (stateCanonicalExpr (e.instantiateLevelParams info.levelParams levels))
    let owner := match env.getModuleIdxFor? name with
      | some i => env.header.moduleNames[i.toNat]!.toString
      | none => "Lean.Kernel"
    let statement ← if roots.contains name then
      liftTermElabM do return (← PrettyPrinter.ppExpr info.type).pretty 100000
      else pure ""
    let payload := Json.mkObj [
      ("name", toJson name.toString), ("module", toJson owner),
      ("kind", toJson (stateKind info)), ("type_expr", toJson (normalize info.type)),
      ("body_expr", toJson ((info.value? (allowOpaque := true)).map normalize)),
      ("statement", toJson statement),
      ("dependencies", toJson (dependencies.map Name.toString))]
    liftIO <| IO.println ("FORMAL_STATE_DECLARATION=" ++ payload.compress)
  for root in roots do
    let axioms ← collectAxioms root
    liftIO <| IO.println ("FORMAL_STATE_AXIOMS=" ++ (Json.mkObj [
      ("name", toJson root.toString), ("axioms", toJson (axioms.map Name.toString))]).compress)
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bee89e566bb6789071274f30c98e2be2f388ed84d833060b9323b8a294afe152DependencyProbe/Variantfff0abd26a8eb265caed612cdd53549f9ab027c23e226606d2f1bdf5f791f8c6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bee89e566bb6789071274f30c98e2be2f388ed84d833060b9323b8a294afe152DependencyProbe/Variantfff0abd26a8eb265caed612cdd53549f9ab027c23e226606d2f1bdf5f791f8c6.lean#L35).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4b4597a6e57f81205bf10775d267679832b3c0c4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
