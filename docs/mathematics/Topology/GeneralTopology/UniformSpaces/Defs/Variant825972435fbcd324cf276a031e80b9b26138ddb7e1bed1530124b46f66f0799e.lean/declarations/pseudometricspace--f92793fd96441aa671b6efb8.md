# PseudoMetricSpace

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c6b8f98ba48f99866ef0eb933e96bfef41d411213c88cc1e0c245ca2c3707f20",
  "kind": "class",
  "lexical_name": "PseudoMetricSpace",
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
  "slug": "pseudometricspace--f92793fd96441aa671b6efb8",
  "source": {
    "blob": "5d0e6da2c77245966a3fa5c4356ba79581daaa14",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 133,
    "line": 118,
    "path": "GRWTSK/Topology/GeneralTopology/UniformSpaces/Defs/Variant825972435fbcd324cf276a031e80b9b26138ddb7e1bed1530124b46f66f0799e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f92793fd96441aa671b6efb84976b94e98dedfc5c3ef9244735215923b1b913e",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/UniformSpaces/Defs/Variant825972435fbcd324cf276a031e80b9b26138ddb7e1bed1530124b46f66f0799e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `class` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c6b8f98ba48f99866ef0eb933e96bfef41d411213c88cc1e0c245ca2c3707f20`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 118–133.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
class PseudoMetricSpace (α : Type u) : Type u extends Dist α where
  dist_self : ∀ x : α, dist x x = 0
  dist_comm : ∀ x y : α, dist x y = dist y x
  dist_triangle : ∀ x y z : α, dist x z ≤ dist x y + dist y z
  /-- Extended distance between two points -/
  edist : α → α → ℝ≥0∞ := fun x y => ENNReal.ofNNReal ⟨dist x y, dist_nonneg' _ ‹_› ‹_› ‹_›⟩
  edist_dist : ∀ x y : α, edist x y = ENNReal.ofReal (dist x y) := by
    intros x y; exact ENNReal.coe_nnreal_eq _
  toUniformSpace : UniformSpace α := .ofDist dist dist_self dist_comm dist_triangle
  uniformity_dist : 𝓤 α = ⨅ ε > 0, 𝓟 { p : α × α | dist p.1 p.2 < ε } := by intros; rfl
  toBornology : Bornology α := Bornology.ofDist dist dist_comm dist_triangle
  cobounded_sets : (Bornology.cobounded α).sets =
    { s | ∃ C : ℝ, ∀ x ∈ sᶜ, ∀ y ∈ sᶜ, dist x y ≤ C } := by intros; rfl

/-- Two pseudo metric space structures with the same distance function coincide. -/
@[ext]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Topology/GeneralTopology/UniformSpaces/Defs/Variant825972435fbcd324cf276a031e80b9b26138ddb7e1bed1530124b46f66f0799e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/UniformSpaces/Defs/Variant825972435fbcd324cf276a031e80b9b26138ddb7e1bed1530124b46f66f0799e.lean#L118).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5d0e6da2c77245966a3fa5c4356ba79581daaa14` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
