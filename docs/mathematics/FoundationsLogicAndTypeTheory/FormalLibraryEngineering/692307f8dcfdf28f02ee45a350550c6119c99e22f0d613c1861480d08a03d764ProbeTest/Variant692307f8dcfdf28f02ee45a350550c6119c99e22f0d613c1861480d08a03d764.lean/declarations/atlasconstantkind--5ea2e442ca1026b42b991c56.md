# atlasConstantKind

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c34b3f6a2b313507167954e710c6e445002bf3f80f2a22dd73da3e1c5f0aaa5a",
  "kind": "def",
  "lexical_name": "atlasConstantKind",
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
  "slug": "atlasconstantkind--5ea2e442ca1026b42b991c56",
  "source": {
    "blob": "f645f7d9ce93b121d9f6111053d4282e9fd5b489",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 66,
    "line": 23,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/692307f8dcfdf28f02ee45a350550c6119c99e22f0d613c1861480d08a03d764ProbeTest/Variant692307f8dcfdf28f02ee45a350550c6119c99e22f0d613c1861480d08a03d764.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5ea2e442ca1026b42b991c56520417a6eac9b86c417f3e35d3178b0d2ce91314",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/692307f8dcfdf28f02ee45a350550c6119c99e22f0d613c1861480d08a03d764ProbeTest/Variant692307f8dcfdf28f02ee45a350550c6119c99e22f0d613c1861480d08a03d764.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c34b3f6a2b313507167954e710c6e445002bf3f80f2a22dd73da3e1c5f0aaa5a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 23–66.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def atlasConstantKind : ConstantInfo → String
  | .axiomInfo _ => "axiom"
  | .defnInfo _ => "definition"
  | .thmInfo _ => "theorem"
  | .opaqueInfo _ => "opaque"
  | .quotInfo _ => "quotient"
  | .inductInfo _ => "inductive"
  | .ctorInfo _ => "constructor"
  | .recInfo _ => "recursor"
run_cmd do
  let env ← getEnv
  for (name, info) in env.constants.toList do
    let some index := env.getModuleIdxFor? name | continue
    let owner := env.header.moduleNames[index.toNat]!
    unless owner.toString == "FormalResearch" || owner.toString.startsWith "FormalResearch." do
      continue
    let statement ← liftTermElabM do
      let rendered ← PrettyPrinter.ppUsing info.type fun expr => do
        let printedTerm ← PrettyPrinter.delab expr
        if atlasHasOmission printedTerm.raw then
          throwError "Atlas inventory type was truncated: {name}"
        pure printedTerm
      return rendered.pretty 100000
    let axioms ← collectAxioms name
    let levels := info.levelParams.zipIdx.map fun (_, index) =>
      Level.param (.str .anonymous ("u" ++ toString index))
    let canonicalType := atlasCanonicalType (info.type.instantiateLevelParams info.levelParams levels)
    let value := match info with
      | .defnInfo definition => some definition.value
      | .opaqueInfo definition => some definition.value
      | _ => none
    let canonicalValue := value.map fun body => reprStr
      (atlasCanonicalType (body.instantiateLevelParams info.levelParams levels))
    let payload := Json.mkObj [
      ("name", toJson name.toString),
      ("user_name", toJson (privateToUserName name).toString),
      ("module", toJson owner.toString),
      ("kind", toJson (atlasConstantKind info)),
      ("level_params", toJson (info.levelParams.map Name.toString)),
      ("type", toJson statement),
      ("type_expr", toJson (reprStr canonicalType)),
      ("value_expr", toJson canonicalValue),
      ("axioms", toJson (axioms.map Name.toString))]
    liftIO <| IO.println ("FORMAL_ATLAS_DECLARATION=" ++ payload.compress)
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/692307f8dcfdf28f02ee45a350550c6119c99e22f0d613c1861480d08a03d764ProbeTest/Variant692307f8dcfdf28f02ee45a350550c6119c99e22f0d613c1861480d08a03d764.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/692307f8dcfdf28f02ee45a350550c6119c99e22f0d613c1861480d08a03d764ProbeTest/Variant692307f8dcfdf28f02ee45a350550c6119c99e22f0d613c1861480d08a03d764.lean#L23).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f645f7d9ce93b121d9f6111053d4282e9fd5b489` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
