# Verification target: GRWTSK.Analysis.Complex.PochhammerJet

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7f3e26246abc542d8de2ce11dd28d8247cee6a4f",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/Complex/PochhammerJet.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/ComplexAnalysis/PochhammerJet.lean/index.md) · [Full source](../../../../mathematics/Analysis/ComplexAnalysis/PochhammerJet.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7f3e26246abc542d8de2ce11dd28d8247cee6a4f`.

Source path: `GRWTSK/Analysis/Complex/PochhammerJet.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/Complex/PochhammerJet.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.Polynomial.Pochhammer` — import line 4; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.Deriv.Mul` — import line 5; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [value](../../../../mathematics/Analysis/ComplexAnalysis/PochhammerJet.lean/declarations/value--f41610496a33b27c78688608.md) | 24 | `declaration-track:f41610496a33b27c78688608176c7a1547412be7b2528cc663bc831ae37398ae` |
| 2 | `def` | [slope](../../../../mathematics/Analysis/ComplexAnalysis/PochhammerJet.lean/declarations/slope--b87cb5f403f59737adea9b58.md) | 26 | `declaration-track:b87cb5f403f59737adea9b58d7241995e08c229a1b681ad7e9cb533a8c20ba79` |
| 3 | `theorem` | [value_zero](../../../../mathematics/Analysis/ComplexAnalysis/PochhammerJet.lean/declarations/value-zero--fb94a002493570e910b6b401.md) | 30 | `result-track:fb94a002493570e910b6b4013b213d7cb92f2b1f66aca85c9cda52d9ce66b08b` |
| 4 | `theorem` | [value_succ](../../../../mathematics/Analysis/ComplexAnalysis/PochhammerJet.lean/declarations/value-succ--641a130df42d94e57019a005.md) | 32 | `result-track:641a130df42d94e57019a00582c2ba3376701f9c2117aefaa474b9a37e5d698b` |
| 5 | `theorem` | [hasDerivAt_value](../../../../mathematics/Analysis/ComplexAnalysis/PochhammerJet.lean/declarations/hasderivat-value--434e243b383e9f2cba2ff4f3.md) | 36 | `result-track:434e243b383e9f2cba2ff4f37d8ec07bb771476a96dcb9601a5940fb5f3931a7` |
| 6 | `theorem` | [deriv_value](../../../../mathematics/Analysis/ComplexAnalysis/PochhammerJet.lean/declarations/deriv-value--bd7be9de027c0c7e289d8bc8.md) | 48 | `result-track:bd7be9de027c0c7e289d8bc84d37f13cfaceaa91bce53dc51f70fe1d5e70aeb9` |
| 7 | `theorem` | [vanishing_factor_control](../../../../mathematics/Analysis/ComplexAnalysis/PochhammerJet.lean/declarations/vanishing-factor-control--4c44a56781cb068fa2814396.md) | 52 | `result-track:4c44a56781cb068fa2814396f4f59cabfa6cafb5c2ed123afb5c119ee9ca9c0f` |
| 8 | `theorem` | [empty_product_control](../../../../mathematics/Analysis/ComplexAnalysis/PochhammerJet.lean/declarations/empty-product-control--65e6ca94c57d427a85703607.md) | 56 | `result-track:65e6ca94c57d427a85703607dcec4cccc6df11b298cdb9e764c0e535d4cbf050` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
