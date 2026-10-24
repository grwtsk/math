# congruent_iff_pairwise_nndist_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c410ac02-3f80-346c-c166-9fe7d297f08e",
  "kind": "lemma",
  "lexical_name": "congruent_iff_pairwise_nndist_eq",
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
  "slug": "congruent-iff-pairwise-nndist-eq--6b1401546abc14dcb8b51db4",
  "source": {
    "blob": "2bcf001da9bb53ca7c590508a2fbf33c149e7bcf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 123,
    "line": 118,
    "path": "GRWTSK/Topology/MetricTopology/Congruence/Variant1cb4b835c0edad49389c17d1a45bc658f5cf1333657d83e90d50bc441c149ce1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6b1401546abc14dcb8b51db40db7be426d157d283c0de86f787ce3981aa59d5d",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Congruence/Variant1cb4b835c0edad49389c17d1a45bc658f5cf1333657d83e90d50bc441c149ce1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c410ac02-3f80-346c-c166-9fe7d297f08e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 118–123.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma congruent_iff_pairwise_nndist_eq :
    Congruent v₁ v₂ ↔ Pairwise fun i₁ i₂ ↦ nndist (v₁ i₁) (v₁ i₂) = nndist (v₂ i₁) (v₂ i₂) := by
  simp_rw [congruent_iff_pairwise_edist_eq, edist_nndist]
  exact_mod_cast Iff.rfl

/-- Congruence holds if and only if all distances are the same. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Congruence/Variant1cb4b835c0edad49389c17d1a45bc658f5cf1333657d83e90d50bc441c149ce1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Congruence/Variant1cb4b835c0edad49389c17d1a45bc658f5cf1333657d83e90d50bc441c149ce1.lean#L118).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2bcf001da9bb53ca7c590508a2fbf33c149e7bcf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
