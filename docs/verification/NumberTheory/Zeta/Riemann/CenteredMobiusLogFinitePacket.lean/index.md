# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.CenteredMobiusLogFinitePacket

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4c49cb92706e9dcc393cb39773a6a1d1d84bdeb9",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/CenteredMobiusLogFinitePacket.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/CenteredMobiusLogFinitePacket.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/CenteredMobiusLogFinitePacket.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4c49cb92706e9dcc393cb39773a6a1d1d84bdeb9`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/CenteredMobiusLogFinitePacket.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/CenteredMobiusLogFinitePacket.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.NumberTheory.ArithmeticFunction.VonMangoldt` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [mobiusReal](../../../../../mathematics/NumberTheory/Zeta/Riemann/CenteredMobiusLogFinitePacket.lean/declarations/mobiusreal--c9f6816e04e02e6ec033bc6b.md) | 14 | `declaration-track:c9f6816e04e02e6ec033bc6b4784304f8cd97ff7425c9a7ba153626e9c56e93f` |
| 2 | `def` | [centeredVonMangoldtAtom](../../../../../mathematics/NumberTheory/Zeta/Riemann/CenteredMobiusLogFinitePacket.lean/declarations/centeredvonmangoldtatom--7d50a9ccbbf97b7281801ca6.md) | 15 | `declaration-track:7d50a9ccbbf97b7281801ca640cdc38d41a7d0a0d71b5244eaca662883a0ea61` |
| 3 | `def` | [centeredMobiusLogDivisorIndexSet](../../../../../mathematics/NumberTheory/Zeta/Riemann/CenteredMobiusLogFinitePacket.lean/declarations/centeredmobiuslogdivisorindexset--3c78286502990ee3254c51d2.md) | 16 | `declaration-track:3c78286502990ee3254c51d22dfdfef583495515687036d3e06621e05c88c877` |
| 4 | `def` | [centeredMobiusLogDivisorTerm](../../../../../mathematics/NumberTheory/Zeta/Riemann/CenteredMobiusLogFinitePacket.lean/declarations/centeredmobiuslogdivisorterm--b50e418ed682d4f39ae1570d.md) | 18 | `declaration-track:b50e418ed682d4f39ae1570d9d47910c0c5d592533aa0f64a5089f8845611849` |
| 5 | `def` | [centeredMobiusLogDivisorIndexSum](../../../../../mathematics/NumberTheory/Zeta/Riemann/CenteredMobiusLogFinitePacket.lean/declarations/centeredmobiuslogdivisorindexsum--94de5dfb9772ee1abba5347b.md) | 21 | `declaration-track:94de5dfb9772ee1abba5347bc1ffb96c97b8b1da0323a50bda801625a7205a3a` |
| 6 | `def` | [centeredMobiusLogDivisorPairBlock](../../../../../mathematics/NumberTheory/Zeta/Riemann/CenteredMobiusLogFinitePacket.lean/declarations/centeredmobiuslogdivisorpairblock--3e4aaea44f065a5b1df9af9d.md) | 23 | `declaration-track:3e4aaea44f065a5b1df9af9dad33ace56929b1e48ecb0b0badcbfab496a334f7` |
| 7 | `theorem` | [centeredMobiusLogDivisorTerm_none](../../../../../mathematics/NumberTheory/Zeta/Riemann/CenteredMobiusLogFinitePacket.lean/declarations/centeredmobiuslogdivisorterm-none--845eb2d916482119c0be244c.md) | 27 | `result-track:845eb2d916482119c0be244c713b95cac25e67b1afdffb3db106333037055b98` |
| 8 | `theorem` | [centeredMobiusLogDivisorTerm_some](../../../../../mathematics/NumberTheory/Zeta/Riemann/CenteredMobiusLogFinitePacket.lean/declarations/centeredmobiuslogdivisorterm-some--a35f14392bb5d018db3a0e89.md) | 29 | `result-track:a35f14392bb5d018db3a0e89af08f58f96d1f1345e89acf4bacc21e4b876b337` |
| 9 | `theorem` | [centeredMobiusLogDivisorIndexSum_eq_centeredVonMangoldt](../../../../../mathematics/NumberTheory/Zeta/Riemann/CenteredMobiusLogFinitePacket.lean/declarations/centeredmobiuslogdivisorindexsum-eq-centeredvonmangoldt--02fa8ca9bbf03e93bf3caaac.md) | 32 | `result-track:02fa8ca9bbf03e93bf3caaac82cf6e96d7d40d113c9dfc732427ca71f70d7405` |
| 10 | `theorem` | [centeredMobiusLogDivisorPairBlock_eq_centeredVonMangoldt_mul](../../../../../mathematics/NumberTheory/Zeta/Riemann/CenteredMobiusLogFinitePacket.lean/declarations/centeredmobiuslogdivisorpairblock-eq-centeredvonmangoldt-mul--791176c2188ca825fe857bb4.md) | 50 | `result-track:791176c2188ca825fe857bb4882852f95af0cffd48e841c9262618e486ff291e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
