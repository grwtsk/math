# Verification target: GRWTSK.Analysis.AsymptoticAnalysis.Attempt03.Variantf51337e9dfb8d305297a44e17cc86290d40893bd405f0b7e0c360dc6fb989fc1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "16c29c89d999755af69d549130d0f87813a9d896",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/Attempt03/Variantf51337e9dfb8d305297a44e17cc86290d40893bd405f0b7e0c360dc6fb989fc1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt03/Variantf51337e9dfb8d305297a44e17cc86290d40893bd405f0b7e0c360dc6fb989fc1.lean/index.md) · [Full source](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt03/Variantf51337e9dfb8d305297a44e17cc86290d40893bd405f0b7e0c360dc6fb989fc1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `16c29c89d999755af69d549130d0f87813a9d896`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/Attempt03/Variantf51337e9dfb8d305297a44e17cc86290d40893bd405f0b7e0c360dc6fb989fc1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/Attempt03/Variantf51337e9dfb8d305297a44e17cc86290d40893bd405f0b7e0c360dc6fb989fc1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `ActualFirstStieltjes` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.PSeries` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Pow.Asymptotics` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecificLimits.Normed` — import line 4; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Ring.InfiniteSum` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [outerWeight](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt03/Variantf51337e9dfb8d305297a44e17cc86290d40893bd405f0b7e0c360dc6fb989fc1.lean/declarations/outerweight--20e49daba9ae2ae303631bae.md) | 18 | `declaration-track:20e49daba9ae2ae303631bae4d5fec528920fbb6d59226ff99a89e5352dac533` |
| 2 | `def` | [exponentWeight](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt03/Variantf51337e9dfb8d305297a44e17cc86290d40893bd405f0b7e0c360dc6fb989fc1.lean/declarations/exponentweight--b61e110f58c34501b47d84a5.md) | 20 | `declaration-track:b61e110f58c34501b47d84a55086bae332a33de2d5be3620d3d66f36d9f6d9b5` |
| 3 | `def` | [momentAtom](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt03/Variantf51337e9dfb8d305297a44e17cc86290d40893bd405f0b7e0c360dc6fb989fc1.lean/declarations/momentatom--3c491de31b12ba573a38de96.md) | 22 | `declaration-track:3c491de31b12ba573a38de96159070dd2e2a7a3101b18206407b066e6e818421` |
| 4 | `def` | [primeMomentAtom](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt03/Variantf51337e9dfb8d305297a44e17cc86290d40893bd405f0b7e0c360dc6fb989fc1.lean/declarations/primemomentatom--85764fe4c94efc748a2f0297.md) | 25 | `declaration-track:85764fe4c94efc748a2f0297b5794ec36a96bf3b4ad3589209e726b50d1c92dc` |
| 5 | `def` | [properPowerMoment](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt03/Variantf51337e9dfb8d305297a44e17cc86290d40893bd405f0b7e0c360dc6fb989fc1.lean/declarations/properpowermoment--c4d824b44d0a9f13b105cb8b.md) | 27 | `declaration-track:c4d824b44d0a9f13b105cb8b70429edfb0d35488b097f51b7205254f508d718c` |
| 6 | `def` | [properPowerB1](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt03/Variantf51337e9dfb8d305297a44e17cc86290d40893bd405f0b7e0c360dc6fb989fc1.lean/declarations/properpowerb1--2c9cc4889c3874d7af2a8343.md) | 29 | `declaration-track:2c9cc4889c3874d7af2a834371a33f2b989a6aa17d9442023528b56b99d8a3e3` |
| 7 | `def` | [properPowerB2](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt03/Variantf51337e9dfb8d305297a44e17cc86290d40893bd405f0b7e0c360dc6fb989fc1.lean/declarations/properpowerb2--c9d9821710e24f904b821e99.md) | 31 | `declaration-track:c9d9821710e24f904b821e99471b9b2e06b0a68131d98d606cbbb58a4f399ede` |
| 8 | `theorem` | [outerWeight_nonneg](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt03/Variantf51337e9dfb8d305297a44e17cc86290d40893bd405f0b7e0c360dc6fb989fc1.lean/declarations/outerweight-nonneg--3bafe3223d4cacfa5c940fce.md) | 33 | `result-track:3bafe3223d4cacfa5c940fce7e495e2071d8c5b41226a8b43e55c994c8139a40` |
| 9 | `theorem` | [exponentWeight_nonneg](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt03/Variantf51337e9dfb8d305297a44e17cc86290d40893bd405f0b7e0c360dc6fb989fc1.lean/declarations/exponentweight-nonneg--4b8af02d22d086d2250826ce.md) | 41 | `result-track:4b8af02d22d086d2250826ce638444731597a47d4cf1bd63f254b33592e95deb` |
| 10 | `theorem` | [momentAtom_nonneg](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt03/Variantf51337e9dfb8d305297a44e17cc86290d40893bd405f0b7e0c360dc6fb989fc1.lean/declarations/momentatom-nonneg--f1c70426526ebb3ad2338c0c.md) | 45 | `result-track:f1c70426526ebb3ad2338c0c036152da426c491d4851b90641837e362c9d3920` |
| 11 | `theorem` | [outerWeight_summable](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt03/Variantf51337e9dfb8d305297a44e17cc86290d40893bd405f0b7e0c360dc6fb989fc1.lean/declarations/outerweight-summable--1f9704463dc83a1ad2734feb.md) | 53 | `result-track:1f9704463dc83a1ad2734feb23cd69f8d4a0ee061f4aa6f30ed0e5d603a64e57` |
| 12 | `theorem` | [exponentWeight_summable](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt03/Variantf51337e9dfb8d305297a44e17cc86290d40893bd405f0b7e0c360dc6fb989fc1.lean/declarations/exponentweight-summable--a654d06c327db58ac2fc759a.md) | 83 | `result-track:a654d06c327db58ac2fc759a6b4b6a9be11a11f49a819b20558bf2d095866721` |
| 13 | `theorem` | [momentAtom_le_product](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt03/Variantf51337e9dfb8d305297a44e17cc86290d40893bd405f0b7e0c360dc6fb989fc1.lean/declarations/momentatom-le-product--d16fedeb251532ca7489492d.md) | 92 | `result-track:d16fedeb251532ca7489492dd0bcfd865a41923ab310769d99910608bcdd5c94` |
| 14 | `theorem` | [prime_outerWeight_summable](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt03/Variantf51337e9dfb8d305297a44e17cc86290d40893bd405f0b7e0c360dc6fb989fc1.lean/declarations/prime-outerweight-summable--26cec9416cdcd782592a4d1e.md) | 113 | `result-track:26cec9416cdcd782592a4d1ef400d392cbf00ce8defcad7d35eb0d4d29f4f987` |
| 15 | `theorem` | [primeMomentAtom_summable](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt03/Variantf51337e9dfb8d305297a44e17cc86290d40893bd405f0b7e0c360dc6fb989fc1.lean/declarations/primemomentatom-summable--cf25e0f6117108a9e2e84c9c.md) | 117 | `result-track:cf25e0f6117108a9e2e84c9c94711d119dd21c85a8f0f9f34c187b00b5990a30` |
| 16 | `theorem` | [primeMomentAtom_inner_summable](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt03/Variantf51337e9dfb8d305297a44e17cc86290d40893bd405f0b7e0c360dc6fb989fc1.lean/declarations/primemomentatom-inner-summable--ebf3e01ed3a271ba4c635269.md) | 124 | `result-track:ebf3e01ed3a271ba4c63526950a742e1329162a725140eb8cabca0006cad45f0` |
| 17 | `theorem` | [primeMomentAtom_outer_summable](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt03/Variantf51337e9dfb8d305297a44e17cc86290d40893bd405f0b7e0c360dc6fb989fc1.lean/declarations/primemomentatom-outer-summable--96886fd6483a6e336b00fff3.md) | 129 | `result-track:96886fd6483a6e336b00fff30135ef41370c9b859b5f643427e4a71fe8cb2ba1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
