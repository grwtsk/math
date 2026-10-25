# definitionQuote

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:03f13031c1187f2bd2c86f1937a891c59399495f0ae2fc5e852bc71b3c7b93db",
  "kind": "def",
  "lexical_name": "definitionQuote",
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
  "slug": "definitionquote--4fdd1d68986d21eaa55876cb",
  "source": {
    "blob": "075a2784c0549f2eac4414e207978978b7b9eb54",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 42,
    "line": 11,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/StructureFieldMetadataProbe/Variantb52b651f31f740466a5b6a278fd22debefd3a2b96d57733e6cbafcacbf860faf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4fdd1d68986d21eaa55876cb41b4e93b9b459770831e3a29d30add8a56e49df3",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/StructureFieldMetadataProbe/Variantb52b651f31f740466a5b6a278fd22debefd3a2b96d57733e6cbafcacbf860faf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:03f13031c1187f2bd2c86f1937a891c59399495f0ae2fc5e852bc71b3c7b93db`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 11–42.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def definitionQuote (out : System.FilePath) (index : Nat) (n : Name) : CoreM Json := do
  let env ← getEnv
  let some ci := env.find? n | throwError "FIELD_PROBE_DEFINITION_UNAVAILABLE"
  let .defnInfo dv := ci | throwError "FIELD_PROBE_DEFINITION_VARIANT_REQUIRED"
  liftM <| LeanImportedContracts.guardConstant ci
  if !env.isImportedConst n then throwError "FIELD_PROBE_IMPORTED_DEFINITION_REQUIRED"
  let ti ← liftM <| LeanImportedContracts.artifact out index "type" dv.type
  let vi ← liftM <| LeanImportedContracts.artifact out index "value" dv.value
  let metadata ← IO.ofExcept (LeanImportedContracts.fullMetadata ci ti vi)
  let axioms ← collectAxioms n
  if axioms.size > 64 then throwError "FIELD_PROBE_AXIOM_LIMIT"
  liftM <| LeanImportedContracts.guardNames axioms
  let some repeated := (← getEnv).find? n | throwError "FIELD_PROBE_REPEAT_UNAVAILABLE"
  if !LeanImportedContracts.sameConstantInfo ci repeated then throwError "FIELD_PROBE_FULL_REPEAT_DISAGREEMENT"
  let tr := dv.type.getUsedConstants.qsort Name.lt
  let vr := dv.value.getUsedConstants.qsort Name.lt
  if tr.size > 4096 || vr.size > 4096 then throwError "FIELD_PROBE_REFERENCE_LIMIT"
  liftM <| LeanImportedContracts.guardNames (tr ++ vr)
  return obj [("name", nameJson n), ("full_constantinfo", metadata),
    ("module_binding", ← IO.ofExcept (LeanImportedContracts.moduleBinding env n)),
    ("isImportedConst", toJson (env.isImportedConst n)), ("unsafe", toJson ci.isUnsafe),
    ("partial_definition", toJson ci.isPartial), ("type_constant_references", toJson (tr.map nameJson)),
    ("value_constant_references", toJson (vr.map nameJson)), ("cached_axioms", toJson (axioms.map nameJson)),
    ("contains_sorry_ax", toJson (axioms.contains ``sorryAx)),
    ("axiom_scope", str "CACHED_IMPORTED_API_NOT_FRESH_KERNEL_OR_CONSUMER_REPLAY"),
    ("repeat_method", str "EXPR_EQUAL_TYPE_VALUE_AND_ALL_REMAINING_VARIANT_FIELDS"),
    ("full_repeat_same", toJson (LeanImportedContracts.sameConstantInfo ci repeated)),
    ("tactic_execution", str "NOT_RUN"), ("semantic_source_owner", str "UNAVAILABLE"),
    ("kernel_admission", str "NOT_CLAIMED")]

/-- Probe exactly the authored fixture structures in a distinct current context.
Output creation and all inherited Name, metadata, DAG and stream bounds apply. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/StructureFieldMetadataProbe/Variantb52b651f31f740466a5b6a278fd22debefd3a2b96d57733e6cbafcacbf860faf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/StructureFieldMetadataProbe/Variantb52b651f31f740466a5b6a278fd22debefd3a2b96d57733e6cbafcacbf860faf.lean#L11).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `075a2784c0549f2eac4414e207978978b7b9eb54` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
