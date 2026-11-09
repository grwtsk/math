# `GRWTSK.Combinatorics.SmallDoublingDifferenceCover.finset_difference_cover_of_small_doubling`

Local attribution: grwtsk contributors.

## Local theorem identity

- Source: [SmallDoublingDifferenceCover.lean](../SmallDoublingDifferenceCover.lean), line 68.
- Pinned source: [exact local revision](https://github.com/grwtsk/math/blob/1b193e2bd2acf3a7eaf1bb71f59918a1ae666be4/GRWTSK/Combinatorics/SmallDoublingDifferenceCover.lean#L68).
- Declaration spelling: `GRWTSK.Combinatorics.SmallDoublingDifferenceCover.finset_difference_cover_of_small_doubling` (theorem). Namespace spelling is a lexical source observation; elaboration is not asserted.

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
      "path": "adapters/pfr/GRWTSK/Combinatorics/SmallDoublingDifferenceCover.lean",
      "declarations": [
        "GRWTSK.Combinatorics.SmallDoublingDifferenceCover.sub_subset_difference_centers",
        "GRWTSK.Combinatorics.SmallDoublingDifferenceCover.difference_cover_of_small_doubling",
        "GRWTSK.Combinatorics.SmallDoublingDifferenceCover.finset_difference_cover_of_small_doubling"
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
      "hypotheses": "G arbitrary AddCommGroup and Module(ZMod2); finite nonempty A; Nat.card(A+A)<=K*Nat.card(A). No ambient finiteness assumption. Local Finset interface additionally needs DecidableEq G.",
      "conclusion": "finite subgroup H size<=|A| and finite difference-center set D with |D|<(2*K^9)^2 and A-A subset D+H; natural powers and strict source constant preserved.",
      "use": "Existing local APIs use Finsets and difference sets. Proves subtraction transport and exact Finset/set cardinal and pointwise bridges rather than leaving them as assumed interfaces. Does not yet combine with local energy inequalities.",
      "consumer_paths": [
        "GRWTSK/Combinatorics/VerySmallDoubling.lean",
        "GRWTSK/Combinatorics/AdditiveEnergy.lean"
      ],
      "paper_or_source": "On a conjecture of Marton; W.T.Gowers, Ben Green, Freddie Manners, Terence Tao; 2023 arXiv:2311.05762. Source README attributes exponent-nine refinement to Jyun-Jie Liao. This consumer uses exact pinned refined source rather than claiming the original paper stated exponent9.",
      "license": "Apache-2.0; upstream original authors/bylines retained through dependency",
      "missing_bridges": [
        "Native compilation/fresh kernel replay/transitive axiom audit/expected-type checking",
        "Root4.34.1 local-library integration would need a separately reviewed version-compatible port; no root dependency change",
        "Actual additive-energy application remains separate from this structured difference cover"
      ],
      "source_blob": "57b24a80833ce342adc5e7b681c866e7f4316d82",
      "source_sha256": "447f470df1e384130e8e8baf25b0b5376a6cec1f5202d5cea42d928175215d82",
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
/-
Local attribution: grwtsk contributors.
Source proof candidates; native compilation, fresh kernel replay and axiom audit NOT_RUN.
The imported PFR sources retain their upstream authorship and Apache-2.0 license.
-/

/-!
# A structured difference cover for small-doubling consumers

The local small-doubling and additive-energy families work with difference sets.
The upstream PFR endpoint covers the original set by translates of a small
submodule. Subtracting two such representations gives a difference-set cover
by the same submodule. This file keeps the finite coset-center set and its
quantitative cardinality, rather than treating an imported cover as an analogy.

The ambient group is an arbitrary module over `ZMod 2`; it need not be finite.
The imported result supplies the finite center set and finite submodule.
-/

/-- PFR supplies a finite structured cover for the difference set. The number
of difference centers is strictly below `(2*K^9)^2`, while the submodule still
has cardinality at most that of the original set. The powers here are natural-number powers, matching
the upstream exponent-nine endpoint's exact interface. -/
```

## Evidence scope

This provenance transcription ran no Lean compilation, statement-equivalence check, fresh kernel replay, transitive axiom audit or independent mathematical review: `NOT_RUN`. Existing source-bound evidence and unresolved premises quoted above are preserved; this record neither supersedes them nor promotes a candidate or conditional result to accepted mathematics.
