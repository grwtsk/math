# Verification target: GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyThreePortSaturation

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d53ae46a7f0e4224eac7c639e98ef00e414295e9",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyThreePortSaturation.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyThreePortSaturation.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyThreePortSaturation.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d53ae46a7f0e4224eac7c639e98ef00e414295e9`.

Source path: `GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyThreePortSaturation.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyThreePortSaturation.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyThreePortFrame`](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyThreePortFrame.lean/index.md) — import line 9; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [freyThreePortMatrix](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyThreePortSaturation.lean/declarations/freythreeportmatrix--07dfe24a80f383545fe83287.md) | 17 | `declaration-track:07dfe24a80f383545fe832871e665da5a8b268bd25e441332cffab733cf4a34b` |
| 2 | `def` | [freyTwoByTwoRowMinor](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyThreePortSaturation.lean/declarations/freytwobytworowminor--da89fdaa3d966bd72dd03ec1.md) | 21 | `declaration-track:da89fdaa3d966bd72dd03ec1b650c59e131f9b773a426c5a74571ec99881ffb6` |
| 3 | `def` | [freyThreePortMaximalMinors](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyThreePortSaturation.lean/declarations/freythreeportmaximalminors--c3981f41781cef04bc264275.md) | 26 | `declaration-track:c3981f41781cef04bc2642758bd8c88a16738e34c015139c3f88d6cddcf314a6` |
| 4 | `theorem` | [freyThreePortMaximalMinors_eq](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyThreePortSaturation.lean/declarations/freythreeportmaximalminors-eq--01778b9d56021ed960f66562.md) | 31 | `result-track:01778b9d56021ed960f66562c826ac86465d1ada2f213a64bff1285954c8db60` |
| 5 | `def` | [freyThreePortMaximalMinorIdeal](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyThreePortSaturation.lean/declarations/freythreeportmaximalminorideal--9e37aa7f6daae5234b08ac1d.md) | 39 | `declaration-track:9e37aa7f6daae5234b08ac1d910ded485f5444a8c8448e433b8848d178558f87` |
| 6 | `theorem` | [freyThreePortMaximalMinorIdeal_eq_top_of_bezout](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyThreePortSaturation.lean/declarations/freythreeportmaximalminorideal-eq-top-of-bezout--0dd155fbeb8051ad86aa1ddf.md) | 44 | `result-track:0dd155fbeb8051ad86aa1ddf1d118b1ff990c4bf13f62dc685b5366e10f95d9f` |
| 7 | `def` | [freyThreePortObstruction](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyThreePortSaturation.lean/declarations/freythreeportobstruction--09ba5f49f782137c1cd7b4de.md) | 68 | `declaration-track:09ba5f49f782137c1cd7b4deb54d39ad11813840f4da738c82730153d0816a0c` |
| 8 | `theorem` | [freyThreePortObstruction_add](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyThreePortSaturation.lean/declarations/freythreeportobstruction-add--4be5faf40aaf01150049b906.md) | 71 | `result-track:4be5faf40aaf01150049b906e7b3d59ed10d0f89f435e2145132173da86fef12` |
| 9 | `theorem` | [freyThreePortObstruction_smul](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyThreePortSaturation.lean/declarations/freythreeportobstruction-smul--83e2450ff9afaefc3b670291.md) | 78 | `result-track:83e2450ff9afaefc3b670291a63c3d106cb599c083f3ac1963865ec0617b2307` |
| 10 | `def` | [freyThreePortObstructionLinear](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyThreePortSaturation.lean/declarations/freythreeportobstructionlinear--58543621753108ce7cb908b0.md) | 86 | `declaration-track:58543621753108ce7cb908b00e7f37bb3f3ef70853761d7bd3b6878a5f3fdea9` |
| 11 | `theorem` | [freyThreePortCompatible_iff_obstruction_eq_zero](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyThreePortSaturation.lean/declarations/freythreeportcompatible-iff-obstruction-eq-zero--bb24696a7a8d9349665aac29.md) | 95 | `result-track:bb24696a7a8d9349665aac299958fffb10f9a04437f051e328e6a640f78c3451` |
| 12 | `theorem` | [freyThreePortObstruction_eval](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyThreePortSaturation.lean/declarations/freythreeportobstruction-eval--0aca2393d40b23cb36b1e06b.md) | 104 | `result-track:0aca2393d40b23cb36b1e06b930a3964b5ea1353420d1d0cde936dcc94f96fb3` |
| 13 | `theorem` | [freyThreePortEval_recover_of_compatible](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyThreePortSaturation.lean/declarations/freythreeporteval-recover-of-compatible--096bec83880b989cb5f0ce1c.md) | 113 | `result-track:096bec83880b989cb5f0ce1c28be15d4eb0726596d10dd9a9037c2ddfa1d8c58` |
| 14 | `def` | [freyThreePortObstructionSplit](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyThreePortSaturation.lean/declarations/freythreeportobstructionsplit--fdd8b1132662d5e3085e2ac3.md) | 129 | `declaration-track:fdd8b1132662d5e3085e2ac331e1b8c79cb3f834eb204629df69e33948f3a919` |
| 15 | `theorem` | [freyThreePortObstructionSplit_add](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyThreePortSaturation.lean/declarations/freythreeportobstructionsplit-add--09f3df8539ffa09af5a72a5f.md) | 132 | `result-track:09f3df8539ffa09af5a72a5f42bb14f3170de4ef3398dce4aa7d17501d0e798c` |
| 16 | `theorem` | [freyThreePortObstructionSplit_smul](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyThreePortSaturation.lean/declarations/freythreeportobstructionsplit-smul--f20f382f075c24c04072dbae.md) | 139 | `result-track:f20f382f075c24c04072dbae93b9e043050035c16e650ec3be6fd7eb1958e7ff` |
| 17 | `def` | [freyThreePortObstructionSplitLinear](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyThreePortSaturation.lean/declarations/freythreeportobstructionsplitlinear--29aee4a9c744333a14c8101a.md) | 146 | `declaration-track:29aee4a9c744333a14c8101a0798dc678adfd854c5bf33ba73391cabf67bd135` |
| 18 | `theorem` | [freyThreePortObstruction_split_of_bezout](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyThreePortSaturation.lean/declarations/freythreeportobstruction-split-of-bezout--857e294f1c1319d2c5dfc296.md) | 155 | `result-track:857e294f1c1319d2c5dfc296bfc6479799338f4ff2ec70728fc7d23292ac26f5` |
| 19 | `theorem` | [freyThreePortObstruction_surjective_of_bezout](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyThreePortSaturation.lean/declarations/freythreeportobstruction-surjective-of-bezout--f9c1c79a36c315042885f9e8.md) | 164 | `result-track:f9c1c79a36c315042885f9e8599348f042b038265b2d228fb3ec5e5a3d346479` |
| 20 | `theorem` | [freyThreePort_exact_of_bezout](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyThreePortSaturation.lean/declarations/freythreeport-exact-of-bezout--f5e0a39b26777d7796b88a4e.md) | 172 | `result-track:f5e0a39b26777d7796b88a4e2f0e8ce5c24e4ce6ef394d3fe0b78f1c0cfc3089` |
| 21 | `theorem` | [freyThreePortObstruction_comp_split_of_bezout](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyThreePortSaturation.lean/declarations/freythreeportobstruction-comp-split-of-bezout--96ceccf7e15f18b245e48ced.md) | 188 | `result-track:96ceccf7e15f18b245e48ced93d0e16221273b1de0d81f3b34f1911e70be5024` |
| 22 | `def` | [PrimitiveAdditiveTriple.threePortObstruction](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyThreePortSaturation.lean/declarations/primitiveadditivetriple-threeportobstruction--ad2e47a932c069ed5f2f79df.md) | 196 | `declaration-track:ad2e47a932c069ed5f2f79df431b3dcc76e1ce0918218a731640fcd0c955022d` |
| 23 | `def` | [PrimitiveAdditiveTriple.threePortObstructionSplit](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyThreePortSaturation.lean/declarations/primitiveadditivetriple-threeportobstructionsplit--cae6af9b8eb51457f4108249.md) | 201 | `declaration-track:cae6af9b8eb51457f410824977b76ee506f5069d215424e838db53b75d3a3f2c` |
| 24 | `theorem` | [PrimitiveAdditiveTriple.threePort_exact](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyThreePortSaturation.lean/declarations/primitiveadditivetriple-threeport-exact--f168ce73585bc9808f170874.md) | 206 | `result-track:f168ce73585bc9808f17087419f65e32f8aafa86c06d91f87749eb0cb2203aa3` |
| 25 | `theorem` | [PrimitiveAdditiveTriple.threePortObstruction_surjective](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyThreePortSaturation.lean/declarations/primitiveadditivetriple-threeportobstruction-surjective--2bc53776c3dcad6ec391ee04.md) | 212 | `result-track:2bc53776c3dcad6ec391ee047b54f6f40e9ce97807757cbfd87ed8539069e688` |
| 26 | `theorem` | [PrimitiveAdditiveTriple.threePortObstruction_comp_split](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyThreePortSaturation.lean/declarations/primitiveadditivetriple-threeportobstruction-comp-split--d8de1ed6611786fa63555594.md) | 218 | `result-track:d8de1ed6611786fa63555594415a6f1496bc70c9e0cfe78129f3c6abf731c1cf` |
| 27 | `theorem` | [PrimitiveAdditiveTriple.threePortMaximalMinorIdeal_eq_top](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyThreePortSaturation.lean/declarations/primitiveadditivetriple-threeportmaximalminorideal-eq-top--b2bf2a3d884791f14801db8e.md) | 225 | `result-track:b2bf2a3d884791f14801db8eadf056dc287aff79f6ddbdf89fcbc4871585a2ca` |
| 28 | `theorem` | [PrimitiveAdditiveTriple.threePortEval_not_surjective](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyThreePortSaturation.lean/declarations/primitiveadditivetriple-threeporteval-not-surjective--0342d8f60cc8479ad87e0ddc.md) | 232 | `result-track:0342d8f60cc8479ad87e0ddcc5f3c171fe62285222ca09cf930e7c62ab872ce0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
