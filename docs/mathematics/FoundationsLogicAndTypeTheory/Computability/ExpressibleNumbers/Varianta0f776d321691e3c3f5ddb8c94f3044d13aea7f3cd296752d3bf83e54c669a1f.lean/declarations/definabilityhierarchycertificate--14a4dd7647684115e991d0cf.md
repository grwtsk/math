# DefinabilityHierarchyCertificate

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:57a4ffd725f07b5f2934c21aa3d01a3a4c679df09dc9cdb87a1dfc52b80e26fc",
  "kind": "structure",
  "lexical_name": "DefinabilityHierarchyCertificate",
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
  "slug": "definabilityhierarchycertificate--14a4dd7647684115e991d0cf",
  "source": {
    "blob": "a0b2cb1ee36adbc67b70f73bf96fbb7e0243e01f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 29,
    "line": 20,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/Computability/ExpressibleNumbers/Varianta0f776d321691e3c3f5ddb8c94f3044d13aea7f3cd296752d3bf83e54c669a1f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:14a4dd7647684115e991d0cfccfb4cc35944f2f8d937d551cc450411f0b9d19f",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/Computability/ExpressibleNumbers/Varianta0f776d321691e3c3f5ddb8c94f3044d13aea7f3cd296752d3bf83e54c669a1f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:57a4ffd725f07b5f2934c21aa3d01a3a4c679df09dc9cdb87a1dfc52b80e26fc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 20–29.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure DefinabilityHierarchyCertificate where
  computableToArithmetical : Prop
  computableToArithmeticalProof : computableToArithmetical
  arithmeticalToAnalytical : Prop
  arithmeticalToAnalyticalProof : arithmeticalToAnalytical
  strictComputableArithmetical : Prop
  strictComputableArithmeticalProof : strictComputableArithmetical
  strictArithmeticalAnalytical : Prop
  strictArithmeticalAnalyticalProof : strictArithmeticalAnalytical

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/Computability/ExpressibleNumbers/Varianta0f776d321691e3c3f5ddb8c94f3044d13aea7f3cd296752d3bf83e54c669a1f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/Computability/ExpressibleNumbers/Varianta0f776d321691e3c3f5ddb8c94f3044d13aea7f3cd296752d3bf83e54c669a1f.lean#L20).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a0b2cb1ee36adbc67b70f73bf96fbb7e0243e01f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
