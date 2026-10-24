# Verification target: GRWTSK.Analysis.Fourier.FiniteExponentialLayers

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "30e10c1400fdf96404308eab4533eef097c9d33d",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/Fourier/FiniteExponentialLayers.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FiniteExponentialLayers.lean/index.md) · [Full source](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FiniteExponentialLayers.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `30e10c1400fdf96404308eab4533eef097c9d33d`.

Source path: `GRWTSK/Analysis/Fourier/FiniteExponentialLayers.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/Fourier/FiniteExponentialLayers.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecialFunctions.Exp` — import line 4; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finset.Card` — import line 5; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.BigOperators.Group.Finset` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [lowBand](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FiniteExponentialLayers.lean/declarations/lowband--099e47d2c699bb31fd7df616.md) | 22 | `declaration-track:099e47d2c699bb31fd7df6166a3234f668469d405f3baed2488e073b0f0a0a54` |
| 2 | `def` | [dyadicBand](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FiniteExponentialLayers.lean/declarations/dyadicband--8e5163f5078a8a59f4e91a90.md) | 25 | `declaration-track:8e5163f5078a8a59f4e91a90c872e17476b5d5e526f0f28ad1c56b8ce5750f30` |
| 3 | `theorem` | [dyadic_cover](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FiniteExponentialLayers.lean/declarations/dyadic-cover--75e820ea843f0ff98c1db979.md) | 28 | `result-track:75e820ea843f0ff98c1db979bb19b8239ac4f64c1787ccc00019de95886dfcc0` |
| 4 | `theorem` | [exp_neg_le_one](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FiniteExponentialLayers.lean/declarations/exp-neg-le-one--44420fa3f504f93376891d55.md) | 43 | `result-track:44420fa3f504f93376891d55b7c08773390689596b23663c307491ad15db8568` |
| 5 | `theorem` | [sum_exp_neg_le_layers](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FiniteExponentialLayers.lean/declarations/sum-exp-neg-le-layers--48c1081b99e99e1dc395eaa8.md) | 48 | `result-track:48c1081b99e99e1dc395eaa841509fcbbec48a2c5029ea61c56cafb218545d32` |
| 6 | `theorem` | [exp_dyadic_term_le_geometric](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FiniteExponentialLayers.lean/declarations/exp-dyadic-term-le-geometric--a41a84eb760efeb2997e7a9f.md) | 92 | `result-track:a41a84eb760efeb2997e7a9f0ad9b4f583f455cf73ef4a3986ae8a2dc3767a9e` |
| 7 | `theorem` | [sum_exp_dyadic_le_geometric](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FiniteExponentialLayers.lean/declarations/sum-exp-dyadic-le-geometric--a6cbb7cbe404d665feff3e14.md) | 110 | `result-track:a6cbb7cbe404d665feff3e14573a2e640598d4bbfa02762600453ef24d7bdbcb` |
| 8 | `theorem` | [sum_exp_dyadic_le_two](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FiniteExponentialLayers.lean/declarations/sum-exp-dyadic-le-two--6154ee8e914c6348c9b136fb.md) | 116 | `result-track:6154ee8e914c6348c9b136fb9b09969079d866beb9e651f9185e465ff2dbd595` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
