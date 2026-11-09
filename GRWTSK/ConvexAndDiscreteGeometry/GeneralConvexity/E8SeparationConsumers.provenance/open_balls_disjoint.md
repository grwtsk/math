# `GRWTSK.ConvexAndDiscreteGeometry.GeneralConvexity.E8SeparationConsumers.open_balls_disjoint`

Local attribution: grwtsk contributors.

## Local theorem identity

- Source: [E8SeparationConsumers.lean](../E8SeparationConsumers.lean), line 34.
- Pinned source: [exact local revision](https://github.com/grwtsk/math/blob/1b193e2bd2acf3a7eaf1bb71f59918a1ae666be4/GRWTSK/ConvexAndDiscreteGeometry/GeneralConvexity/E8SeparationConsumers.lean#L34).
- Declaration spelling: `GRWTSK.ConvexAndDiscreteGeometry.GeneralConvexity.E8SeparationConsumers.open_balls_disjoint` (theorem). Namespace spelling is a lexical source observation; elaboration is not asserted.

## Origin and references

This file records the local theorem’s source lineage. A pinned dependency or module reference does not assert that the local conclusion is an unchanged upstream theorem. The exact local hypotheses and proof are in the source above.

- [Pinned upstream source](https://github.com/thefundamentaltheor3m/Sphere-Packing-Lean/blob/77cf0a0c104f2e31501eab04d88bbc068d61c169/SpherePacking/Basic/E8.lean)

The following existing source records retain the precise declaration mapping, changes, hypotheses, consumer and unresolved bridges where recorded. They are reproduced as source evidence, not new mathematical acceptance.

```json
[
  {
    "record": "docs/adaptations/consumer-integrations.json",
    "consumer": {
      "provider": "sphere-packing",
      "project_subdir": "adapters/sphere-packing",
      "path": "adapters/sphere-packing/GRWTSK/ConvexAndDiscreteGeometry/GeneralConvexity/E8SeparationConsumers.lean",
      "declarations": [
        "GRWTSK.ConvexAndDiscreteGeometry.GeneralConvexity.E8SeparationConsumers.difference_norm_lower_bound",
        "GRWTSK.ConvexAndDiscreteGeometry.GeneralConvexity.E8SeparationConsumers.centre_distance_lower_bound",
        "GRWTSK.ConvexAndDiscreteGeometry.GeneralConvexity.E8SeparationConsumers.open_balls_disjoint"
      ],
      "upstream": [
        {
          "repository": "thefundamentaltheor3m/Sphere-Packing-Lean",
          "commit": "77cf0a0c104f2e31501eab04d88bbc068d61c169",
          "source": "SpherePacking/Basic/E8.lean",
          "blob": "c369209e9ae2a7e358e2b312cd251bf9caf20cd2",
          "declarations": [
            "E8_norm_lower_bound"
          ]
        }
      ],
      "hypotheses": "v,w:Fin8->Real; both in Submodule.E8 Real; v!=w. Metric is Euclidean via WithLp.toLp2, not the sup norm on functions. Balls are open with radius sqrt2/2; no disjoint-closed-ball assertion.",
      "conclusion": "Apply the Basic.E8 lower bound to v-w; transport the exact l2 norm to Euclidean distance; triangle inequality proves radius sqrt(2)/2 open balls at distinct E8 centres are disjoint.",
      "use": "Apply the Basic.E8 lower bound to v-w; transport the exact l2 norm to Euclidean distance; triangle inequality proves radius sqrt(2)/2 open balls at distinct E8 centres are disjoint.",
      "consumer_paths": [
        "Provides a geometric packing/non-overlap consumer using the same Euclidean norm/ball domain as GRWTSK.Geometry.RealAndComplexGeometry.SphereBasicPublic; no root namespace or dependency changes."
      ],
      "paper_or_source": "Basic.E8 source header: Bhavik Mehta and Gareth Ma,2025. Project CITATION: Sphere Packing in Lean, Christopher Birkbeck, Sidharth Hariharan, Seewoo Lee, Ho Kiu Gareth Ma, Bhavik Mehta, Maryna Viazovska; version0.1.0 released2025-06-13, ongoing.",
      "stable_reference": "https://github.com/thefundamentaltheor3m/Sphere-Packing-Lean/blob/77cf0a0c104f2e31501eab04d88bbc068d61c169/SpherePacking/Basic/E8.lean",
      "license": "Apache-2.0",
      "missing_bridges": [
        "No optimal density, dimension other than8, global sphere-packing upper bound or equivalence with local arithmetic mass-packing bookkeeping."
      ],
      "trust_finding": "The pinned SpherePacking/MainTheorem.lean blob e0fd17482e5e38d3314d1d47bd691baa95f9672e contains a literal sorry headline. It is NOT imported/consumed; Basic.E8 has no lexical sorry, which is not a transitive axiom audit.",
      "source_blob": "eb8fb5c074c24ffea08577deb37c14232b5430fd",
      "source_sha256": "4d0712397c85af03f9fc97cf82a3dad179a1e6c9dfd7a980ca91928c22eb8336",
      "classification": "SOURCE_PROOF_CANDIDATE_ACTUAL_MATHEMATICAL_CONSUMER",
      "verification": {
        "compilation": "NOT_RUN",
        "fresh_kernel_replay": "NOT_RUN",
        "complete_transitive_axiom_audit": "NOT_RUN",
        "expected_interface": "NOT_RUN"
      },
      "independent_checker": "UNSUPPLIED"
    }
  }
]
```

Source-local origin comments (verbatim; their historical paths and statuses retain their original scope):

```lean
/- Local attribution: grwtsk contributors.
Upstream E8 source authors Bhavik Mehta and Gareth Ma retain Apache-2.0 attribution. -/

/-!
# E8 lattice separation as a geometric non-overlap consumer

The upstream nonzero-vector lower bound applies to differences of lattice
points. Hence open balls of radius sqrt(2)/2 at distinct E8 points are disjoint.
This uses the proved Basic.E8 endpoint, not the `sorry` placeholder in the
pinned SpherePacking.MainTheorem. Optimal packing density is not asserted.
SOURCE_PROOF_CANDIDATE: compilation, fresh kernel replay and axiom audit NOT_RUN.
-/
```

## Evidence scope

This provenance transcription ran no Lean compilation, statement-equivalence check, fresh kernel replay, transitive axiom audit or independent mathematical review: `NOT_RUN`. Existing source-bound evidence and unresolved premises quoted above are preserved; this record neither supersedes them nor promotes a candidate or conditional result to accepted mathematics.
