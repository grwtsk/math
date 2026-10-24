# Cell

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:abbb4c30be7dda12b2b8cf2b88e87f9903cff64e45191f83d3068abb5f1e00c8",
  "kind": "structure",
  "lexical_name": "Cell",
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
  "slug": "cell--5efb852fbbb385eadd21a5f1",
  "source": {
    "blob": "080881b9f3b67954827204d6a412e75dfaf5a727",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 44,
    "line": 13,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/A7a855b6bb1b2ec2a/Variantf8f4a5adc32739823dfd032ce6726228cd4c52f362359feded518e86f14f0222.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5efb852fbbb385eadd21a5f1412fc19957e93f77a124796619309d1f8e57002f",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/A7a855b6bb1b2ec2a/Variantf8f4a5adc32739823dfd032ce6726228cd4c52f362359feded518e86f14f0222.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:abbb4c30be7dda12b2b8cf2b88e87f9903cff64e45191f83d3068abb5f1e00c8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 13–44.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure Cell (concept : Record) where
  Axis : Type
  instFintypeAxis : Fintype Axis
  instDecidableEqAxis : DecidableEq Axis

  /-- Embedding of the mandatory core axes into the concept-specific axis type. -/
  coreAxis : CoreAxis → Axis
  coreAxis_injective : Function.Injective coreAxis

  required : Finset Axis
  bits : Axis → Bool
  certificate : (axis : Axis) → AxisEvidence concept Axis axis

  definitionDigest : Digest
  boundaryDigest : Digest
  incidenceDigest : Digest
  authorityDigest : Digest
  provenanceDigest : Digest

  definitionDigest_eq : definitionDigest = concept.definitionDigest
  boundaryDigest_eq : boundaryDigest = concept.boundaryDigest
  incidenceDigest_eq : incidenceDigest = concept.incidenceDigest
  authorityDigest_eq : authorityDigest = concept.authorityDigest
  provenanceDigest_eq : provenanceDigest = concept.provenanceDigest

  core_required : ∀ axis, coreAxis axis ∈ required

namespace Cell

end Cell

end Mathematics.Concept
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/A7a855b6bb1b2ec2a/Variantf8f4a5adc32739823dfd032ce6726228cd4c52f362359feded518e86f14f0222.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/A7a855b6bb1b2ec2a/Variantf8f4a5adc32739823dfd032ce6726228cd4c52f362359feded518e86f14f0222.lean#L13).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `080881b9f3b67954827204d6a412e75dfaf5a727` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
