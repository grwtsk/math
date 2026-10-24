# Rat.denseRange_cast

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "bab1f0799dc32ad3f22bdb4cc782ec51312aa81e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 29,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/2a/2a40adfa409454a57c1b7be16b1110f76c9ccf523ec437200adc3375c9ef9336.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e8a2cb41-eb06-d1e9-4a11-a80f83ad6a88",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:bd9f416f-b9f3-143e-c95b-3e6644be239d",
  "kind": "theorem",
  "lexical_name": "Rat.denseRange_cast",
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
  "slug": "rat-denserange-cast--492afd7fc30001dfe8a88799",
  "source": {
    "blob": "bab1f0799dc32ad3f22bdb4cc782ec51312aa81e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 41,
    "line": 29,
    "path": "GRWTSK/Algebra/GroupTheory/Archimedean/Variant2a40adfa409454a57c1b7be16b1110f76c9ccf523ec437200adc3375c9ef9336.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:492afd7fc30001dfe8a887994123625bd1dc9249184d60c68af909c7d8a0296d",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Archimedean/Variant2a40adfa409454a57c1b7be16b1110f76c9ccf523ec437200adc3375c9ef9336.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bd9f416f-b9f3-143e-c95b-3e6644be239d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 29–41.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Rat.denseRange_cast {𝕜} [LinearOrderedField 𝕜] [TopologicalSpace 𝕜] [OrderTopology 𝕜]
  [Archimedean 𝕜] : DenseRange ((↑) : ℚ → 𝕜) :=
  dense_of_exists_between fun _ _ h => Set.exists_range_iff.2 <| exists_rat_btwn h
#align rat.dense_range_cast Rat.denseRange_cast

namespace AddSubgroup

variable {G : Type*} [LinearOrderedAddCommGroup G] [TopologicalSpace G] [OrderTopology G]
  [Archimedean G]

/-- An additive subgroup of an archimedean linear ordered additive commutative group with order
topology is dense provided that for all positive `ε` there exists a positive element of the
subgroup that is less than `ε`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Archimedean/Variant2a40adfa409454a57c1b7be16b1110f76c9ccf523ec437200adc3375c9ef9336.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Archimedean/Variant2a40adfa409454a57c1b7be16b1110f76c9ccf523ec437200adc3375c9ef9336.lean#L29).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bab1f0799dc32ad3f22bdb4cc782ec51312aa81e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
