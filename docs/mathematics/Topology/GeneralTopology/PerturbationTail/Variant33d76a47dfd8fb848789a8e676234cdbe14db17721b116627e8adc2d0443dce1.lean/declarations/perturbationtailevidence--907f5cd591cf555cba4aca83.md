# PerturbationTailEvidence

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a98db03a5a0bbb92173b3ad3ff694bf44beae0391b11b57f53aea53a09411d84",
  "kind": "inductive",
  "lexical_name": "PerturbationTailEvidence",
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
  "slug": "perturbationtailevidence--907f5cd591cf555cba4aca83",
  "source": {
    "blob": "10f819265c84a34dc39dc2a62368933b285f3f4b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 413,
    "line": 389,
    "path": "GRWTSK/Topology/GeneralTopology/PerturbationTail/Variant33d76a47dfd8fb848789a8e676234cdbe14db17721b116627e8adc2d0443dce1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:907f5cd591cf555cba4aca83eaa6d9666a794ea294cbe1893c9276519b144010",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/PerturbationTail/Variant33d76a47dfd8fb848789a8e676234cdbe14db17721b116627e8adc2d0443dce1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `inductive` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a98db03a5a0bbb92173b3ad3ff694bf44beae0391b11b57f53aea53a09411d84`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 389–413.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
inductive PerturbationTailEvidence
    {State : Type u}
    {Schedule : Type v}
    [PseudoMetricSpace State]
    {exact :
      ContractiveBoundaryCertificate State Schedule}
    (perturbed : PerturbedBoundaryCertificate exact)
    (schedule : ℕ → Schedule)
  | vanishing
      (evidence :
        VanishingDefectEvidence perturbed schedule)
  | summable
      (evidence :
        SummableDefectEvidence perturbed schedule)
  | uniformlyBounded
      (evidence :
        UniformDefectBoundEvidence perturbed schedule)
  | finiteSupport
      (evidence :
        FiniteSupportDefectEvidence perturbed schedule)
  | geometricDecay
      (evidence :
        GeometricDefectEvidence perturbed schedule)

/-- Vanishing tails force two admitted perturbed schedules together. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/PerturbationTail/Variant33d76a47dfd8fb848789a8e676234cdbe14db17721b116627e8adc2d0443dce1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/PerturbationTail/Variant33d76a47dfd8fb848789a8e676234cdbe14db17721b116627e8adc2d0443dce1.lean#L389).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `10f819265c84a34dc39dc2a62368933b285f3f4b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
