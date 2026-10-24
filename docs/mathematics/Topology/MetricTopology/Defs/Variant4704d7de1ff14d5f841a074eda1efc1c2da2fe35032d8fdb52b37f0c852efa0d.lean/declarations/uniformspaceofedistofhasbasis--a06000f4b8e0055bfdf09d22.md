# uniformSpaceOfEDistOfHasBasis

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:fc4e323a40433602bb3658eb837ae821fa701b03a12eb2db0d3ee107532f4c77",
  "kind": "def",
  "lexical_name": "uniformSpaceOfEDistOfHasBasis",
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
  "slug": "uniformspaceofedistofhasbasis--a06000f4b8e0055bfdf09d22",
  "source": {
    "blob": "3ef0db6a6a6d35e7777c6a0769a4af5ddcdfdadf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 122,
    "line": 96,
    "path": "GRWTSK/Topology/MetricTopology/Defs/Variant4704d7de1ff14d5f841a074eda1efc1c2da2fe35032d8fdb52b37f0c852efa0d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a06000f4b8e0055bfdf09d22cf4f4bae8a618196b286df103c16c1b4dbf83dde",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Defs/Variant4704d7de1ff14d5f841a074eda1efc1c2da2fe35032d8fdb52b37f0c852efa0d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:fc4e323a40433602bb3658eb837ae821fa701b03a12eb2db0d3ee107532f4c77`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 96–122.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[reducible] noncomputable def uniformSpaceOfEDistOfHasBasis [TopologicalSpace α]
    (edist : α → α → ℝ≥0∞)
    (edist_self : ∀ x : α, edist x x = 0)
    (edist_comm : ∀ x y : α, edist x y = edist y x)
    (edist_triangle : ∀ x y z : α, edist x z ≤ edist x y + edist y z)
    (basis : ∀ x, (𝓝 x).HasBasis (fun c ↦ 0 < c) (fun c ↦ {y | edist x y < c})) :
    UniformSpace α :=
  .ofFunOfHasBasis edist edist_self edist_comm edist_triangle (fun ε ε0 =>
    ⟨ε / 2, ENNReal.half_pos ε0.ne', fun _ h₁ _ h₂ =>
      (ENNReal.add_lt_add h₁ h₂).trans_eq (ENNReal.add_halves _)⟩) basis

/-- A pseudo extended metric space is a type endowed with a `ℝ≥0∞`-valued distance `edist`
satisfying reflexivity `edist x x = 0`, commutativity `edist x y = edist y x`, and the triangle
inequality `edist x z ≤ edist x y + edist y z`.

Note that we do not require `edist x y = 0 → x = y`. See extended metric spaces (`EMetricSpace`) for
the similar class with that stronger assumption.

Any pseudo extended metric space is a topological space and a uniform space (see `TopologicalSpace`,
`UniformSpace`), where the topology and uniformity come from the metric.
Note that a T1 pseudo extended metric space is just an extended metric space.

We make the uniformity/topology part of the data instead of deriving it from the metric. This e.g.
ensures that we do not get a diamond when doing
`[PseudoEMetricSpace α] [PseudoEMetricSpace β] : TopologicalSpace (α × β)`:
The product metric and product topology agree, but not definitionally so.
See Note [forgetful inheritance]. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Defs/Variant4704d7de1ff14d5f841a074eda1efc1c2da2fe35032d8fdb52b37f0c852efa0d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Defs/Variant4704d7de1ff14d5f841a074eda1efc1c2da2fe35032d8fdb52b37f0c852efa0d.lean#L96).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3ef0db6a6a6d35e7777c6a0769a4af5ddcdfdadf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
