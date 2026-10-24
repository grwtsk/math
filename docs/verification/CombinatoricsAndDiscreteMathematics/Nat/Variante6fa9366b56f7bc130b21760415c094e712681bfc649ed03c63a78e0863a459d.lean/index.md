# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Nat.Variante6fa9366b56f7bc130b21760415c094e712681bfc649ed03c63a78e0863a459d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5dce07d74f4a103cfe1e43881daef0662276159b",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Nat/Variante6fa9366b56f7bc130b21760415c094e712681bfc649ed03c63a78e0863a459d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Nat/Variante6fa9366b56f7bc130b21760415c094e712681bfc649ed03c63a78e0863a459d.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Nat/Variante6fa9366b56f7bc130b21760415c094e712681bfc649ed03c63a78e0863a459d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5dce07d74f4a103cfe1e43881daef0662276159b`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Nat/Variante6fa9366b56f7bc130b21760415c094e712681bfc649ed03c63a78e0863a459d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Nat/Variante6fa9366b56f7bc130b21760415c094e712681bfc649ed03c63a78e0863a459d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.BigOperators.Group.Finset.Lemmas` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.Finite.Lattice` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.SetTheory.Cardinal.Finite` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [even_sum_iff_even_card_odd](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Nat/Variante6fa9366b56f7bc130b21760415c094e712681bfc649ed03c63a78e0863a459d.lean/declarations/even-sum-iff-even-card-odd--693e8dc10be4ac525c4a8577.md) | 29 | `result-track:693e8dc10be4ac525c4a8577e5eca914831f8a610c0b4d5166d0d4731b078ece` |
| 2 | `lemma` | [odd_sum_iff_odd_card_odd](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Nat/Variante6fa9366b56f7bc130b21760415c094e712681bfc649ed03c63a78e0863a459d.lean/declarations/odd-sum-iff-odd-card-odd--09cb885e9e4b70308ee32df6.md) | 37 | `result-track:09cb885e9e4b70308ee32df6c271e78106580e253d4b4aa683bdd01e59c4ed0b` |
| 3 | `theorem` | [card_preimage_eq_sum_card_image_eq](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Nat/Variante6fa9366b56f7bc130b21760415c094e712681bfc649ed03c63a78e0863a459d.lean/declarations/card-preimage-eq-sum-card-image-eq--b98e8bbe468d74abea15e4ed.md) | 41 | `result-track:b98e8bbe468d74abea15e4ed62dd9a17b2e63ba85a4a72a4538f54bc639edf8b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
