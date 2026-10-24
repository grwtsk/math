# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.Inputs.Variant2b63108ede9232a834c5f3fea281c789ce6af0edf4cdc9cbc6dc26fa139bb8eb

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e469ff09f771be09c30ddd2b49d0c7667f9d8be6",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Inputs/Variant2b63108ede9232a834c5f3fea281c789ce6af0edf4cdc9cbc6dc26fa139bb8eb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Inputs/Variant2b63108ede9232a834c5f3fea281c789ce6af0edf4cdc9cbc6dc26fa139bb8eb.lean/index.md) · [Full source](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Inputs/Variant2b63108ede9232a834c5f3fea281c789ce6af0edf4cdc9cbc6dc26fa139bb8eb.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e469ff09f771be09c30ddd2b49d0c7667f9d8be6`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Inputs/Variant2b63108ede9232a834c5f3fea281c789ce6af0edf4cdc9cbc6dc26fa139bb8eb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Inputs/Variant2b63108ede9232a834c5f3fea281c789ce6af0edf4cdc9cbc6dc26fa139bb8eb.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Zeta23.XiPrime.Assembly` — import line 11; external provider; requires a separately pinned dependency.
- `Zeta23.XiPrime.PrimeSide.Moments` — import line 12; external provider; requires a separately pinned dependency.
- `Zeta23.XiPrime.Window` — import line 13; external provider; requires a separately pinned dependency.
- `Zeta23.XiPrime.Window.FlatAdm` — import line 14; external provider; requires a separately pinned dependency.
- `Zeta23.XiPrime.Window.Quartic` — import line 15; external provider; requires a separately pinned dependency.
- `Zeta23.XiPrime.QuarticWindow` — import line 16; external provider; requires a separately pinned dependency.
- `Zeta23.XiPrime.Transfer` — import line 17; external provider; requires a separately pinned dependency.
- `Zeta23.XiPrime.PrimeSide.Final` — import line 18; external provider; requires a separately pinned dependency.
- `Zeta23.XiPrime.Transfer.W` — import line 19; external provider; requires a separately pinned dependency.
- `Zeta23.XiPrime.Coeff.ReexpansionW` — import line 20; external provider; requires a separately pinned dependency.
- `Zeta23.XiPrime.Certificate.D1` — import line 21; external provider; requires a separately pinned dependency.
- `Zeta23.GammaFacts.Complete` — import line 22; external provider; requires a separately pinned dependency.
- `Zeta23.MV.Final` — import line 23; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [coeffMoments_flat_D1](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Inputs/Variant2b63108ede9232a834c5f3fea281c789ce6af0edf4cdc9cbc6dc26fa139bb8eb.lean/declarations/coeffmoments-flat-d1--71b02e41f81334e4b46c9347.md) | 37 | `result-track:71b02e41f81334e4b46c93473d5c7aca4505c9c78f2eecd2ebc00bfe6cc08b82` |
| 2 | `theorem` | [coeffMoments_quartic_D1](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Inputs/Variant2b63108ede9232a834c5f3fea281c789ce6af0edf4cdc9cbc6dc26fa139bb8eb.lean/declarations/coeffmoments-quartic-d1--1b5490b1d4d76055dabbe59b.md) | 53 | `result-track:1b5490b1d4d76055dabbe59b7292f06f304ee26a0661f5a27e49d0a1bf9b850e` |
| 3 | `theorem` | [coeffMoments_quartic_xi](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Inputs/Variant2b63108ede9232a834c5f3fea281c789ce6af0edf4cdc9cbc6dc26fa139bb8eb.lean/declarations/coeffmoments-quartic-xi--0992f913394d3e909e9788d4.md) | 67 | `result-track:0992f913394d3e909e9788d48bbdd6a0ee45eccbc2ce4b466ed7123ba916ce62` |
| 4 | `theorem` | [coeffMoments_flat_xi](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Inputs/Variant2b63108ede9232a834c5f3fea281c789ce6af0edf4cdc9cbc6dc26fa139bb8eb.lean/declarations/coeffmoments-flat-xi--d6c988da5b74ef3fe9b86bd2.md) | 73 | `result-track:d6c988da5b74ef3fe9b86bd28ecebe451a56174ea6217769d667dc5f0c7d2a07` |
| 5 | `theorem` | [coeffMoments_flat_w](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Inputs/Variant2b63108ede9232a834c5f3fea281c789ce6af0edf4cdc9cbc6dc26fa139bb8eb.lean/declarations/coeffmoments-flat-w--443ab9f115de9f7f7caa62e5.md) | 79 | `result-track:443ab9f115de9f7f7caa62e5cdcfcc68bf78eb7491c472270a0d9d26b40f6073` |
| 6 | `theorem` | [traceTransfer_flat](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Inputs/Variant2b63108ede9232a834c5f3fea281c789ce6af0edf4cdc9cbc6dc26fa139bb8eb.lean/declarations/tracetransfer-flat--27bf316f074b7a684f2acf27.md) | 94 | `result-track:27bf316f074b7a684f2acf277b3c45329f81a942abe5c26d64ff44cf1b182a17` |
| 7 | `theorem` | [traceTransfer_quartic](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Inputs/Variant2b63108ede9232a834c5f3fea281c789ce6af0edf4cdc9cbc6dc26fa139bb8eb.lean/declarations/tracetransfer-quartic--ffc100000a4d00e250d52571.md) | 108 | `result-track:ffc100000a4d00e250d52571760affe1b022291d755291a86f651a5b0f886715` |
| 8 | `theorem` | [traceTransfer_flat_w](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Inputs/Variant2b63108ede9232a834c5f3fea281c789ce6af0edf4cdc9cbc6dc26fa139bb8eb.lean/declarations/tracetransfer-flat-w--4355ab521050c68a5f0aba83.md) | 128 | `result-track:4355ab521050c68a5f0aba8315d1c6936e9850fcaabb4b15274821cf91ef150f` |
| 9 | `theorem` | [coeffMoments_quartic_w](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Inputs/Variant2b63108ede9232a834c5f3fea281c789ce6af0edf4cdc9cbc6dc26fa139bb8eb.lean/declarations/coeffmoments-quartic-w--565d7a20707b0956392a0ad6.md) | 142 | `result-track:565d7a20707b0956392a0ad6c783b3b4d7e5c5a3cd8a75c3036dcc40250af865` |
| 10 | `theorem` | [traceTransfer_quartic_w](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Inputs/Variant2b63108ede9232a834c5f3fea281c789ce6af0edf4cdc9cbc6dc26fa139bb8eb.lean/declarations/tracetransfer-quartic-w--f966fd82b3f6488caf2c7c28.md) | 148 | `result-track:f966fd82b3f6488caf2c7c2822f203dc555576fde021009ff74bff06eb3c19be` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
