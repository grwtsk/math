# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.PositiveCapacity.Variant984599a575dd3af9da4a2ce1083f231e89523ac28ab75899a501b3925ddc3c3c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a193c5dae348b1fa9153014e4bd8a0638fcd254d",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/PositiveCapacity/Variant984599a575dd3af9da4a2ce1083f231e89523ac28ab75899a501b3925ddc3c3c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PositiveCapacity/Variant984599a575dd3af9da4a2ce1083f231e89523ac28ab75899a501b3925ddc3c3c.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PositiveCapacity/Variant984599a575dd3af9da4a2ce1083f231e89523ac28ab75899a501b3925ddc3c3c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a193c5dae348b1fa9153014e4bd8a0638fcd254d`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/PositiveCapacity/Variant984599a575dd3af9da4a2ce1083f231e89523ac28ab75899a501b3925ddc3c3c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/PositiveCapacity/Variant984599a575dd3af9da4a2ce1083f231e89523ac28ab75899a501b3925ddc3c3c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.SemiLocalDefect.OperatorOrder` — import line 1; external provider; requires a separately pinned dependency.
- `Mathematics.SemiLocalDefect.PrimeUniverse` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [PositiveCapacity](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PositiveCapacity/Variant984599a575dd3af9da4a2ce1083f231e89523ac28ab75899a501b3925ddc3c3c.lean/declarations/positivecapacity--a76897189ffce8d558b9efce.md) | 15 | `declaration-track:a76897189ffce8d558b9efce6e0829fda2ebc65baacc2e3c4520433291dfa75d` |
| 2 | `def` | [PositiveCapacity.increment](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PositiveCapacity/Variant984599a575dd3af9da4a2ce1083f231e89523ac28ab75899a501b3925ddc3c3c.lean/declarations/positivecapacity-increment--64d31f839fb966b007fc1d57.md) | 36 | `declaration-track:64d31f839fb966b007fc1d57433de5b95a6ba4e54369ce3a46ce876d194c15da` |
| 3 | `def` | [PositiveCapacity.reduced](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PositiveCapacity/Variant984599a575dd3af9da4a2ce1083f231e89523ac28ab75899a501b3925ddc3c3c.lean/declarations/positivecapacity-reduced--6bee7971b9a461eb2bbc9f13.md) | 46 | `declaration-track:6bee7971b9a461eb2bbc9f131c52592c78fb966e6e43de0158bcf8c77e53e5ad` |
| 4 | `theorem` | [reduced_empty_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PositiveCapacity/Variant984599a575dd3af9da4a2ce1083f231e89523ac28ab75899a501b3925ddc3c3c.lean/declarations/reduced-empty-zero--0cd97695ef5e10de5f93d741.md) | 55 | `result-track:0cd97695ef5e10de5f93d741d732671a7aaedb63b7d0c24a962df27f62e41537` |
| 5 | `theorem` | [capacity_increment_nonnegative](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PositiveCapacity/Variant984599a575dd3af9da4a2ce1083f231e89523ac28ab75899a501b3925ddc3c3c.lean/declarations/capacity-increment-nonnegative--b132bd5d1367c2739365d4fc.md) | 64 | `result-track:b132bd5d1367c2739365d4fc2cabb8ee35fc2eb1030059e6867615ee380f9326` |
| 6 | `theorem` | [capacity_value_bounded](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PositiveCapacity/Variant984599a575dd3af9da4a2ce1083f231e89523ac28ab75899a501b3925ddc3c3c.lean/declarations/capacity-value-bounded--e2f12f282c4c47d3a63d7def.md) | 81 | `result-track:e2f12f282c4c47d3a63d7defa296ddb9a4e2879916c2e8514f94ff4aec5aefae` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
