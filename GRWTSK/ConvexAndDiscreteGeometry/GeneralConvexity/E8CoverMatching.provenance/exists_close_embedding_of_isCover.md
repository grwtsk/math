# `GRWTSK.ConvexAndDiscreteGeometry.GeneralConvexity.E8CoverMatching.exists_close_embedding_of_isCover`

Local attribution: grwtsk contributors.

## Local theorem identity

- Source: [E8CoverMatching.lean](../E8CoverMatching.lean), line 39.
- Pinned source: [exact local revision](https://github.com/grwtsk/math/blob/1b193e2bd2acf3a7eaf1bb71f59918a1ae666be4/GRWTSK/ConvexAndDiscreteGeometry/GeneralConvexity/E8CoverMatching.lean#L39).
- Declaration spelling: `GRWTSK.ConvexAndDiscreteGeometry.GeneralConvexity.E8CoverMatching.exists_close_embedding_of_isCover` (theorem). Namespace spelling is a lexical source observation; elaboration is not asserted.

## Origin and references

This file records the local theorem’s source lineage. A pinned dependency or module reference does not assert that the local conclusion is an unchanged upstream theorem. The exact local hypotheses and proof are in the source above.

Immediate local source inputs (exact pinned dependencies, not an assertion of a copied upstream theorem):

- [Local source input](https://github.com/grwtsk/math/blob/1b193e2bd2acf3a7eaf1bb71f59918a1ae666be4/GRWTSK/ConvexAndDiscreteGeometry/GeneralConvexity/E8FiniteCoveringConsumers.lean)

- [Pinned upstream source](https://github.com/thefundamentaltheor3m/Sphere-Packing-Lean/blob/77cf0a0c104f2e31501eab04d88bbc068d61c169/SpherePacking/Basic/E8.lean)

The following existing source records retain the precise declaration mapping, changes, hypotheses, consumer and unresolved bridges where recorded. They are reproduced as source evidence, not new mathematical acceptance.

```json
[
  {
    "record": "docs/adaptations/consumer-integrations.json",
    "consumer": {
      "provider": "sphere-packing",
      "project_subdir": "adapters/sphere-packing",
      "path": "adapters/sphere-packing/GRWTSK/ConvexAndDiscreteGeometry/GeneralConvexity/E8CoverMatching.lean",
      "source_commit": "6336a394397cca8587c4b0ba713b36e0ba4b5bee",
      "source_blob": "719bf5797ad0d64246a718661340278b5b15a49f",
      "source_sha256": "6c83c505864f69c7d8e97b82e3c23dbcf2d8dafd6f50b1ead6d880ecc031637f",
      "declarations": [
        "GRWTSK.ConvexAndDiscreteGeometry.GeneralConvexity.E8CoverMatching.exists_close_embedding_of_isCover",
        "GRWTSK.ConvexAndDiscreteGeometry.GeneralConvexity.E8CoverMatching.exists_close_equiv_of_isCover_and_card_eq"
      ],
      "upstream": [
        {
          "commit": "77cf0a0c104f2e31501eab04d88bbc068d61c169",
          "source": "SpherePacking/Basic/E8.lean",
          "blob": "c369209e9ae2a7e358e2b312cd251bf9caf20cd2",
          "declaration": "E8_norm_lower_bound",
          "exact_statement": "v in Submodule.E8 Real implies v=0 or Real.sqrt2<=norm(WithLp.toLp2 v).",
          "source_byline": "Copyright2025 Bhavik Mehta; Authors:Bhavik Mehta,Gareth Ma.",
          "license": "Apache-2.0",
          "README_blob": "efe29f761ea40f67434fb7b4921fa8fecf326a1c",
          "LICENSE_blob": "261eeb9e9f8b2b4b0d119366dda99c6fd7d35c64",
          "lean_toolchain_blob": "9532ebf33701f2ff0a999f12b21fb7a675f24e6e",
          "lake_manifest_blob": "5560eaa0283999669a11afd53bce831a34a3e581",
          "excluded_source": "SpherePacking.MainTheorem literal-sorry endpoint remains excluded. No optimal packing-density theorem is consumed.",
          "repository": "thefundamentaltheor3m/Sphere-Packing-Lean",
          "stable_url": "https://github.com/thefundamentaltheor3m/Sphere-Packing-Lean/blob/77cf0a0c104f2e31501eab04d88bbc068d61c169/SpherePacking/Basic/E8.lean",
          "project_byline": "Sphere Packing in Lean: Christopher Birkbeck, Sidharth Hariharan, Seewoo Lee, Ho Kiu Gareth Ma, Bhavik Mehta, Maryna Viazovska; version0.1.0 released2025-06-13, ongoing."
        }
      ],
      "native_pins": {
        "toolchain": "leanprover/lean4:v4.35.0-rc4",
        "Mathlib": "1f414401f69059aa7eead47b53ee40bd38455eeb",
        "sources": [
          {
            "path": "Mathlib/Topology/MetricSpace/Cover.lean",
            "blob": "97b4b7ebe49b22b1fa513916ac417dae77652e12",
            "declarations": [
              "Metric.IsCover"
            ]
          },
          {
            "path": "Mathlib/Topology/MetricSpace/Pseudo/Defs.lean",
            "blob": "93b857abd33f02a77d77bc4f828cb3cf6c95b7c3",
            "declarations": [
              "edist_le_ofReal",
              "dist_triangle",
              "dist_comm"
            ]
          },
          {
            "path": "Mathlib/Data/Fintype/EquivFin.lean",
            "blob": "80c4fd3f66ca34b754a300f1ac79312e7fcd920f",
            "declarations": [
              "Fintype.bijective_iff_injective_and_card"
            ]
          },
          {
            "path": "Mathlib/Data/Fintype/Card.lean",
            "blob": "f59efd09968716b3727825b05027f6fdee9e5dc8",
            "declarations": [
              "Fintype.card_coe"
            ]
          },
          {
            "path": "Mathlib/Logic/Equiv/Defs.lean",
            "blob": "e300fb9e2467dee217df8d1452840f75b3ec3116",
            "declarations": [
              "Equiv.ofBijective",
              "Equiv.coe_ofBijective"
            ]
          },
          {
            "path": "Mathlib/Data/Finset/Defs.lean",
            "blob": "badf54457eb9cdf96ab9199a61e3f7677455f126",
            "declarations": [
              "Finset.coe_sort_coe"
            ]
          },
          {
            "path": "Mathlib/Topology/MetricSpace/CoveringNumbers.lean",
            "blob": "634d5f7d0b64abfdc47ec889741d4a4fa4d87ec7",
            "declarations": [
              "Metric.packingNumber_two_mul_le_externalCoveringNumber (local injection proof method)"
            ]
          },
          {
            "path": "Mathlib/Tactic/Linarith.lean",
            "blob": "8cf3ec37fc80830c8af828638c75ff84f1282697",
            "declarations": [
              "linarith"
            ]
          }
        ]
      },
      "hypotheses": [
        "S : Finset (Fin8 -> Real), every member lies in Submodule.E8 Real.",
        "epsilon : NNReal, strict2*(epsilon:Real)<Real.sqrt2. Zero radius and empty S are retained.",
        "First theorem C is an arbitrary Set of EuclideanSpace Real(Fin8), with Metric.IsCover epsilon of the exact WithLp.toLp2 image of S. C may be infinite and need not lie in E8.",
        "Second theorem C is a Finset of EuclideanSpace Real(Fin8), same cover premise and C.card=S.card. No nonempty or positive-radius hypothesis is added."
      ],
      "conclusion": [
        "There exists f : S -> C which is injective, with actual Real Euclidean dist(toLp2(v),f(v)) <= epsilon for every v:S.",
        "For a finite cover with C.card=S.card there exists e:S equiv C, with the same pointwise Real-distance bound. Equiv includes surjectivity, so every supplied center is used."
      ],
      "use": "Expose an actual radius-close point-to-center injection for every cover of a finite E8 sample; when a finite center set has exactly the sample cardinality, construct an actual equivalence using every center. The previous E8 covering-number theorem gave only cardinal cost, while this construction retains the center assigned to each point.",
      "consumer_paths": [
        "GRWTSK/GeneralTopology/CoveringNumbersPublic.lean"
      ],
      "root_consumer_source_commit": "83d120433d0239cf2943ac6a1d61a7d3a49c0b7b",
      "root_consumer_blob": "ac4085f88cc6ecc5c1d0a0146b17defb3bfb1d0f",
      "root_consumer_declarations": [
        "Metric.packingNumber_two_mul_le_externalCoveringNumber",
        "Metric.IsCover.externalCoveringNumber_le_encard"
      ],
      "root_consumer_role": "Imported covering-number API source; actual source proof retains a local injection but returns only cardinal cost. New isolated E8 construction exposes the matching object and radius observation. No native version transport/root integration is supplied.",
      "classification": "SOURCE_PROOF_CANDIDATE_ACTUAL_MATHEMATICAL_CONSUMER",
      "license": "Apache-2.0; original E8 and Mathlib public bylines retained",
      "profile_sha256": "85a8ec12b77652ba5639963a3bf100a6493b2cceb14f7aafe6779be91a06c181",
      "verification": {
        "compilation": "NOT_RUN",
        "comparator": "NOT_RUN",
        "expected_interface": "NOT_RUN",
        "fresh_independent_kernel_replay": "NOT_RUN",
        "complete_module_discovery": "NOT_RUN",
        "complete_transitive_axiom_audit": "NOT_RUN",
        "second_independent_checker": "UNSUPPLIED",
        "host_resource_restoration": "NOT_RUN"
      },
      "missing_bridges": [
        "Fresh supported4.35.0-rc4 qualification/complete source-bound registry, full import compilation, compiler-owned discovery, both literal type consumers, fresh independent kernel replay and complete transitive axiom audit are still required.",
        "Root4.34.1 version transport and actual integration remain UNSUPPLIED.",
        "Nearest-center optimization/algorithmic realization and geometric-to-arithmetic mass transfer remain UNSUPPLIED."
      ],
      "independent_checker": "UNSUPPLIED"
    }
  }
]
```

Source-local origin comments (verbatim; their historical paths and statuses retain their original scope):

```lean
/-
Local attribution: grwtsk contributors.
Upstream E8 authors Bhavik Mehta and Gareth Ma and Mathlib retain Apache-2.0 attribution.
-/

/-!
# Radius-close point-to-center matchings for finite E8 samples

The covering-number consumer gives a cardinality obstruction. Here the same
separation scale supplies an actual assignment: every finite sample point is
assigned a distinct covering center at distance at most the cover radius.
The center set can be infinite and need not lie in E8. If a finite center set
has exactly the sample cardinality, the assignment is a bijection.

Strict `2*epsilon < sqrt 2` is retained for closed balls. Empty samples and
radius zero are included. The chosen centers are radius-close, not asserted
to be nearest centers. The use of classical choice proves existence; it is
not a matching algorithm or a claim about execution time. No packing-density,
volume or geometric-to-arithmetic mass conclusion is supplied.

The isolated package retains the exact E8 source and native dependency pins.
The root covering-number source is not imported across versions, and the
admitted `SpherePacking.MainTheorem` endpoint remains excluded.
SOURCE_PROOF_CANDIDATE: compilation, expected-interface checking, fresh kernel
replay and complete transitive axiom auditing remain NOT_RUN.
-/
```

## Evidence scope

This provenance transcription ran no Lean compilation, statement-equivalence check, fresh kernel replay, transitive axiom audit or independent mathematical review: `NOT_RUN`. Existing source-bound evidence and unresolved premises quoted above are preserved; this record neither supersedes them nor promotes a candidate or conditional result to accepted mathematics.
