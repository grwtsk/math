# family

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8cb4ec93647ee341bc8e700347fd98c83ebd454918730b12179d0b295fcf5daa",
  "kind": "def",
  "lexical_name": "family",
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
  "slug": "family--c0480897eb9caab3029aaa8f",
  "source": {
    "blob": "f6b8b0447e27f1a429a4735eafb205f2dae53623",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 33,
    "line": 20,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/A0313891dbc0adce2/Variant77dad81a0cdffbf6d2523774b629487016dbe096e62c446dab9f5345f18d5b0f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c0480897eb9caab3029aaa8f9d781831ca46543340bb74041ecb04e88b93b277",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/A0313891dbc0adce2/Variant77dad81a0cdffbf6d2523774b629487016dbe096e62c446dab9f5345f18d5b0f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8cb4ec93647ee341bc8e700347fd98c83ebd454918730b12179d0b295fcf5daa`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 20–33.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def family : RelationKind → RelationFamily
  | .sameConcept | .aliasOf | .supersedes | .deprecatedBy => .identity
  | .instanceOf | .specializes | .generalizes | .substructureOf | .memberOfFamily => .taxonomic
  | .assumes | .implies | .equivalentTo | .contradicts | .refutes | .proves | .discharges => .logical
  | .constructs | .induces | .restricts | .extends | .completes | .quotients | .dualizes |
      .generatedUnder => .constructive
  | .formalizes | .implements | .represents | .encodes | .decodes | .renders | .approximates | .reconstructs => .representational
  | .contains | .incidentTo | .boundaryOf | .fiberOf | .sectionOf | .projectionOf => .structural
  | .transports | .preserves | .evolvesTo | .foldsTo | .surgeriesTo | .refines => .dynamic
  | .similarTo | .analogousTo | .opposedTo | .contrastsWith | .explains | .motivates => .rhetorical

end RelationKind

end Mathematics.Concept
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/A0313891dbc0adce2/Variant77dad81a0cdffbf6d2523774b629487016dbe096e62c446dab9f5345f18d5b0f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/A0313891dbc0adce2/Variant77dad81a0cdffbf6d2523774b629487016dbe096e62c446dab9f5345f18d5b0f.lean#L20).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f6b8b0447e27f1a429a4735eafb205f2dae53623` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
