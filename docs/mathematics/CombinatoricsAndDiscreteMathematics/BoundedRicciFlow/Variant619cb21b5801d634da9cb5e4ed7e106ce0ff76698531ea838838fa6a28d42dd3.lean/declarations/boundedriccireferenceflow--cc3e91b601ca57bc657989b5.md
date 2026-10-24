# BoundedRicciReferenceFlow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:780eb69e0a0dd5efeaa0627a6e569533991c1cc25e0eda9a1ff1691e8ac43fe3",
  "kind": "structure",
  "lexical_name": "BoundedRicciReferenceFlow",
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
  "slug": "boundedriccireferenceflow--cc3e91b601ca57bc657989b5",
  "source": {
    "blob": "65ed1b176deaae90eb17ef276301fc01b94d7a81",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 57,
    "line": 20,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/BoundedRicciFlow/Variant619cb21b5801d634da9cb5e4ed7e106ce0ff76698531ea838838fa6a28d42dd3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:cc3e91b601ca57bc657989b516becaaaf1eceaaaef95a919954156a59b8ebab9",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/BoundedRicciFlow/Variant619cb21b5801d634da9cb5e4ed7e106ce0ff76698531ea838838fa6a28d42dd3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:780eb69e0a0dd5efeaa0627a6e569533991c1cc25e0eda9a1ff1691e8ac43fe3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 20–57.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure BoundedRicciReferenceFlow
    {V : Type uV}
    [Fintype V]
    [DecidableEq V]
    (T : Terrain V) where
  MetricState : Type uMetric
  model : DiscreteCurvatureModel T MetricState
  horizon : Nat
  referenceMetric : MetricState
  metric : Fin (horizon + 1) → MetricState
  metric_step :
    ∀ k : Fin horizon,
      metric ⟨k.1 + 1, Nat.succ_lt_succ k.2⟩ =
        model.metricStep (metric ⟨k.1, Nat.lt_succ_of_lt k.2⟩)
  epsilon : ℝ
  maximum : ℝ
  epsilon_pos : 0 < epsilon
  epsilon_le_maximum : epsilon ≤ maximum
  weight_bounds :
    ∀ (k : Fin (horizon + 1)) {x y : V}, T.Adjacent x y →
      (epsilon ≤ model.edgeWeight (metric k) x y) ∧
        (model.edgeWeight (metric k) x y ≤ maximum)
  reference_fixed : model.metricStep referenceMetric = referenceMetric
  target_distance_nonincreasing :
    ∀ k : Fin horizon,
      model.metricDistance
          (metric ⟨k.1 + 1, Nat.succ_lt_succ k.2⟩)
          referenceMetric ≤
        model.metricDistance
          (metric ⟨k.1, Nat.lt_succ_of_lt k.2⟩)
          referenceMetric

namespace BoundedRicciReferenceFlow

variable {V : Type uV} [Fintype V] [DecidableEq V]
variable {T : Terrain V}

/-- Every legal edge has a strictly positive weight at every sampled time. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/BoundedRicciFlow/Variant619cb21b5801d634da9cb5e4ed7e106ce0ff76698531ea838838fa6a28d42dd3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/BoundedRicciFlow/Variant619cb21b5801d634da9cb5e4ed7e106ce0ff76698531ea838838fa6a28d42dd3.lean#L20).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `65ed1b176deaae90eb17ef276301fc01b94d7a81` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
