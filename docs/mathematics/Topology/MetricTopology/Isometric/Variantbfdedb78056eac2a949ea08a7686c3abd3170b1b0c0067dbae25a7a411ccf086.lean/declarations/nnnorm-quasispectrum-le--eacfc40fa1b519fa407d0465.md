# nnnorm_quasispectrum_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5427b2de0b0c3ddce77c7088d6c074be4f65b8dd",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 344,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/bf/bfdedb78056eac2a949ea08a7686c3abd3170b1b0c0067dbae25a7a411ccf086.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ef2662fe-94f9-5aa7-7a58-6adfed66d508",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:259b7f2c-d43c-b0c9-6bab-16106a002191",
  "kind": "lemma",
  "lexical_name": "nnnorm_quasispectrum_le",
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
  "slug": "nnnorm-quasispectrum-le--eacfc40fa1b519fa407d0465",
  "source": {
    "blob": "5427b2de0b0c3ddce77c7088d6c074be4f65b8dd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 366,
    "line": 344,
    "path": "GRWTSK/Topology/MetricTopology/Isometric/Variantbfdedb78056eac2a949ea08a7686c3abd3170b1b0c0067dbae25a7a411ccf086.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:eacfc40fa1b519fa407d0465123a56b3dc89494457403431baf49d5c02a5da52",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Isometric/Variantbfdedb78056eac2a949ea08a7686c3abd3170b1b0c0067dbae25a7a411ccf086.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_SOURCE_DEPENDENCY"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:259b7f2c-d43c-b0c9-6bab-16106a002191`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 344–366.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma nnnorm_quasispectrum_le (a : A) ⦃x : 𝕜⦄ (hx : x ∈ σₙ 𝕜 a) (ha : p a := by cfc_tac) :
    ‖x‖₊ ≤ ‖a‖₊ := by
  simpa only [cfcₙ_id 𝕜 a] using nnnorm_apply_le_nnnorm_cfcₙ (id : 𝕜 → 𝕜) a hx

end NonUnitalIsometricContinuousFunctionalCalculus

end NormedRing

namespace QuasispectrumRestricts

open NonUnitalIsometricContinuousFunctionalCalculus

variable {R S A : Type*} {p q : A → Prop}
variable [Semifield R] [StarRing R] [MetricSpace R] [IsTopologicalSemiring R] [ContinuousStar R]
variable [Field S] [StarRing S] [MetricSpace S] [IsTopologicalRing S] [ContinuousStar S]
variable [NonUnitalRing A] [StarRing A] [Module S A] [IsScalarTower S A A]
variable [SMulCommClass S A A]
variable [Algebra R S] [Module R A] [IsScalarTower R S A] [StarModule R S] [ContinuousSMul R S]
variable [IsScalarTower R A A] [SMulCommClass R A A]
variable [MetricSpace A] [NonUnitalIsometricContinuousFunctionalCalculus S A q]
variable [CompleteSpace R] [ContinuousMapZero.UniqueHom R A]

open scoped NonUnitalContinuousFunctionalCalculus in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Isometric/Variantbfdedb78056eac2a949ea08a7686c3abd3170b1b0c0067dbae25a7a411ccf086.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Isometric/Variantbfdedb78056eac2a949ea08a7686c3abd3170b1b0c0067dbae25a7a411ccf086.lean#L344).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5427b2de0b0c3ddce77c7088d6c074be4f65b8dd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
