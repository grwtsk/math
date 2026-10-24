# Verification target: GRWTSK.Algebra.Valuation.Variant491a966273f22531b99d3a59dca798395243eee1b1897cdc9132da4b7de1e463

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "29f62357cb0cb6883141be7ee51ab8f1a88ba9df",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Valuation/Variant491a966273f22531b99d3a59dca798395243eee1b1897cdc9132da4b7de1e463.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Valuation/Variant491a966273f22531b99d3a59dca798395243eee1b1897cdc9132da4b7de1e463.lean/index.md) · [Full source](../../../../mathematics/Algebra/Valuation/Variant491a966273f22531b99d3a59dca798395243eee1b1897cdc9132da4b7de1e463.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `29f62357cb0cb6883141be7ee51ab8f1a88ba9df`.

Source path: `GRWTSK/Algebra/Valuation/Variant491a966273f22531b99d3a59dca798395243eee1b1897cdc9132da4b7de1e463.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Valuation/Variant491a966273f22531b99d3a59dca798395243eee1b1897cdc9132da4b7de1e463.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.HahnSeries.Multiplication` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Valuation.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [addVal](../../../../mathematics/Algebra/Valuation/Variant491a966273f22531b99d3a59dca798395243eee1b1897cdc9132da4b7de1e463.lean/declarations/addval--bf60665a48a023c1423b6ceb.md) | 47 | `declaration-track:bf60665a48a023c1423b6ceb2766093cfe5886505ac8a06743e6620d1541f7b9` |
| 2 | `theorem` | [addVal_apply](../../../../mathematics/Algebra/Valuation/Variant491a966273f22531b99d3a59dca798395243eee1b1897cdc9132da4b7de1e463.lean/declarations/addval-apply--fe7b96c9b8a51518d196edbd.md) | 58 | `result-track:fe7b96c9b8a51518d196edbd6c9c6acde43abf519f2b83cf35508d28ebf99e34` |
| 3 | `theorem` | [addVal_apply_of_ne](../../../../mathematics/Algebra/Valuation/Variant491a966273f22531b99d3a59dca798395243eee1b1897cdc9132da4b7de1e463.lean/declarations/addval-apply-of-ne--9ddc29ab040b1901d0e4c35f.md) | 63 | `result-track:9ddc29ab040b1901d0e4c35f6e3eb47e8437101a18d9f7ce0f83ab11561c3b20` |
| 4 | `theorem` | [addVal_le_of_coeff_ne_zero](../../../../mathematics/Algebra/Valuation/Variant491a966273f22531b99d3a59dca798395243eee1b1897cdc9132da4b7de1e463.lean/declarations/addval-le-of-coeff-ne-zero--618e98ed2b905b324a1851aa.md) | 66 | `result-track:618e98ed2b905b324a1851aa059783d9fd0dca52787e82c4a28f7b67a9b3e0bd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
