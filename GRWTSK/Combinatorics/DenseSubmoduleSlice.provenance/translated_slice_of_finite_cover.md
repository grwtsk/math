# `GRWTSK.Combinatorics.DenseSubmoduleSlice.translated_slice_of_finite_cover`

Local attribution: grwtsk contributors.

## Local theorem identity

- Source: [DenseSubmoduleSlice.lean](../DenseSubmoduleSlice.lean), line 39.
- Pinned source: [exact local revision](https://github.com/grwtsk/math/blob/1b193e2bd2acf3a7eaf1bb71f59918a1ae666be4/GRWTSK/Combinatorics/DenseSubmoduleSlice.lean#L39).
- Declaration spelling: `GRWTSK.Combinatorics.DenseSubmoduleSlice.translated_slice_of_finite_cover` (theorem). Namespace spelling is a lexical source observation; elaboration is not asserted.

## Origin and references

This file records the local theorem’s source lineage. A pinned dependency or module reference does not assert that the local conclusion is an unchanged upstream theorem. The exact local hypotheses and proof are in the source above.

- [Pinned upstream source](https://github.com/teorth/pfr/blob/7e7fadf0c4d000fdb21b68505f3fd0e29a6e4a2f/PFR/RhoFunctional.lean)

The following existing source records retain the precise declaration mapping, changes, hypotheses, consumer and unresolved bridges where recorded. They are reproduced as source evidence, not new mathematical acceptance.

```json
[
  {
    "record": "docs/adaptations/consumer-integrations.json",
    "consumer": {
      "provider": "pfr",
      "project_subdir": "adapters/pfr",
      "path": "adapters/pfr/GRWTSK/Combinatorics/DenseSubmoduleSlice.lean",
      "source_commit": "9a913f5c7e184d75e8701096c5c5a59b144c2793",
      "source_blob": "83d53ed5afb4254d155a461eeb3bc989498ed554",
      "source_sha256": "c51f656465e6ce10a3b922731b42394e62c0443a1de9ef215bab02f51f563baf",
      "declarations": [
        "GRWTSK.Combinatorics.DenseSubmoduleSlice.translated_slice_of_finite_cover",
        "GRWTSK.Combinatorics.DenseSubmoduleSlice.card_pow_four_le_submodule_card_mul_energy",
        "GRWTSK.Combinatorics.DenseSubmoduleSlice.dense_submodule_slice_of_small_doubling"
      ],
      "upstream": [
        {
          "repository": "teorth/pfr",
          "commit": "7e7fadf0c4d000fdb21b68505f3fd0e29a6e4a2f",
          "source": "PFR/RhoFunctional.lean",
          "blob": "af3f89faaf4f12edd2ec9796b93ae77474a99c70",
          "declarations": [
            "better_PFR_conjecture"
          ]
        }
      ],
      "hypotheses": "Nonempty Finset A in an arbitrary AddCommGroup G with Module(ZMod2) G and DecidableEq G; real K and |A+A|<=K|A|. No finite ambient group or extra K>0 premise.",
      "conclusion": "For a nonempty Finset A in any ZMod 2 module, with |A+A| <= K|A|, construct one finite submodule H, u and nonempty Finset B with B={b in H | u+b in A}, |H|<=|A|<2*K^9*|B|, B-B subset H, and |B|^4 <= |H|*addEnergy(B,B). All exponent powers are natural-number powers; density is cross-multiplied over Real, while the energy inequality is over Nat.",
      "use": "Maximize the finite-cardinality intersections A with u+H over the actual finite center set c from better_PFR_conjecture. The union bound allows repeated cosets. Translation a -> a-u is injective. Positive slice size allows multiplying the strict center bound. Submodule closure places differences and sums inside the same H; use pinned Mathlib card_sq_le_card_mul_addEnergy for the energy inequality.",
      "consumer_paths": [
        "GRWTSK/Combinatorics/AdditiveEnergy.lean",
        "GRWTSK/Combinatorics/VerySmallDoubling.lean"
      ],
      "root_consumers_at_commit": "e34255f988c9f729858c94d28be36f264021f168",
      "root_consumer_blobs": {
        "GRWTSK/Combinatorics/AdditiveEnergy.lean": "bc60e7dd0bc91351780ecc1a0e2b7176fda530ed",
        "GRWTSK/Combinatorics/VerySmallDoubling.lean": "8618c51d439b44b5fe633a9c0bb8e0b2a503be13"
      },
      "native_pins": {
        "toolchain": "leanprover/lean4:v4.36.0-rc2",
        "mathlib_commit": "8fe7ce475b056f0b266d7107893f2c4d772c712f",
        "isolated_package": "adapters/pfr",
        "root_dependency_or_import_changes": false,
        "pinned_mathlib_api_blobs": {
          "Mathlib/Combinatorics/Additive/Energy.lean": "cf6b974caa3ae8a5bf0ba857b59c00bcf6d66175",
          "Mathlib/Data/Finset/Max.lean": "80cee0361ccd7274c9eebeb6d3139d36b1f0659d",
          "Mathlib/Algebra/Order/BigOperators/Group/Finset.lean": "35dc84ef3c44e3b3431eaeca0be2da74f8e34ed6",
          "Mathlib/Data/Set/Card.lean": "3d6dda99c874cdc04421aac55ba781ac1718fb82"
        },
        "exact_consumed_mathlib_declarations": [
          "Finset.exists_max_image",
          "Finset.card_biUnion_le_card_mul",
          "Finset.card_image_of_injective",
          "Set.ncard_eq_toFinset_card",
          "Finset.card_sq_le_card_mul_addEnergy"
        ]
      },
      "paper_or_source": "Pinned better_PFR_conjecture uses exponent-nine refinement attributed to Jyun-Jie Liao, not original exponent-twelve paper. Dense-slice and energy consequences are local elementary source candidates.",
      "papers": [
        {
          "title": "On a conjecture of Marton",
          "authors": [
            "W. T. Gowers",
            "Ben Green",
            "Freddie Manners",
            "Terence Tao"
          ],
          "year": 2023,
          "url": "https://arxiv.org/abs/2311.05762",
          "role": "Original PFR exponent-twelve source, not claimed to state exponent nine."
        },
        {
          "title": "Improved Exponent for Marton's Conjecture in F_2^n",
          "authors": [
            "Jyun-Jie Liao"
          ],
          "year": 2024,
          "url": "https://arxiv.org/abs/2404.09639",
          "version": "Exact arXiv version is not specified by pinned upstream formalization.yaml.",
          "role": "Pinned source formalization.yaml maps the main exponent-nine theorem and rho machinery to this paper. The dense slice and energy consequences are elementary local derived source candidates, not a newly inferred historical paper mapping."
        }
      ],
      "license": "Apache-2.0; actual upstream public attribution preserved",
      "classification": "SOURCE_PROOF_CANDIDATE_ACTUAL_MATHEMATICAL_CONSUMER",
      "verification": {
        "compilation": "NOT_RUN",
        "fresh_independent_kernel_replay": "NOT_RUN",
        "complete_transitive_axiom_audit": "NOT_RUN",
        "expected_interface": "NOT_RUN"
      },
      "missing_bridges": [
        "Native source compilation, fresh independent replay, complete transitive axiom audit and all three type checks",
        "Root4.34.1 cross-version integration remains unsupplied; no incompatible root imports",
        "No <3/2 small-doubling premise for B or A is supplied, and energy bound concerns B, not A",
        "No different-characteristic or arbitrary-group PFR theorem is supplied"
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
Source proof candidates; native compilation, fresh kernel replay and axiom audit NOT_RUN.
The imported PFR sources retain their upstream authorship and Apache-2.0 license.
-/
```

## Evidence scope

This provenance transcription ran no Lean compilation, statement-equivalence check, fresh kernel replay, transitive axiom audit or independent mathematical review: `NOT_RUN`. Existing source-bound evidence and unresolved premises quoted above are preserved; this record neither supersedes them nor promotes a candidate or conditional result to accepted mathematics.
