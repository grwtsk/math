# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.Intervals.Variant832f5118512e4308fed5153aedd00692a7cfbd7ec1977b5f4e42f40b801ee80d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b10143b1be0ec9034ff936c5cd220b7e0dcbc69a",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Intervals/Variant832f5118512e4308fed5153aedd00692a7cfbd7ec1977b5f4e42f40b801ee80d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Intervals/Variant832f5118512e4308fed5153aedd00692a7cfbd7ec1977b5f4e42f40b801ee80d.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Intervals/Variant832f5118512e4308fed5153aedd00692a7cfbd7ec1977b5f4e42f40b801ee80d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b10143b1be0ec9034ff936c5cd220b7e0dcbc69a`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Intervals/Variant832f5118512e4308fed5153aedd00692a7cfbd7ec1977b5f4e42f40b801ee80d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Intervals/Variant832f5118512e4308fed5153aedd00692a7cfbd7ec1977b5f4e42f40b801ee80d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.CompleteLatticeIntervals` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Order.CompactlyGenerated.Basic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [isCompactElement](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Intervals/Variant832f5118512e4308fed5153aedd00692a7cfbd7ec1977b5f4e42f40b801ee80d.lean/declarations/iscompactelement--6ce6099632e6cb52d0d3900a.md) | 18 | `result-track:6ce6099632e6cb52d0d3900a72e23ee365b1b26f2d5b9182ed42b1431e9b2caf` |
| 2 | `instance` | [instIsCompactlyGenerated](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Intervals/Variant832f5118512e4308fed5153aedd00692a7cfbd7ec1977b5f4e42f40b801ee80d.lean/declarations/instiscompactlygenerated--b6bd88f5318aa05d4227c475.md) | 26 | `declaration-track:b6bd88f5318aa05d4227c475b91df58a13407f3969c77ecce568e49d097acb2c` |
| 3 | `theorem` | [complementedLattice_of_complementedLattice_Iic](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Intervals/Variant832f5118512e4308fed5153aedd00692a7cfbd7ec1977b5f4e42f40b801ee80d.lean/declarations/complementedlattice-of-complementedlattice-iic--123e5cbb34a0ee2a268d24c6.md) | 45 | `result-track:123e5cbb34a0ee2a268d24c6c68bf8e859e6cc09b409a6a70d6b7a394d35ccf0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
