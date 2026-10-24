# oppositionAffinity

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:81d92d10d9c400a7f617ec9078bbcc3ac4241bb59b8ac4e499e4ad8f32d8cd08",
  "kind": "def",
  "lexical_name": "oppositionAffinity",
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
  "slug": "oppositionaffinity--8bd387ea0ab5bac3ba8e3ec3",
  "source": {
    "blob": "e40eefc2f81f7724f5707ac7ab20ca6cdc785903",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 42,
    "line": 36,
    "path": "GRWTSK/Analysis/Opposition/Variantbe9135c220e6a53b098db2941f9e6f8e0e20dedd4050a6b02e537a7c5874d7c1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8bd387ea0ab5bac3ba8e3ec306904f362839e4b0492280ea59192af2425caf6c",
  "verification": {
    "reference": "docs/verification/Analysis/Opposition/Variantbe9135c220e6a53b098db2941f9e6f8e0e20dedd4050a6b02e537a7c5874d7c1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:81d92d10d9c400a7f617ec9078bbcc3ac4241bb59b8ac4e499e4ad8f32d8cd08`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 36–42.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def oppositionAffinity
    (kernel : PositiveKernel RhetoricalIndex)
    (positiveConcept negativeConcept : Universe.ConceptId) : Option ℝ :=
  normalizedRealAffinity kernel
    (positiveVector kernel positiveConcept)
    (negativeVector kernel negativeConcept)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/Opposition/Variantbe9135c220e6a53b098db2941f9e6f8e0e20dedd4050a6b02e537a7c5874d7c1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Opposition/Variantbe9135c220e6a53b098db2941f9e6f8e0e20dedd4050a6b02e537a7c5874d7c1.lean#L36).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e40eefc2f81f7724f5707ac7ab20ca6cdc785903` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
