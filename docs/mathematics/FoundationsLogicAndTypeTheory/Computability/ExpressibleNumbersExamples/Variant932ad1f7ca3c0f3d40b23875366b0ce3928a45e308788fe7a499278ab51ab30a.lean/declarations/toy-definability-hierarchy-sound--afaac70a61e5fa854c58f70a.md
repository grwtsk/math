# toy_definability_hierarchy_sound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9fc507e4-6c18-2737-0a1e-0b6f79b1f0a5",
  "kind": "theorem",
  "lexical_name": "toy_definability_hierarchy_sound",
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
  "slug": "toy-definability-hierarchy-sound--afaac70a61e5fa854c58f70a",
  "source": {
    "blob": "6c96277cacbed5f999ee2d332f6ac33a222827c5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 54,
    "line": 48,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/Computability/ExpressibleNumbersExamples/Variant932ad1f7ca3c0f3d40b23875366b0ce3928a45e308788fe7a499278ab51ab30a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:afaac70a61e5fa854c58f70abb8266717c2ae6d019f4f6da80b94f2016a7c71e",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/Computability/ExpressibleNumbersExamples/Variant932ad1f7ca3c0f3d40b23875366b0ce3928a45e308788fe7a499278ab51ab30a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9fc507e4-6c18-2737-0a1e-0b6f79b1f0a5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 48–54.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem toy_definability_hierarchy_sound :
    toyDefinabilityHierarchyCertificate.computableToArithmetical ∧
    toyDefinabilityHierarchyCertificate.arithmeticalToAnalytical ∧
    toyDefinabilityHierarchyCertificate.strictComputableArithmetical ∧
    toyDefinabilityHierarchyCertificate.strictArithmeticalAnalytical :=
  definability_hierarchy_sound toyDefinabilityHierarchyCertificate

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/Computability/ExpressibleNumbersExamples/Variant932ad1f7ca3c0f3d40b23875366b0ce3928a45e308788fe7a499278ab51ab30a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/Computability/ExpressibleNumbersExamples/Variant932ad1f7ca3c0f3d40b23875366b0ce3928a45e308788fe7a499278ab51ab30a.lean#L48).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6c96277cacbed5f999ee2d332f6ac33a222827c5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
