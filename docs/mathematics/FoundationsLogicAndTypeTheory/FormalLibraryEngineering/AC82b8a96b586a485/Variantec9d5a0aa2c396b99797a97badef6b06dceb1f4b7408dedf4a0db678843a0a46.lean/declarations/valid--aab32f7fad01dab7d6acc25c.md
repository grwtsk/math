# Valid

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:43d488b077aa1f41b9acdf168b48804f2294b70a32400f481acf3f7a41bcfb93",
  "kind": "def",
  "lexical_name": "Valid",
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
  "slug": "valid--aab32f7fad01dab7d6acc25c",
  "source": {
    "blob": "3cefc4dec559263b75313d5c0c126d2cafe3482e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 44,
    "line": 22,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AC82b8a96b586a485/Variantec9d5a0aa2c396b99797a97badef6b06dceb1f4b7408dedf4a0db678843a0a46.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:aab32f7fad01dab7d6acc25c0ea39f6cb767dd15d5405e605a70c45ff7f47952",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AC82b8a96b586a485/Variantec9d5a0aa2c396b99797a97badef6b06dceb1f4b7408dedf4a0db678843a0a46.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:43d488b077aa1f41b9acdf168b48804f2294b70a32400f481acf3f7a41bcfb93`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 22–44.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Valid (snapshot : Snapshot) (ledger : Ledger) : Prop :=
  ledger.snapshotId = snapshot.id ∧
  snapshot.UniqueEntityIds ∧
  snapshot.UniqueNames ∧
  snapshot.GeneratedParentsPresent ∧
  ledger.UniqueConceptIds ∧
  ledger.UniqueRelationIds ∧
  ledger.UniqueRepresentationIds ∧
  ledger.RelationsResolve ∧
  ledger.RepresentationsResolve ∧
  ledger.RuntimeBindingsResolve ∧
  ledger.PublicAssignmentsTotal snapshot ∧
  ledger.AssignmentsResolveEntities snapshot ∧
  ledger.DispositionsResolve snapshot ∧
  ledger.ReferencesResolve ∧
  ledger.AssignmentDigestsFresh snapshot ∧
  ledger.BoundariesAcceptAssignments snapshot ∧
  ledger.GeneratedParentAgreement snapshot ∧
  ledger.taxonomy.ValidFor ledger.concepts

end Ledger

end MathDiscovery.Concept
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AC82b8a96b586a485/Variantec9d5a0aa2c396b99797a97badef6b06dceb1f4b7408dedf4a0db678843a0a46.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AC82b8a96b586a485/Variantec9d5a0aa2c396b99797a97badef6b06dceb1f4b7408dedf4a0db678843a0a46.lean#L22).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3cefc4dec559263b75313d5c0c126d2cafe3482e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
