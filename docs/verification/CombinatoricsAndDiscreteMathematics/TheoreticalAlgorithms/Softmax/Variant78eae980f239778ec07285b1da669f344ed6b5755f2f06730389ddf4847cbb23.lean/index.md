# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Softmax.Variant78eae980f239778ec07285b1da669f344ed6b5755f2f06730389ddf4847cbb23

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "aefd7b7119841767c017e04b90beb68ef213f1cc",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Softmax/Variant78eae980f239778ec07285b1da669f344ed6b5755f2f06730389ddf4847cbb23.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Softmax/Variant78eae980f239778ec07285b1da669f344ed6b5755f2f06730389ddf4847cbb23.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Softmax/Variant78eae980f239778ec07285b1da669f344ed6b5755f2f06730389ddf4847cbb23.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `aefd7b7119841767c017e04b90beb68ef213f1cc`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Softmax/Variant78eae980f239778ec07285b1da669f344ed6b5755f2f06730389ddf4847cbb23.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Softmax/Variant78eae980f239778ec07285b1da669f344ed6b5755f2f06730389ddf4847cbb23.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `LeanCert.ML.IntervalVector` — import line 6; external provider; requires a separately pinned dependency.
- `LeanCert.Engine.TaylorModel` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [expVector](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Softmax/Variant78eae980f239778ec07285b1da669f344ed6b5755f2f06730389ddf4847cbb23.lean/declarations/expvector--9196808fa4e8729f34daa932.md) | 35 | `declaration-track:9196808fa4e8729f34daa932b36d77ff1d55d1e4aac6829c8f180b663ace891d` |
| 2 | `def` | [logSumExp](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Softmax/Variant78eae980f239778ec07285b1da669f344ed6b5755f2f06730389ddf4847cbb23.lean/declarations/logsumexp--2b963de25438546bd1785711.md) | 49 | `declaration-track:2b963de25438546bd1785711decc1d7cdba298ba33e3b67f5179f5a7b5ef5054` |
| 3 | `def` | [softmaxComponent](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Softmax/Variant78eae980f239778ec07285b1da669f344ed6b5755f2f06730389ddf4847cbb23.lean/declarations/softmaxcomponent--02bb64f7c18e943f10a02506.md) | 84 | `declaration-track:02bb64f7c18e943f10a025061cf8a580ef6b275af27499fd888f39cad4f33a5e` |
| 4 | `def` | [softmax](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Softmax/Variant78eae980f239778ec07285b1da669f344ed6b5755f2f06730389ddf4847cbb23.lean/declarations/softmax--dfcde57e60ceaf619b986620.md) | 114 | `declaration-track:dfcde57e60ceaf619b9866209c8066993b3a9f667c2095061c26ac33918d82e3` |
| 5 | `theorem` | [mem_foldl_add](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Softmax/Variant78eae980f239778ec07285b1da669f344ed6b5755f2f06730389ddf4847cbb23.lean/declarations/mem-foldl-add--ded311a99775283616d92751.md) | 124 | `result-track:ded311a99775283616d927512cbab9532fa904c166fd2c0df0cee57931492be6` |
| 6 | `def` | [Real.softmax](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Softmax/Variant78eae980f239778ec07285b1da669f344ed6b5755f2f06730389ddf4847cbb23.lean/declarations/real-softmax--1637f9ae477f015ff5b56907.md) | 154 | `declaration-track:1637f9ae477f015ff5b56907322ff0f319c6062d45188324c8c92d451814225c` |
| 7 | `theorem` | [softmax_algebraic_identity](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Softmax/Variant78eae980f239778ec07285b1da669f344ed6b5755f2f06730389ddf4847cbb23.lean/declarations/softmax-algebraic-identity--a0f396f5b0e2dc6d1a814b4d.md) | 168 | `result-track:a0f396f5b0e2dc6d1a814b4d15ed360608cda95d3f9e558c0d51391d87a6313a` |
| 8 | `theorem` | [mem_softmax](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Softmax/Variant78eae980f239778ec07285b1da669f344ed6b5755f2f06730389ddf4847cbb23.lean/declarations/mem-softmax--a02888a0e69825172fb1f411.md) | 203 | `result-track:a02888a0e69825172fb1f411989090bbd3a354d9f4c68c72ca8d90cb2f534317` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
