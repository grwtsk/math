# Resolution

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:589566daae62dafa82193bf975319faff633815316af272eaebe61ae567bdcd2",
  "kind": "inductive",
  "lexical_name": "Resolution",
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
  "slug": "resolution--96ba61ca46a7e25e7a3fbfe7",
  "source": {
    "blob": "1554b4b24b81ef8f05da33096ea28fac856e6a09",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 100,
    "line": 92,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/Assignment/Variant169ccb670f2736678f723ea5cd54353bc2d563c1fc68d4747070e8ed6cd7da66.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:96ba61ca46a7e25e7a3fbfe718ce2184eabb4d3de0aa89c7054a054cf25a67a8",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/Assignment/Variant169ccb670f2736678f723ea5cd54353bc2d563c1fc68d4747070e8ed6cd7da66.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `inductive` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:589566daae62dafa82193bf975319faff633815316af272eaebe61ae567bdcd2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 92–100.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
inductive Resolution
  | certifiedAssignment (assignment : Assignment)
  | certifiedNewConcept (concept : Record) (assignment : Assignment)
  | certifiedSplit (source : EntityId) (successors : List Assignment)
  | certifiedAlias (aliasId target : ConceptId) (certificateId : CertificateId)
  | certifiedSecondaryReference (entity : EntityId) (reference : Reference)
  | certifiedRejection (entity : EntityId) (rationaleId : RationaleId)

end Mathematics.Concept
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/FoundationsLogicAndTypeTheory/Assignment/Variant169ccb670f2736678f723ea5cd54353bc2d563c1fc68d4747070e8ed6cd7da66.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/Assignment/Variant169ccb670f2736678f723ea5cd54353bc2d563c1fc68d4747070e8ed6cd7da66.lean#L92).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1554b4b24b81ef8f05da33096ea28fac856e6a09` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
