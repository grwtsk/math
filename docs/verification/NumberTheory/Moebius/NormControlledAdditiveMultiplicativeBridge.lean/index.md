# Verification target: GRWTSK.NumberTheory.Moebius.NormControlledAdditiveMultiplicativeBridge

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b913d59684dbd537401f4af3705121d673d96fd8",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Moebius/NormControlledAdditiveMultiplicativeBridge.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Moebius/NormControlledAdditiveMultiplicativeBridge.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Moebius/NormControlledAdditiveMultiplicativeBridge.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b913d59684dbd537401f4af3705121d673d96fd8`.

Source path: `GRWTSK/NumberTheory/Moebius/NormControlledAdditiveMultiplicativeBridge.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Moebius/NormControlledAdditiveMultiplicativeBridge.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.InnerProductSpace.PiL2` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.ArithmeticFunction.VonMangoldt` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [FiniteCenteredPacket](../../../../mathematics/NumberTheory/Moebius/NormControlledAdditiveMultiplicativeBridge.lean/declarations/finitecenteredpacket--bfc9eed6a9ef735063605343.md) | 20 | `declaration-track:bfc9eed6a9ef735063605343d6bdbbca8ef5d9997c72b4c1f69325e5afc24651` |
| 2 | `abbrev` | [FiniteArithmeticTargetPacket](../../../../mathematics/NumberTheory/Moebius/NormControlledAdditiveMultiplicativeBridge.lean/declarations/finitearithmetictargetpacket--6a45c401fbf43ab836661468.md) | 23 | `declaration-track:6a45c401fbf43ab836661468df2a14a9e5525dc3d18917f25fd09bb15fa0edc5` |
| 3 | `def` | [finitePacketEnergy](../../../../mathematics/NumberTheory/Moebius/NormControlledAdditiveMultiplicativeBridge.lean/declarations/finitepacketenergy--c86d739c461bec14b1454cfb.md) | 25 | `declaration-track:c86d739c461bec14b1454cfb735f225ac07fd50b5a790f605060d68c98a79baf` |
| 4 | `structure` | [FiniteArithmeticBridge](../../../../mathematics/NumberTheory/Moebius/NormControlledAdditiveMultiplicativeBridge.lean/declarations/finitearithmeticbridge--ba8d81bd427bba82319c700c.md) | 31 | `declaration-track:ba8d81bd427bba82319c700cf90af6b5cae2f6d79aa950831cf175f65979cbe7` |
| 5 | `def` | [FiniteArithmeticBridge.linearPart](../../../../mathematics/NumberTheory/Moebius/NormControlledAdditiveMultiplicativeBridge.lean/declarations/finitearithmeticbridge-linearpart--a61fa49d723ab4797d5946cf.md) | 35 | `declaration-track:a61fa49d723ab4797d5946cf7416ab8b52405fffd0e21757de1801e236987bd9` |
| 6 | `def` | [FiniteArithmeticBridge.observed](../../../../mathematics/NumberTheory/Moebius/NormControlledAdditiveMultiplicativeBridge.lean/declarations/finitearithmeticbridge-observed--8911b765244d3f81cbdf3b08.md) | 41 | `declaration-track:8911b765244d3f81cbdf3b08c81392c8d929c163f84bc8288de6ef13c207d698` |
| 7 | `def` | [FiniteArithmeticBridge.observedEnergy](../../../../mathematics/NumberTheory/Moebius/NormControlledAdditiveMultiplicativeBridge.lean/declarations/finitearithmeticbridge-observedenergy--0e8c74efd02ce5072ab14470.md) | 49 | `declaration-track:0e8c74efd02ce5072ab14470ea29b53b7d4ea33e305bc4f9ce1b667909c9b03a` |
| 8 | `def` | [HasForwardEnergyBound](../../../../mathematics/NumberTheory/Moebius/NormControlledAdditiveMultiplicativeBridge.lean/declarations/hasforwardenergybound--fadcf723662e8afd996463e9.md) | 57 | `declaration-track:fadcf723662e8afd996463e9daf882ae67b0d6e3613bdaf3a421a6ff7d767262` |
| 9 | `def` | [HasLowerFrameBound](../../../../mathematics/NumberTheory/Moebius/NormControlledAdditiveMultiplicativeBridge.lean/declarations/haslowerframebound--a5a212cc068aae65f7e9c4b2.md) | 64 | `declaration-track:a5a212cc068aae65f7e9c4b2712c88e299a2beba4f556ce39c3415476f809c8c` |
| 10 | `def` | [HasBoundedLeftInverse](../../../../mathematics/NumberTheory/Moebius/NormControlledAdditiveMultiplicativeBridge.lean/declarations/hasboundedleftinverse--d420943bd99ea7397bb580b9.md) | 71 | `declaration-track:d420943bd99ea7397bb580b982cdf2ee23252c2bc5f0bdde15baa63dd8d289ac` |
| 11 | `theorem` | [sourceEnergy_le_of_boundedLeftInverse](../../../../mathematics/NumberTheory/Moebius/NormControlledAdditiveMultiplicativeBridge.lean/declarations/sourceenergy-le-of-boundedleftinverse--539a026ed0b19bb7db069d98.md) | 78 | `result-track:539a026ed0b19bb7db069d9842f962900600cd518d122e4329d95c61be20a71c` |
| 12 | `theorem` | [not_hasLowerFrameBound_of_nontrivialKernel](../../../../mathematics/NumberTheory/Moebius/NormControlledAdditiveMultiplicativeBridge.lean/declarations/not-haslowerframebound-of-nontrivialkernel--977aba30ef27dbda1c6cc38e.md) | 89 | `result-track:977aba30ef27dbda1c6cc38e685ca2dedfe9a675b8f99498caf117fbe66c5ec1` |
| 13 | `theorem` | [observed_eq_observed_zero_of_kernel](../../../../mathematics/NumberTheory/Moebius/NormControlledAdditiveMultiplicativeBridge.lean/declarations/observed-eq-observed-zero-of-kernel--d9efe38218cbd95e131cfaf1.md) | 114 | `result-track:d9efe38218cbd95e131cfaf12a499ff601c885ee69b0820c7826a7b7f8d98435` |
| 14 | `theorem` | [mobiusLog_eq_vonMangoldt](../../../../mathematics/NumberTheory/Moebius/NormControlledAdditiveMultiplicativeBridge.lean/declarations/mobiuslog-eq-vonmangoldt--082cd7c20974b137b68b9a95.md) | 129 | `result-track:082cd7c20974b137b68b9a956823cc6a53b42300e6024cf0187a90fb2b601dc0` |
| 15 | `structure` | [NormControlledAdditiveMultiplicativeBridgeObligation](../../../../mathematics/NumberTheory/Moebius/NormControlledAdditiveMultiplicativeBridge.lean/declarations/normcontrolledadditivemultiplicativebridgeobligation--4e93a4ee5806aa7ac58f0aef.md) | 136 | `declaration-track:4e93a4ee5806aa7ac58f0aef47e1d4859c8c88c35b68b8da50f80afe20bc1e15` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
