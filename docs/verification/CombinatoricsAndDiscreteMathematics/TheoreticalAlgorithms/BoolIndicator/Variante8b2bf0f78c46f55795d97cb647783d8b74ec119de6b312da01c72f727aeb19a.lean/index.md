# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.BoolIndicator.Variante8b2bf0f78c46f55795d97cb647783d8b74ec119de6b312da01c72f727aeb19a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4631bd78954b593b6b923a93c0139c3cc9103bab",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BoolIndicator/Variante8b2bf0f78c46f55795d97cb647783d8b74ec119de6b312da01c72f727aeb19a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BoolIndicator/Variante8b2bf0f78c46f55795d97cb647783d8b74ec119de6b312da01c72f727aeb19a.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BoolIndicator/Variante8b2bf0f78c46f55795d97cb647783d8b74ec119de6b312da01c72f727aeb19a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4631bd78954b593b6b923a93c0139c3cc9103bab`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BoolIndicator/Variante8b2bf0f78c46f55795d97cb647783d8b74ec119de6b312da01c72f727aeb19a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BoolIndicator/Variante8b2bf0f78c46f55795d97cb647783d8b74ec119de6b312da01c72f727aeb19a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Set.Basic` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [boolIndicator](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BoolIndicator/Variante8b2bf0f78c46f55795d97cb647783d8b74ec119de6b312da01c72f727aeb19a.lean/declarations/boolindicator--731be5e23177e2c179a69455.md) | 31 | `declaration-track:731be5e23177e2c179a69455c3e4ba5d5af02debc1b169e5a1a96c83cd2b071d` |
| 2 | `theorem` | [mem_iff_boolIndicator](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BoolIndicator/Variante8b2bf0f78c46f55795d97cb647783d8b74ec119de6b312da01c72f727aeb19a.lean/declarations/mem-iff-boolindicator--1d30577595f9aeabda025c52.md) | 34 | `result-track:1d30577595f9aeabda025c52b16d379ec4ff72c09ca39305c740f25aade23906` |
| 3 | `theorem` | [notMem_iff_boolIndicator](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BoolIndicator/Variante8b2bf0f78c46f55795d97cb647783d8b74ec119de6b312da01c72f727aeb19a.lean/declarations/notmem-iff-boolindicator--90137a39d7a4fc2ab93c9983.md) | 38 | `result-track:90137a39d7a4fc2ab93c99830723f37eb00a2e0064dc6d6f845869c48072fc64` |
| 4 | `theorem` | [preimage_boolIndicator_true](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BoolIndicator/Variante8b2bf0f78c46f55795d97cb647783d8b74ec119de6b312da01c72f727aeb19a.lean/declarations/preimage-boolindicator-true--f59bfca2bf4a7e42bc204c23.md) | 44 | `result-track:f59bfca2bf4a7e42bc204c23dc39399b617833c1431074f7a8842393dbd0f77b` |
| 5 | `theorem` | [preimage_boolIndicator_false](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BoolIndicator/Variante8b2bf0f78c46f55795d97cb647783d8b74ec119de6b312da01c72f727aeb19a.lean/declarations/preimage-boolindicator-false--f8b2cbfceab474043b8899c8.md) | 47 | `result-track:f8b2cbfceab474043b8899c80d73d08d4c88814f4804bcf9acee6919dd454b40` |
| 6 | `theorem` | [preimage_boolIndicator_eq_union](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BoolIndicator/Variante8b2bf0f78c46f55795d97cb647783d8b74ec119de6b312da01c72f727aeb19a.lean/declarations/preimage-boolindicator-eq-union--9933b8acd2e8461e4a1099b9.md) | 51 | `result-track:9933b8acd2e8461e4a1099b9ed75f1c952ff2dc9af34c2ccea87df02cf2f8968` |
| 7 | `theorem` | [preimage_boolIndicator](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BoolIndicator/Variante8b2bf0f78c46f55795d97cb647783d8b74ec119de6b312da01c72f727aeb19a.lean/declarations/preimage-boolindicator--f48723e13b891288f28aeb1a.md) | 57 | `result-track:f48723e13b891288f28aeb1a55a361d1663487c05421ca8c41b12a4636a79c33` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
