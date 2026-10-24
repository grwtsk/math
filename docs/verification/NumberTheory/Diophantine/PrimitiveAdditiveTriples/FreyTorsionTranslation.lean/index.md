# Verification target: GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyTorsionTranslation

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "858cb2612b185c54c12e89cae33c5ba85f52d3b0",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyTorsionTranslation.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyTorsionTranslation.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyTorsionTranslation.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `858cb2612b185c54c12e89cae33c5ba85f52d3b0`.

Source path: `GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyTorsionTranslation.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyTorsionTranslation.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyCurveGeometry`](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCurveGeometry.lean/index.md) — import line 11; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [PrimitiveAdditiveTriple.freyTranslateT0](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyTorsionTranslation.lean/declarations/primitiveadditivetriple-freytranslatet0--b70bb0e5f1266833ffffa04e.md) | 18 | `declaration-track:b70bb0e5f1266833ffffa04e150d98bcac329f5f9ef967d1c4cf0e1a5330f4f2` |
| 2 | `theorem` | [PrimitiveAdditiveTriple.freyTranslateT0_involutive](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyTorsionTranslation.lean/declarations/primitiveadditivetriple-freytranslatet0-involutive--4ebe5a7477b83303af80095d.md) | 22 | `result-track:4ebe5a7477b83303af80095dec887158deac45f69641737d1277444d36edd190` |
| 3 | `def` | [PrimitiveAdditiveTriple.freyTranslateT0Equiv](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyTorsionTranslation.lean/declarations/primitiveadditivetriple-freytranslatet0equiv--92a123a5c9b40d14788cc77c.md) | 29 | `declaration-track:92a123a5c9b40d14788cc77c5ffb8a10c892eb1eb1e36baeab4a110064edac73` |
| 4 | `theorem` | [PrimitiveAdditiveTriple.freyTranslateT0_zero](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyTorsionTranslation.lean/declarations/primitiveadditivetriple-freytranslatet0-zero--3b2abd79a581e0db4653f488.md) | 36 | `result-track:3b2abd79a581e0db4653f48889f3256b64e62eabb1c15f5dd4b62d1b61c10f74` |
| 5 | `theorem` | [PrimitiveAdditiveTriple.freyTranslateT0_T0](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyTorsionTranslation.lean/declarations/primitiveadditivetriple-freytranslatet0-t0--a8db6d12d6abfb223fb710ed.md) | 40 | `result-track:a8db6d12d6abfb223fb710edb2d53b0ebacdf25267b53c3f0b3b5cab1b60955a` |
| 6 | `theorem` | [PrimitiveAdditiveTriple.freyTranslateT0_no_fixed](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyTorsionTranslation.lean/declarations/primitiveadditivetriple-freytranslatet0-no-fixed--bf7990166aaaad7be910bb10.md) | 44 | `result-track:bf7990166aaaad7be910bb1088236d16dab6e71afc353a634aaa16909708c893` |
| 7 | `theorem` | [PrimitiveAdditiveTriple.freyTranslateT0_not_additive](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyTorsionTranslation.lean/declarations/primitiveadditivetriple-freytranslatet0-not-additive--28a625da9975dc11e096e389.md) | 52 | `result-track:28a625da9975dc11e096e38978bfb4d3439eb9719b39994c47e5badca9c60ff7` |
| 8 | `def` | [freyT0TranslateX](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyTorsionTranslation.lean/declarations/freyt0translatex--d2fd6f98c75ec5fd5f56b302.md) | 61 | `declaration-track:d2fd6f98c75ec5fd5f56b30288efabe9d98b2151eb4944fd0e620e1c76b14110` |
| 9 | `def` | [freyT0TranslateY](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyTorsionTranslation.lean/declarations/freyt0translatey--e44cf31159c7a8c462ea39fd.md) | 63 | `declaration-track:e44cf31159c7a8c462ea39fd7c2b760adddffd6cf4cf8841641ec43716b3eb88` |
| 10 | `theorem` | [freyT0Translate_residual](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyTorsionTranslation.lean/declarations/freyt0translate-residual--3081398d92ce8dbaad2cb432.md) | 66 | `result-track:3081398d92ce8dbaad2cb432843c8b8097efbab2b5c74da0eda9d8a046065574` |
| 11 | `theorem` | [freyT0Translate_equation](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyTorsionTranslation.lean/declarations/freyt0translate-equation--bcbc6e3e50a867d390aa416c.md) | 75 | `result-track:bcbc6e3e50a867d390aa416c5c7e9f4ff8ef387badefd87c40d34212584894ec` |
| 12 | `theorem` | [PrimitiveAdditiveTriple.frey_addX_T0](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyTorsionTranslation.lean/declarations/primitiveadditivetriple-frey-addx-t0--d649cbf90446b9b96290794f.md) | 84 | `result-track:d649cbf90446b9b96290794feda743b01c7432fd4959ea0f7d5fcec989ef4512` |
| 13 | `theorem` | [PrimitiveAdditiveTriple.frey_addY_T0](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyTorsionTranslation.lean/declarations/primitiveadditivetriple-frey-addy-t0--2fea96786b88552199b2119d.md) | 94 | `result-track:2fea96786b88552199b2119da3cf75dafe5727d46056a828a151758f7d9a70f4` |
| 14 | `theorem` | [PrimitiveAdditiveTriple.freyT0Translate_nonsingular](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyTorsionTranslation.lean/declarations/primitiveadditivetriple-freyt0translate-nonsingular--d21961a07443311e07e2eb6b.md) | 105 | `result-track:d21961a07443311e07e2eb6b990f6478e9075dfe4b9cac3a799c7c789ec403db` |
| 15 | `theorem` | [PrimitiveAdditiveTriple.freyTranslateT0_some](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyTorsionTranslation.lean/declarations/primitiveadditivetriple-freytranslatet0-some--60a7062a8cc9c01c7612a0b0.md) | 116 | `result-track:60a7062a8cc9c01c7612a0b09f5955ecc3946f008221b5332d58536e998d05f4` |
| 16 | `theorem` | [PrimitiveAdditiveTriple.freyTranslateT0_Ta](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyTorsionTranslation.lean/declarations/primitiveadditivetriple-freytranslatet0-ta--fe7f3fae753e8d0558b6c316.md) | 129 | `result-track:fe7f3fae753e8d0558b6c31688b746bbaf578b5efea9a2939160159bae7dd85d` |
| 17 | `theorem` | [PrimitiveAdditiveTriple.freyTranslateT0_Tb](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyTorsionTranslation.lean/declarations/primitiveadditivetriple-freytranslatet0-tb--f2af9f23cd802163df17f68e.md) | 140 | `result-track:f2af9f23cd802163df17f68e6b9dcdface8068c302d60d888b30e6a0eedf18a2` |
| 18 | `theorem` | [PrimitiveAdditiveTriple.freyTranslateT0_leaves_three_ports](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyTorsionTranslation.lean/declarations/primitiveadditivetriple-freytranslatet0-leaves-three-ports--43d66a771b4eae56c3102c8a.md) | 147 | `result-track:43d66a771b4eae56c3102c8a5241e1b6b04615f6bc6063498726eea4404fd283` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
