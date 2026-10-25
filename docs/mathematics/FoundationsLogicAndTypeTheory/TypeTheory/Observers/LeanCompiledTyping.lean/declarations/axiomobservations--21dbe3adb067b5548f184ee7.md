# axiomObservations

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:71dd858628281dcb645a3b3eaec4440dcaa4716ba262af6dcf4610c24383e963",
  "kind": "def",
  "lexical_name": "axiomObservations",
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
  "slug": "axiomobservations--21dbe3adb067b5548f184ee7",
  "source": {
    "blob": "68304a3532012629fcdf26bf5792bed658efccb6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 309,
    "line": 287,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/TypeTheory/Observers/LeanCompiledTyping.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:21dbe3adb067b5548f184ee7339abcc627cc9fca2f8b6df038a72fdc16814b21",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/TypeTheory/Observers/LeanCompiledTyping.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:71dd858628281dcb645a3b3eaec4440dcaa4716ba262af6dcf4610c24383e963`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 287–309.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def axiomObservations (module : Name) (dir : System.FilePath) (env : Environment) (graph : AxiomGraph) : IO Unit := do
  let h ← IO.FS.Handle.mk (dir / "observations.jsonl") .append
  let selected := env.const2ModIdx.toArray.filterMap fun (name, idx) =>
    if env.header.moduleNames[idx.toNat]! == module && (env.find? name).isSome then some name else none
  let selected := selected.qsort Name.lt
  for name in selected do
    let (axioms, unavailableConstants) := observedAxioms graph name
    emit h <| obj [("schema_version", nat 1), ("record_type", str "CompiledAxiomObservation"),
      ("name", str name.toString), ("defining_module", str module.toString),
      ("axioms", names axioms), ("contains_sorry_ax", toJson (axioms.contains ``sorryAx)),
      ("axiom_observation_method", str "PRIVATE_COMPILED_CONSTANT_GRAPH_CACHED_EDGES"),
      ("axiom_closure_status", str (if unavailableConstants.isEmpty then "KNOWN" else "KNOWN_PARTIAL")),
      ("unavailable_dependency_constants", names unavailableConstants),
      ("proof_acceptance", str "NOT_CLAIMED")]
    h.flush
  emit h <| obj [("record_type", str "CompiledAxiomModuleObservation"),
    ("module", str module.toString), ("declarations_total", nat selected.size),
    ("independent_replay", str "NOT_RUN")]
  h.flush

/- A separately selected profile: Lean's standard collector can use the axiom
cache exported in imported oleans. This requires loaded extensions and does not
reconstruct the full dependency graph or certify its availability. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/TypeTheory/Observers/LeanCompiledTyping.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/TypeTheory/Observers/LeanCompiledTyping.lean#L287).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `68304a3532012629fcdf26bf5792bed658efccb6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
