# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.LpEquiv.Variant40feca35d5086e0b878ba610acb254ebda108b77f697ba0d2da7d41b0f479e01

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "22a5acb3d98d398c99a0825a673cc859e459b777",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/LpEquiv/Variant40feca35d5086e0b878ba610acb254ebda108b77f697ba0d2da7d41b0f479e01.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/LpEquiv/Variant40feca35d5086e0b878ba610acb254ebda108b77f697ba0d2da7d41b0f479e01.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/LpEquiv/Variant40feca35d5086e0b878ba610acb254ebda108b77f697ba0d2da7d41b0f479e01.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `22a5acb3d98d398c99a0825a673cc859e459b777`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/LpEquiv/Variant40feca35d5086e0b878ba610acb254ebda108b77f697ba0d2da7d41b0f479e01.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/LpEquiv/Variant40feca35d5086e0b878ba610acb254ebda108b77f697ba0d2da7d41b0f479e01.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.NormedSpace.lpSpace` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.NormedSpace.PiLp` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.ContinuousFunction.Bounded` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [Memℓp.all](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/LpEquiv/Variant40feca35d5086e0b878ba610acb254ebda108b77f697ba0d2da7d41b0f479e01.lean/declarations/mem-p-all--cd77cbf236018365ba19c7a6.md) | 50 | `result-track:cd77cbf236018365ba19c7a62a6fb850bd55d6f740d8f28562fb97f928b6bc35` |
| 2 | `def` | [Equiv.lpPiLp](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/LpEquiv/Variant40feca35d5086e0b878ba610acb254ebda108b77f697ba0d2da7d41b0f479e01.lean/declarations/equiv-lppilp--b93d9c492bb69d948d45f0d6.md) | 60 | `declaration-track:b93d9c492bb69d948d45f0d68b435f031d8e403ae428dad0548a4e527f3f1946` |
| 3 | `theorem` | [coe_equiv_lpPiLp](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/LpEquiv/Variant40feca35d5086e0b878ba610acb254ebda108b77f697ba0d2da7d41b0f479e01.lean/declarations/coe-equiv-lppilp--cebc46b247458162373482b3.md) | 67 | `result-track:cebc46b247458162373482b3d605ec9737c4737e7354267450e47f20a384e02e` |
| 4 | `theorem` | [coe_equiv_lpPiLp_symm](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/LpEquiv/Variant40feca35d5086e0b878ba610acb254ebda108b77f697ba0d2da7d41b0f479e01.lean/declarations/coe-equiv-lppilp-symm--985535608ee8a4531e496a0e.md) | 71 | `result-track:985535608ee8a4531e496a0e0916769613bc56328dca23b496ca57157293a946` |
| 5 | `theorem` | [equiv_lpPiLp_norm](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/LpEquiv/Variant40feca35d5086e0b878ba610acb254ebda108b77f697ba0d2da7d41b0f479e01.lean/declarations/equiv-lppilp-norm--9a06d5601945d853ec2f2dd6.md) | 75 | `result-track:9a06d5601945d853ec2f2dd6cdbd52cecdf9e29de5708407c5587a5ebbdfdaef` |
| 6 | `def` | [AddEquiv.lpPiLp](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/LpEquiv/Variant40feca35d5086e0b878ba610acb254ebda108b77f697ba0d2da7d41b0f479e01.lean/declarations/addequiv-lppilp--ceb22039837e38e4e35e87db.md) | 84 | `declaration-track:ceb22039837e38e4e35e87dbeffd0185c76bcb7b85bbd1dd076def558c7e5976` |
| 7 | `theorem` | [coe_addEquiv_lpPiLp](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/LpEquiv/Variant40feca35d5086e0b878ba610acb254ebda108b77f697ba0d2da7d41b0f479e01.lean/declarations/coe-addequiv-lppilp--db578acdb5cfde9ed95bcf29.md) | 88 | `result-track:db578acdb5cfde9ed95bcf29785244039e8f85251d87e76420632a1aa5876986` |
| 8 | `theorem` | [coe_addEquiv_lpPiLp_symm](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/LpEquiv/Variant40feca35d5086e0b878ba610acb254ebda108b77f697ba0d2da7d41b0f479e01.lean/declarations/coe-addequiv-lppilp-symm--c1cb9e510c48cc11a752145d.md) | 92 | `result-track:c1cb9e510c48cc11a752145dc3353ab7964f2cccf450d64d0dde1d84df0d7852` |
| 9 | `def` | [lpPiLpₗᵢ](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/LpEquiv/Variant40feca35d5086e0b878ba610acb254ebda108b77f697ba0d2da7d41b0f479e01.lean/declarations/lppilp--5e63841fa389acce762d2858.md) | 107 | `declaration-track:5e63841fa389acce762d285840871c44c7d8f67ca398c31e9e87541716cc9573` |
| 10 | `theorem` | [coe_lpPiLpₗᵢ](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/LpEquiv/Variant40feca35d5086e0b878ba610acb254ebda108b77f697ba0d2da7d41b0f479e01.lean/declarations/coe-lppilp--1d9515650044163651916d0c.md) | 116 | `result-track:1d9515650044163651916d0c316b4af89f611419a5b80b469bb58c88d57fe201` |
| 11 | `theorem` | [coe_lpPiLpₗᵢ_symm](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/LpEquiv/Variant40feca35d5086e0b878ba610acb254ebda108b77f697ba0d2da7d41b0f479e01.lean/declarations/coe-lppilp-symm--54bca81079e43678b6d38a6a.md) | 120 | `result-track:54bca81079e43678b6d38a6ad96efb5ec0d2dd637c88d5be7bc39788cd22cb8f` |
| 12 | `def` | [AddEquiv.lpBcf](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/LpEquiv/Variant40feca35d5086e0b878ba610acb254ebda108b77f697ba0d2da7d41b0f479e01.lean/declarations/addequiv-lpbcf--7f00ae65d8738a14d5dedf02.md) | 145 | `declaration-track:7f00ae65d8738a14d5dedf02cb739e80659045549c91c774f6d7b28a655f3508` |
| 13 | `theorem` | [coe_addEquiv_lpBcf](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/LpEquiv/Variant40feca35d5086e0b878ba610acb254ebda108b77f697ba0d2da7d41b0f479e01.lean/declarations/coe-addequiv-lpbcf--38610dc36ffff2ce51a4cdd8.md) | 154 | `result-track:38610dc36ffff2ce51a4cdd89dd305ba7087f13ff077c1869730e4e86fffed5b` |
| 14 | `theorem` | [coe_addEquiv_lpBcf_symm](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/LpEquiv/Variant40feca35d5086e0b878ba610acb254ebda108b77f697ba0d2da7d41b0f479e01.lean/declarations/coe-addequiv-lpbcf-symm--175eb6304be75aa3163a5cb4.md) | 158 | `result-track:175eb6304be75aa3163a5cb4891f4623f1e2a0b5ab024020b4e5e83019ee4a9d` |
| 15 | `def` | [lpBcfₗᵢ](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/LpEquiv/Variant40feca35d5086e0b878ba610acb254ebda108b77f697ba0d2da7d41b0f479e01.lean/declarations/lpbcf--f5337bfce4ec9a88f339d2fc.md) | 168 | `declaration-track:f5337bfce4ec9a88f339d2fcd9f141bbe05fbd7b8e404eaf92652be69b562feb` |
| 16 | `theorem` | [coe_lpBcfₗᵢ](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/LpEquiv/Variant40feca35d5086e0b878ba610acb254ebda108b77f697ba0d2da7d41b0f479e01.lean/declarations/coe-lpbcf--2e49487431e4edd39f212ef0.md) | 177 | `result-track:2e49487431e4edd39f212ef0d3bafc1ef4817115eb0950eed9a7f3303319306f` |
| 17 | `theorem` | [coe_lpBcfₗᵢ_symm](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/LpEquiv/Variant40feca35d5086e0b878ba610acb254ebda108b77f697ba0d2da7d41b0f479e01.lean/declarations/coe-lpbcf-symm--40f0eac59f7a39c647b99513.md) | 181 | `result-track:40f0eac59f7a39c647b995135ffa81728f50a84b9e9f1667afd735915de2ed2e` |
| 18 | `def` | [RingEquiv.lpBcf](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/LpEquiv/Variant40feca35d5086e0b878ba610acb254ebda108b77f697ba0d2da7d41b0f479e01.lean/declarations/ringequiv-lpbcf--2f2a6e2963273d313964009c.md) | 190 | `declaration-track:2f2a6e2963273d313964009c8a9dc35e5659c29e279737f93c4f417d7a44c19a` |
| 19 | `theorem` | [coe_ringEquiv_lpBcf](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/LpEquiv/Variant40feca35d5086e0b878ba610acb254ebda108b77f697ba0d2da7d41b0f479e01.lean/declarations/coe-ringequiv-lpbcf--45a10fdc1e76d77aaf7eaeee.md) | 197 | `result-track:45a10fdc1e76d77aaf7eaeee2297d03b1c9040db7a8b4f1dc643897fcb1613ad` |
| 20 | `theorem` | [coe_ringEquiv_lpBcf_symm](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/LpEquiv/Variant40feca35d5086e0b878ba610acb254ebda108b77f697ba0d2da7d41b0f479e01.lean/declarations/coe-ringequiv-lpbcf-symm--733f95139082532e36c9b649.md) | 201 | `result-track:733f95139082532e36c9b649b6d80375662aea66442cb1b9f205d606eae0f85d` |
| 21 | `def` | [AlgEquiv.lpBcf](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/LpEquiv/Variant40feca35d5086e0b878ba610acb254ebda108b77f697ba0d2da7d41b0f479e01.lean/declarations/algequiv-lpbcf--06dce55abbfa9a9262b0c1a7.md) | 211 | `declaration-track:06dce55abbfa9a9262b0c1a7f5a4b3f752de8117704fcf8f1a9bd3b33bbeb7f9` |
| 22 | `theorem` | [coe_algEquiv_lpBcf](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/LpEquiv/Variant40feca35d5086e0b878ba610acb254ebda108b77f697ba0d2da7d41b0f479e01.lean/declarations/coe-algequiv-lpbcf--20913bea46ca7e16595d7ec2.md) | 217 | `result-track:20913bea46ca7e16595d7ec2786d22b7fbfd5ad15877fa97f02c0e2058420586` |
| 23 | `theorem` | [coe_algEquiv_lpBcf_symm](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/LpEquiv/Variant40feca35d5086e0b878ba610acb254ebda108b77f697ba0d2da7d41b0f479e01.lean/declarations/coe-algequiv-lpbcf-symm--ee679559ae5440e72d1c67f3.md) | 221 | `result-track:ee679559ae5440e72d1c67f32c30e0adfda4cb1af845259d4dc8d0218301efe7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
