# Verification target: GRWTSK.Analysis.ComplexAnalysis.ComplexWeights.Variant2451fa653d875238fb5f701293fc7cdc22ff433d7db79b37da3cc8ead1e3e0e5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4209829870befe3f863256bb57f97c686a696e8d",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/ComplexAnalysis/ComplexWeights/Variant2451fa653d875238fb5f701293fc7cdc22ff433d7db79b37da3cc8ead1e3e0e5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/ComplexAnalysis/ComplexWeights/Variant2451fa653d875238fb5f701293fc7cdc22ff433d7db79b37da3cc8ead1e3e0e5.lean/index.md) · [Full source](../../../../../mathematics/Analysis/ComplexAnalysis/ComplexWeights/Variant2451fa653d875238fb5f701293fc7cdc22ff433d7db79b37da3cc8ead1e3e0e5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4209829870befe3f863256bb57f97c686a696e8d`.

Source path: `GRWTSK/Analysis/ComplexAnalysis/ComplexWeights/Variant2451fa653d875238fb5f701293fc7cdc22ff433d7db79b37da3cc8ead1e3e0e5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/ComplexAnalysis/ComplexWeights/Variant2451fa653d875238fb5f701293fc7cdc22ff433d7db79b37da3cc8ead1e3e0e5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Folder.Rebuild.AnalyticNumberTheory.WeightMultiplicativity` — import line 6; external provider; requires a separately pinned dependency.
- `Folder.Rebuild.NumberTheory.MultiplicativeFunction` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.Basic` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Log.Basic` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [complexWeight](../../../../../mathematics/Analysis/ComplexAnalysis/ComplexWeights/Variant2451fa653d875238fb5f701293fc7cdc22ff433d7db79b37da3cc8ead1e3e0e5.lean/declarations/complexweight--8e7e186b3500d8412db49263.md) | 24 | `declaration-track:8e7e186b3500d8412db49263fd7c2b2198844857292ffc2cb70adacf9f71ebb1` |
| 2 | `theorem` | [complexWeight_zero](../../../../../mathematics/Analysis/ComplexAnalysis/ComplexWeights/Variant2451fa653d875238fb5f701293fc7cdc22ff433d7db79b37da3cc8ead1e3e0e5.lean/declarations/complexweight-zero--6028730e8da018d77f0d378f.md) | 29 | `result-track:6028730e8da018d77f0d378f762049fd54e416ebf4dfa805dfd73ade48f33499` |
| 3 | `theorem` | [complexWeight_one](../../../../../mathematics/Analysis/ComplexAnalysis/ComplexWeights/Variant2451fa653d875238fb5f701293fc7cdc22ff433d7db79b37da3cc8ead1e3e0e5.lean/declarations/complexweight-one--b7be09f5fb12a7f69495453e.md) | 34 | `result-track:b7be09f5fb12a7f69495453e65f1bb71d65e50dc8d4aee75efe9d5a393a42d18` |
| 4 | `theorem` | [complexWeight_of_pos](../../../../../mathematics/Analysis/ComplexAnalysis/ComplexWeights/Variant2451fa653d875238fb5f701293fc7cdc22ff433d7db79b37da3cc8ead1e3e0e5.lean/declarations/complexweight-of-pos--710580731198097384b7097b.md) | 39 | `result-track:710580731198097384b7097b5158dfc003ba3822cd3f45e0b3265b028a202cc3` |
| 5 | `theorem` | [norm_complexWeight_eq_posWeightReal_re](../../../../../mathematics/Analysis/ComplexAnalysis/ComplexWeights/Variant2451fa653d875238fb5f701293fc7cdc22ff433d7db79b37da3cc8ead1e3e0e5.lean/declarations/norm-complexweight-eq-posweightreal-re--3eef49497091a5ff84d31a23.md) | 47 | `result-track:3eef49497091a5ff84d31a23c969bd337e50715eedd8dca4e40435e49af1950b` |
| 6 | `theorem` | [norm_complexWeight_le_posWeightReal_re](../../../../../mathematics/Analysis/ComplexAnalysis/ComplexWeights/Variant2451fa653d875238fb5f701293fc7cdc22ff433d7db79b37da3cc8ead1e3e0e5.lean/declarations/norm-complexweight-le-posweightreal-re--c818b7d7497eedea00941c8f.md) | 60 | `result-track:c818b7d7497eedea00941c8f99e0ee43582ff25239298d91618874f119a494bc` |
| 7 | `theorem` | [complexWeight_mul](../../../../../mathematics/Analysis/ComplexAnalysis/ComplexWeights/Variant2451fa653d875238fb5f701293fc7cdc22ff433d7db79b37da3cc8ead1e3e0e5.lean/declarations/complexweight-mul--f5b6fc316db1be4dc6337a17.md) | 68 | `result-track:f5b6fc316db1be4dc6337a17001d8b4179b0b9786aed3df7349955b4891bdc45` |
| 8 | `theorem` | [complexWeight_completely_multiplicative](../../../../../mathematics/Analysis/ComplexAnalysis/ComplexWeights/Variant2451fa653d875238fb5f701293fc7cdc22ff433d7db79b37da3cc8ead1e3e0e5.lean/declarations/complexweight-completely-multiplicative--41864528557d17f695a8947a.md) | 91 | `result-track:41864528557d17f695a8947ad1d37ec3a5097806bbdcef7d65e3077f7d3c0de0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
