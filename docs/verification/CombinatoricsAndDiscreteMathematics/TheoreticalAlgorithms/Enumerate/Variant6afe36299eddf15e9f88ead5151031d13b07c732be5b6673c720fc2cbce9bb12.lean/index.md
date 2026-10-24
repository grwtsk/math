# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Enumerate.Variant6afe36299eddf15e9f88ead5151031d13b07c732be5b6673c720fc2cbce9bb12

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5fddfad80f35073f809ff24c1ec1b2e7fcd93a2c",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Enumerate/Variant6afe36299eddf15e9f88ead5151031d13b07c732be5b6673c720fc2cbce9bb12.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Enumerate/Variant6afe36299eddf15e9f88ead5151031d13b07c732be5b6673c720fc2cbce9bb12.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Enumerate/Variant6afe36299eddf15e9f88ead5151031d13b07c732be5b6673c720fc2cbce9bb12.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5fddfad80f35073f809ff24c1ec1b2e7fcd93a2c`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Enumerate/Variant6afe36299eddf15e9f88ead5151031d13b07c732be5b6673c720fc2cbce9bb12.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Enumerate/Variant6afe36299eddf15e9f88ead5151031d13b07c732be5b6673c720fc2cbce9bb12.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Nat.Order.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [enumerate](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Enumerate/Variant6afe36299eddf15e9f88ead5151031d13b07c732be5b6673c720fc2cbce9bb12.lean/declarations/enumerate--108f7c5c86274f47e51f13a7.md) | 41 | `declaration-track:108f7c5c86274f47e51f13a7deaf234f52dc416a244f2bf8a8027154ff7c48e8` |
| 2 | `theorem` | [enumerate_eq_none_of_sel](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Enumerate/Variant6afe36299eddf15e9f88ead5151031d13b07c732be5b6673c720fc2cbce9bb12.lean/declarations/enumerate-eq-none-of-sel--8acf5cd127eee054c2606c63.md) | 48 | `result-track:8acf5cd127eee054c2606c63b07fa81894c4ca712bba172597dd2b1fc6647e75` |
| 3 | `theorem` | [enumerate_eq_none](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Enumerate/Variant6afe36299eddf15e9f88ead5151031d13b07c732be5b6673c720fc2cbce9bb12.lean/declarations/enumerate-eq-none--b83cf4b5c38da2957f597b6d.md) | 53 | `result-track:b83cf4b5c38da2957f597b6d0ced49e0ba05d634978ce8ac62a62fcd256c6dc1` |
| 4 | `theorem` | [enumerate_mem](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Enumerate/Variant6afe36299eddf15e9f88ead5151031d13b07c732be5b6673c720fc2cbce9bb12.lean/declarations/enumerate-mem--db56f567758e0f966a13d865.md) | 68 | `result-track:db56f567758e0f966a13d865e833301899ddd291d0b51e5d3a125eb9af815a36` |
| 5 | `theorem` | [enumerate_inj](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Enumerate/Variant6afe36299eddf15e9f88ead5151031d13b07c732be5b6673c720fc2cbce9bb12.lean/declarations/enumerate-inj--0a1a2dc07d42b2d657d8276b.md) | 81 | `result-track:0a1a2dc07d42b2d657d8276b5819df9cff4dd8d1016c89e1020f82109740b189` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
