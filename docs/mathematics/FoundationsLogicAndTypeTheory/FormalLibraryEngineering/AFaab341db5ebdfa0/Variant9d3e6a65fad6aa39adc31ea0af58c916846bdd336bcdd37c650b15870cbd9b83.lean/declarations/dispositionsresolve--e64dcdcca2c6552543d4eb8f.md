# DispositionsResolve

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a36428aae2567c69f0a614c795657cb762299e92f2b6ceba064ffc2178cb873f",
  "kind": "def",
  "lexical_name": "DispositionsResolve",
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
  "slug": "dispositionsresolve--e64dcdcca2c6552543d4eb8f",
  "source": {
    "blob": "540cedfabb2cb5f3adefbfffa937d4eb8a81d2be",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 30,
    "line": 17,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AFaab341db5ebdfa0/Variant9d3e6a65fad6aa39adc31ea0af58c916846bdd336bcdd37c650b15870cbd9b83.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e64dcdcca2c6552543d4eb8f8b970b0a3dbb772dcbbb5dd8aefc0c2c0e5f9fbd",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AFaab341db5ebdfa0/Variant9d3e6a65fad6aa39adc31ea0af58c916846bdd336bcdd37c650b15870cbd9b83.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a36428aae2567c69f0a614c795657cb762299e92f2b6ceba064ffc2178cb873f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 17–30.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def DispositionsResolve
    (snapshot : Snapshot) (ledger : Ledger) : Prop :=
  ∀ assignment ∈ ledger.assignments,
    match assignment.disposition with
    | .ownedBy conceptId => conceptId ∈ ledger.concepts.map (·.id)
    | .importedExternal conceptId => conceptId ∈ ledger.concepts.map (·.id)
    | .generatedUnder conceptId parentEntityId =>
        conceptId ∈ ledger.concepts.map (·.id) ∧
          parentEntityId ∈ snapshot.entities.map (·.id)
    | .explicitInternal _ => True

end Ledger

end MathDiscovery.Concept
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AFaab341db5ebdfa0/Variant9d3e6a65fad6aa39adc31ea0af58c916846bdd336bcdd37c650b15870cbd9b83.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AFaab341db5ebdfa0/Variant9d3e6a65fad6aa39adc31ea0af58c916846bdd336bcdd37c650b15870cbd9b83.lean#L17).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `540cedfabb2cb5f3adefbfffa937d4eb8a81d2be` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
