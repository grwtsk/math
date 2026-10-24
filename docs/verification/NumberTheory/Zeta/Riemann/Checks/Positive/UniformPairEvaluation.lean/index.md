# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.Checks.Positive.UniformPairEvaluation

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3f95796cba41e11626b105618ed6d7df37c19e79",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/Checks/Positive/UniformPairEvaluation.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/Positive/UniformPairEvaluation.lean/index.md) · [Full source](../../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/Positive/UniformPairEvaluation.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3f95796cba41e11626b105618ed6d7df37c19e79`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/Checks/Positive/UniformPairEvaluation.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/Checks/Positive/UniformPairEvaluation.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripUniformPairEvaluation`](../../../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripUniformPairEvaluation.lean/index.md) — import line 4; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [exampleConfig](../../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/Positive/UniformPairEvaluation.lean/declarations/exampleconfig--6a0227780e01e2e2ba3b04ed.md) | 19 | `declaration-track:6a0227780e01e2e2ba3b04ed887a2a39269b31aa2ddec3dd10d23f950e24e7d3` |
| 2 | `example` | [(anonymous)](../../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/Positive/UniformPairEvaluation.lean/declarations/example--d50afe11a97e5226f20ad0a8.md) | 21 | `declaration-track:d50afe11a97e5226f20ad0a803df2fa4e8e9fd03793b313e48d18c0062f430e2` |
| 3 | `example` | [(anonymous)](../../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/Positive/UniformPairEvaluation.lean/declarations/example--934dc31962c45b5c8936ada5.md) | 22 | `declaration-track:934dc31962c45b5c8936ada53d3072cb04a357d0faa5a03f2f4b64d02ad661d3` |
| 4 | `example` | [(anonymous)](../../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/Positive/UniformPairEvaluation.lean/declarations/example--bfef96334e18aa3c270eec22.md) | 23 | `declaration-track:bfef96334e18aa3c270eec2231e1564a881a310a9c8a6b5d1c081721f7a3d57b` |
| 5 | `theorem` | [uniform_small_channel_bounds](../../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/Positive/UniformPairEvaluation.lean/declarations/uniform-small-channel-bounds--d109ff73cc3a4644c725c9de.md) | 26 | `result-track:d109ff73cc3a4644c725c9de355d20d0dc7ce48225fbd951a316505047d14883` |
| 6 | `theorem` | [example_accepts](../../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/Positive/UniformPairEvaluation.lean/declarations/example-accepts--127bc0bf61febce3d9f21b26.md) | 38 | `result-track:127bc0bf61febce3d9f21b2699a42110edea81e82fff19cbdd8e34190751bb34` |
| 7 | `theorem` | [example_not_target](../../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/Positive/UniformPairEvaluation.lean/declarations/example-not-target--aef76e42fef819de83533a2b.md) | 40 | `result-track:aef76e42fef819de83533a2ba1a7166fac62f7cef32312aff8241a75057b793a` |
| 8 | `example` | [(anonymous)](../../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/Positive/UniformPairEvaluation.lean/declarations/example--6d470f8af580eb3ec002e079.md) | 44 | `declaration-track:6d470f8af580eb3ec002e07980d830c1d939e8fc45faeac705e1b8ce9418cf81` |
| 9 | `example` | [(anonymous)](../../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/Positive/UniformPairEvaluation.lean/declarations/example--0481ecd8c7660bbfca1416c8.md) | 45 | `declaration-track:0481ecd8c7660bbfca1416c85b9ee7188c9c2f6ebef8e6677b3789653ebb9137` |
| 10 | `example` | [(anonymous)](../../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/Positive/UniformPairEvaluation.lean/declarations/example--347b59f89c1a395ce490e7a0.md) | 48 | `declaration-track:347b59f89c1a395ce490e7a053d9ee80a266f3a48d0683449742185c0a799687` |
| 11 | `example` | [(anonymous)](../../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/Positive/UniformPairEvaluation.lean/declarations/example--930f45c96295b5b21dfaa1d4.md) | 52 | `declaration-track:930f45c96295b5b21dfaa1d40a32902286932c98320d8f527eba97579a6dd727` |
| 12 | `example` | [(anonymous)](../../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/Positive/UniformPairEvaluation.lean/declarations/example--b27d09560753e440966e6d50.md) | 53 | `declaration-track:b27d09560753e440966e6d50276cfc8fdf403a31c82e4bc7df8a0363e676961b` |
| 13 | `example` | [(anonymous)](../../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/Positive/UniformPairEvaluation.lean/declarations/example--e4ef3c7a746188ffa4cf429e.md) | 54 | `declaration-track:e4ef3c7a746188ffa4cf429e74f2a48770c125e1cf0438c320b00714cd3cc725` |
| 14 | `example` | [(anonymous)](../../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/Positive/UniformPairEvaluation.lean/declarations/example--85130c939e88208421f2deb0.md) | 55 | `declaration-track:85130c939e88208421f2deb06914bc129e40c3dd6eb2c16e410e987fe26a2be5` |
| 15 | `example` | [(anonymous)](../../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/Positive/UniformPairEvaluation.lean/declarations/example--2113b44c174f9533611ecfde.md) | 56 | `declaration-track:2113b44c174f9533611ecfde3f5ead96aed28f8e83bf8fe88dce703ba6f9940a` |
| 16 | `example` | [(anonymous)](../../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/Positive/UniformPairEvaluation.lean/declarations/example--2d509563b15cd6ac6ecbf082.md) | 57 | `declaration-track:2d509563b15cd6ac6ecbf082b512ab69569717eabbbe8b322aadb86dfea51a82` |
| 17 | `example` | [(anonymous)](../../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/Positive/UniformPairEvaluation.lean/declarations/example--aa66de892df7e3712fdce407.md) | 58 | `declaration-track:aa66de892df7e3712fdce407cf43ce5b1f955bca11883846aa1e5d0590f7443f` |
| 18 | `example` | [(anonymous)](../../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/Positive/UniformPairEvaluation.lean/declarations/example--df62c018ce248c14d7d6918c.md) | 61 | `declaration-track:df62c018ce248c14d7d6918c041c75d733965194f7ed73569d51bf03d4a5e8bd` |
| 19 | `example` | [(anonymous)](../../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/Positive/UniformPairEvaluation.lean/declarations/example--4045b728d57ee888d9144efc.md) | 64 | `declaration-track:4045b728d57ee888d9144efcd65f2149ca19afa681ff0750291d667321d58001` |
| 20 | `example` | [(anonymous)](../../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/Positive/UniformPairEvaluation.lean/declarations/example--6ff1fe8b43a8c16194ada045.md) | 69 | `declaration-track:6ff1fe8b43a8c16194ada0455748b45408c2f1ca44b1e7facd201242786a3ffb` |
| 21 | `example` | [(anonymous)](../../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/Positive/UniformPairEvaluation.lean/declarations/example--fd9529819cd873274359566c.md) | 72 | `declaration-track:fd9529819cd873274359566cf614627ea6626f840e53f0a3f16761c4f401debe` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
