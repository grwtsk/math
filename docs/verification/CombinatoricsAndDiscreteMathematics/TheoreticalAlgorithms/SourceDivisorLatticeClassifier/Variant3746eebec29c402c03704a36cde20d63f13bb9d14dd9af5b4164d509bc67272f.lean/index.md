# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.SourceDivisorLatticeClassifier.Variant3746eebec29c402c03704a36cde20d63f13bb9d14dd9af5b4164d509bc67272f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3265625ef2afc47937771de499058be9c262728f",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SourceDivisorLatticeClassifier/Variant3746eebec29c402c03704a36cde20d63f13bb9d14dd9af5b4164d509bc67272f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SourceDivisorLatticeClassifier/Variant3746eebec29c402c03704a36cde20d63f13bb9d14dd9af5b4164d509bc67272f.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SourceDivisorLatticeClassifier/Variant3746eebec29c402c03704a36cde20d63f13bb9d14dd9af5b4164d509bc67272f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3265625ef2afc47937771de499058be9c262728f`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SourceDivisorLatticeClassifier/Variant3746eebec29c402c03704a36cde20d63f13bb9d14dd9af5b4164d509bc67272f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SourceDivisorLatticeClassifier/Variant3746eebec29c402c03704a36cde20d63f13bb9d14dd9af5b4164d509bc67272f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Finset.Powerset` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Setoid.Basic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [divisorPattern](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SourceDivisorLatticeClassifier/Variant3746eebec29c402c03704a36cde20d63f13bb9d14dd9af5b4164d509bc67272f.lean/declarations/divisorpattern--e5e903fbfe577d1cf3c86079.md) | 28 | `declaration-track:e5e903fbfe577d1cf3c86079bd0dd00187ac3de7ce41e4bd62a3bd94539a0842` |
| 2 | `def` | [restrictPattern](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SourceDivisorLatticeClassifier/Variant3746eebec29c402c03704a36cde20d63f13bb9d14dd9af5b4164d509bc67272f.lean/declarations/restrictpattern--cc033067e3220586e69195cd.md) | 31 | `declaration-track:cc033067e3220586e69195cda21054a21caf2a58383a8be023a092dfba3da581` |
| 3 | `theorem` | [divisorPattern_restrict](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SourceDivisorLatticeClassifier/Variant3746eebec29c402c03704a36cde20d63f13bb9d14dd9af5b4164d509bc67272f.lean/declarations/divisorpattern-restrict--e2e88687560f0eb6dbfa7553.md) | 34 | `result-track:e2e88687560f0eb6dbfa7553aa8011ca64018b7c611e7315d9f488e27ad8f963` |
| 4 | `def` | [observation](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SourceDivisorLatticeClassifier/Variant3746eebec29c402c03704a36cde20d63f13bb9d14dd9af5b4164d509bc67272f.lean/declarations/observation--b37efad9f1991f5c0e170412.md) | 46 | `declaration-track:b37efad9f1991f5c0e1704120105af64b6fe6fa82d6fe1195c9a055f08328ac0` |
| 5 | `theorem` | [divisorPattern_union](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SourceDivisorLatticeClassifier/Variant3746eebec29c402c03704a36cde20d63f13bb9d14dd9af5b4164d509bc67272f.lean/declarations/divisorpattern-union--41888535a67ea7bc1a03d8c0.md) | 50 | `result-track:41888535a67ea7bc1a03d8c07cadf1afc128457864a4191da531dc249644c6cb` |
| 6 | `theorem` | [union_pattern_eq_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SourceDivisorLatticeClassifier/Variant3746eebec29c402c03704a36cde20d63f13bb9d14dd9af5b4164d509bc67272f.lean/declarations/union-pattern-eq-iff--ebabcba067abec1be194749f.md) | 57 | `result-track:ebabcba067abec1be194749f2d26f102ca38aebdbe9606c77c27cd13275d1926` |
| 7 | `theorem` | [observation_union](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SourceDivisorLatticeClassifier/Variant3746eebec29c402c03704a36cde20d63f13bb9d14dd9af5b4164d509bc67272f.lean/declarations/observation-union--0f203a0fb3014a638d2bc390.md) | 71 | `result-track:0f203a0fb3014a638d2bc39008d2d6529ef8e249e46ed1aeae65bff2e727230a` |
| 8 | `theorem` | [observation_antitone](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SourceDivisorLatticeClassifier/Variant3746eebec29c402c03704a36cde20d63f13bb9d14dd9af5b4164d509bc67272f.lean/declarations/observation-antitone--76ebb8f4ff7b112009f08e2a.md) | 78 | `result-track:76ebb8f4ff7b112009f08e2aee2e89bd15cdf30c8cf966cf208861eb6ccd55a6` |
| 9 | `theorem` | [observation_sup_le_inter](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SourceDivisorLatticeClassifier/Variant3746eebec29c402c03704a36cde20d63f13bb9d14dd9af5b4164d509bc67272f.lean/declarations/observation-sup-le-inter--f205aa9c03fa7e5a26af9ed8.md) | 87 | `result-track:f205aa9c03fa7e5a26af9ed86468eb0232bcf5b0473946c80458aaa7133eacd3` |
| 10 | `theorem` | [observation_two_bot](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SourceDivisorLatticeClassifier/Variant3746eebec29c402c03704a36cde20d63f13bb9d14dd9af5b4164d509bc67272f.lean/declarations/observation-two-bot--a8992031c4c3690c4578d902.md) | 92 | `result-track:a8992031c4c3690c4578d902f88f226cc18052fa3837f196943dcbd6ea3ec0ff` |
| 11 | `theorem` | [observation_three_bot](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SourceDivisorLatticeClassifier/Variant3746eebec29c402c03704a36cde20d63f13bb9d14dd9af5b4164d509bc67272f.lean/declarations/observation-three-bot--ac7056ac9202787fee6ce374.md) | 117 | `result-track:ac7056ac9202787fee6ce374c3e76db9368fff8331b65c6e01495f1a9f4fdfbf` |
| 12 | `theorem` | [strict_observation_join](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SourceDivisorLatticeClassifier/Variant3746eebec29c402c03704a36cde20d63f13bb9d14dd9af5b4164d509bc67272f.lean/declarations/strict-observation-join--0e69ed241b4ae772b33b9f2b.md) | 143 | `result-track:0e69ed241b4ae772b33b9f2b1fde8844f757c8593198cb2de158f5980e9612f3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
