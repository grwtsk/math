# exportedAxiomObservations

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:714e2e4edceb8a42990c3a6b4ab9ac1cdbce86ed8b20c3644dd79dd7ae5793c8",
  "kind": "def",
  "lexical_name": "exportedAxiomObservations",
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
  "slug": "exportedaxiomobservations--eca5d2653f2ea5beffa254fb",
  "source": {
    "blob": "68304a3532012629fcdf26bf5792bed658efccb6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 337,
    "line": 317,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/TypeTheory/Observers/LeanCompiledTyping.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:eca5d2653f2ea5beffa254fb4e97b0535b07bca74abafd8afe568d386f17db0d",
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

Occurrence: `declaration:714e2e4edceb8a42990c3a6b4ab9ac1cdbce86ed8b20c3644dd79dd7ae5793c8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 317–337.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def exportedAxiomObservations (module : Name) (dir : System.FilePath) (env : Environment) : IO Unit := do
  let h ← IO.FS.Handle.mk (dir / "observations.jsonl") .append
  let selected := env.const2ModIdx.toArray.filterMap fun (name, idx) =>
    if env.header.moduleNames[idx.toNat]! == module && (env.find? name).isSome then some name else none
  for name in selected.qsort Name.lt do
    let axioms ← guardedStandardAxioms env name
    emit h <| obj [("schema_version", nat 1), ("record_type", str "CompiledAxiomObservation"),
      ("name", str name.toString), ("defining_module", str module.toString),
      ("axioms", names (axioms.qsort Name.lt)), ("contains_sorry_ax", toJson (axioms.contains ``sorryAx)),
      ("axiom_observation_method", str "LEAN_4_33_STANDARD_COLLECTOR_EXPORTED_AXIOM_CACHE"),
      ("axiom_closure_status", str "STANDARD_COLLECTOR_REPORT_DEPENDENCY_COMPLETENESS_UNAVAILABLE"),
      ("unavailable_dependency_constants", Json.null),
      ("proof_acceptance", str "NOT_CLAIMED")]
    h.flush
  emit h <| obj [("record_type", str "CompiledAxiomModuleObservation"),
    ("module", str module.toString), ("declarations_total", nat selected.size),
    ("axiom_observation_method", str "LEAN_4_33_STANDARD_COLLECTOR_EXPORTED_AXIOM_CACHE"),
    ("dependency_completeness", str "UNAVAILABLE"), ("independent_replay", str "NOT_RUN")]
  h.flush
end LeanCompiledTyping

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/TypeTheory/Observers/LeanCompiledTyping.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/TypeTheory/Observers/LeanCompiledTyping.lean#L317).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `68304a3532012629fcdf26bf5792bed658efccb6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
