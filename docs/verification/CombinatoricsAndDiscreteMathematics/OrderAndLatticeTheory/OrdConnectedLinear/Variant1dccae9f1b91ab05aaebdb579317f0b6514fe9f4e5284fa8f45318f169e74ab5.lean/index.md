# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.OrdConnectedLinear.Variant1dccae9f1b91ab05aaebdb579317f0b6514fe9f4e5284fa8f45318f169e74ab5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "55e92d67fde5080d9aef5d9028362acd26eba0b0",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrdConnectedLinear/Variant1dccae9f1b91ab05aaebdb579317f0b6514fe9f4e5284fa8f45318f169e74ab5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrdConnectedLinear/Variant1dccae9f1b91ab05aaebdb579317f0b6514fe9f4e5284fa8f45318f169e74ab5.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrdConnectedLinear/Variant1dccae9f1b91ab05aaebdb579317f0b6514fe9f4e5284fa8f45318f169e74ab5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `55e92d67fde5080d9aef5d9028362acd26eba0b0`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrdConnectedLinear/Variant1dccae9f1b91ab05aaebdb579317f0b6514fe9f4e5284fa8f45318f169e74ab5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrdConnectedLinear/Variant1dccae9f1b91ab05aaebdb579317f0b6514fe9f4e5284fa8f45318f169e74ab5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Nat.Lattice` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Int.ConditionallyCompleteOrder` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Int.Interval` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Int.SuccPred` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [Set.Nonempty.ordConnected_iff_of_bdd](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrdConnectedLinear/Variant1dccae9f1b91ab05aaebdb579317f0b6514fe9f4e5284fa8f45318f169e74ab5.lean/declarations/set-nonempty-ordconnected-iff-of-bdd--06b938d945963fd7fe847a86.md) | 31 | `result-track:06b938d945963fd7fe847a86463260261141c6858a4b9b9e276718322990501d` |
| 2 | `lemma` | [Set.Nonempty.ordConnected_iff_of_bdd'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrdConnectedLinear/Variant1dccae9f1b91ab05aaebdb579317f0b6514fe9f4e5284fa8f45318f169e74ab5.lean/declarations/set-nonempty-ordconnected-iff-of-bdd--3192f5b0f4fbcd73200c44ab.md) | 41 | `result-track:3192f5b0f4fbcd73200c44abf3b1bf075a1bdee85e4c4e325ab08a15ad5392d5` |
| 3 | `lemma` | [Set.ordConnected_iff_disjoint_Ioo_empty](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrdConnectedLinear/Variant1dccae9f1b91ab05aaebdb579317f0b6514fe9f4e5284fa8f45318f169e74ab5.lean/declarations/set-ordconnected-iff-disjoint-ioo-empty--14fc4c9f38536f37fe1550e2.md) | 50 | `result-track:14fc4c9f38536f37fe1550e274fc6ececbfee0cf10a4a0ed087d952bba6733e9` |
| 4 | `lemma` | [Set.Nonempty.eq_Icc_iff_nat](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrdConnectedLinear/Variant1dccae9f1b91ab05aaebdb579317f0b6514fe9f4e5284fa8f45318f169e74ab5.lean/declarations/set-nonempty-eq-icc-iff-nat--554725fe622724c5a8eb4a4e.md) | 71 | `result-track:554725fe622724c5a8eb4a4e9851f6fb7636504780c951016afaab27f0a7a1e4` |
| 5 | `lemma` | [Set.Nonempty.eq_Icc_iff_int](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrdConnectedLinear/Variant1dccae9f1b91ab05aaebdb579317f0b6514fe9f4e5284fa8f45318f169e74ab5.lean/declarations/set-nonempty-eq-icc-iff-int--cf96883a40766b602ba252de.md) | 76 | `result-track:cf96883a40766b602ba252ded7b94f5568a5f0e4799850567ec6d1ef8298ba0a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
