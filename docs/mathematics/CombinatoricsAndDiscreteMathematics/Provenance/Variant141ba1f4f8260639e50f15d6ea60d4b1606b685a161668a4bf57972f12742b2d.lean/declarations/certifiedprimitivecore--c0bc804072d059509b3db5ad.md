# CertifiedPrimitiveCore

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:38287ac459f0c73e6f8aa0d72e865cc116a81dd990f44b21335eaa302e93b47d",
  "kind": "structure",
  "lexical_name": "CertifiedPrimitiveCore",
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
  "slug": "certifiedprimitivecore--c0bc804072d059509b3db5ad",
  "source": {
    "blob": "88440341b120a33f48c6f28a44de192cbf663761",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 40,
    "line": 17,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Provenance/Variant141ba1f4f8260639e50f15d6ea60d4b1606b685a161668a4bf57972f12742b2d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c0bc804072d059509b3db5ad5fc0366cbb4d5cd9e3073f827758655b2ea2aba0",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Provenance/Variant141ba1f4f8260639e50f15d6ea60d4b1606b685a161668a4bf57972f12742b2d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:38287ac459f0c73e6f8aa0d72e865cc116a81dd990f44b21335eaa302e93b47d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 17–40.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure CertifiedPrimitiveCore
    {Partial : Type uPartial}
    {Full : Type uFull}
    {Constraint : Type uConstraint}
    [DecidableEq Constraint]
    (semantics :
      Semantics Partial Full Constraint)
    (registry : Finset Constraint)
    (partial : Partial)
    (SnapshotId : Type uSnapshot)
    (RegistryRevision : Type uRevision)
    (CheckerId : Type uChecker)
    (CheckerVersion : Type uVersion)
    (EvidenceId : Type uEvidence)
    [DecidableEq EvidenceId] where
  mathematicalCore :
    PrimitiveCore semantics registry partial
  snapshot : SnapshotId
  constraintRegistryRevision :
    RegistryRevision
  checker : CheckerId
  checkerVersion : CheckerVersion
  evidenceRefs : Finset EvidenceId

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Provenance/Variant141ba1f4f8260639e50f15d6ea60d4b1606b685a161668a4bf57972f12742b2d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Provenance/Variant141ba1f4f8260639e50f15d6ea60d4b1606b685a161668a4bf57972f12742b2d.lean#L17).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `88440341b120a33f48c6f28a44de192cbf663761` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
