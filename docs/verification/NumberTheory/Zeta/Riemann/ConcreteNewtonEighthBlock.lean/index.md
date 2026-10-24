# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.ConcreteNewtonEighthBlock

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "01176437ac27369b9ffc68934660a98e05008201",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/ConcreteNewtonEighthBlock.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonEighthBlock.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonEighthBlock.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `01176437ac27369b9ffc68934660a98e05008201`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/ConcreteNewtonEighthBlock.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/ConcreteNewtonEighthBlock.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.ConcreteNewtonEighthBlockSeeds`](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonEighthBlockSeeds.lean/index.md) — import line 4; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [output](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonEighthBlock.lean/declarations/output--ce71b6c6cca720cc503c2ddb.md) | 24 | `declaration-track:ce71b6c6cca720cc503c2ddba0ffe3141cbb2f8f62d0ed11b6da878877a8e820` |
| 2 | `theorem` | [endpoint_compute](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonEighthBlock.lean/declarations/endpoint-compute--96747562a6963ce8f1cafde8.md) | 26 | `result-track:96747562a6963ce8f1cafde8c4506fd6d184d6c3156a4734a1f1df64806236e5` |
| 3 | `theorem` | [endpoint_enclosure](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonEighthBlock.lean/declarations/endpoint-enclosure--0034306ee3f5de1df0110af1.md) | 31 | `result-track:0034306ee3f5de1df0110af11091f11b3e034431124c33cd41aa1ce3348cf38a` |
| 4 | `def` | [prefixIndex](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonEighthBlock.lean/declarations/prefixindex--2ac0480ebe5a15944495c53e.md) | 38 | `declaration-track:2ac0480ebe5a15944495c53e494f3f62fc8ae0722f0e87cc3bda09386900901b` |
| 5 | `theorem` | [base_at_index](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonEighthBlock.lean/declarations/base-at-index--9b361fab6f5325f960cdda0e.md) | 41 | `result-track:9b361fab6f5325f960cdda0e70f1472001e9c4cd9f42b19b27a628463d9758e1` |
| 6 | `theorem` | [rational_base_at_index](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonEighthBlock.lean/declarations/rational-base-at-index--3fc50f1e384042a7ed7ead41.md) | 43 | `result-track:3fc50f1e384042a7ed7ead415e33d2d019d36ddfc770bddfec505f36ae3a3fa1` |
| 7 | `theorem` | [schedule_at_index](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonEighthBlock.lean/declarations/schedule-at-index--443f7b274fbc417eb2756454.md) | 47 | `result-track:443f7b274fbc417eb275645449bbb00167264e36b77ee06ef4c4a7c58dd391cd` |
| 8 | `theorem` | [mem_eighth_block](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonEighthBlock.lean/declarations/mem-eighth-block--d3bb143616f0751846b5c844.md) | 49 | `result-track:d3bb143616f0751846b5c844acff33284d071851975009b04fc3f611a9a47667` |
| 9 | `theorem` | [index_mem](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonEighthBlock.lean/declarations/index-mem--3db160459535581215346f61.md) | 54 | `result-track:3db160459535581215346f61e1551188319da00b1251375b591bd2144f54fb97` |
| 10 | `theorem` | [index_cover](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonEighthBlock.lean/declarations/index-cover--a734aba89ed4c8e7c06e5ebe.md) | 60 | `result-track:a734aba89ed4c8e7c06e5ebec5c16a3dcb14d9e03b80072fef6a753c23ac1e21` |
| 11 | `theorem` | [eighth_block_of_records](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonEighthBlock.lean/declarations/eighth-block-of-records--5731ca9ef32d4080f0aa85c6.md) | 69 | `result-track:5731ca9ef32d4080f0aa85c6212b56514d61789a99c21f4c56f603df1b4dc68c` |
| 12 | `def` | [fill](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonEighthBlock.lean/declarations/fill--6ba5752fc7722cce1b5202ad.md) | 78 | `declaration-track:6ba5752fc7722cce1b5202ad2f324788561403745e1de3760d93a870812988fa` |
| 13 | `theorem` | [fill_record](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonEighthBlock.lean/declarations/fill-record--df166811e3a60f0824766243.md) | 83 | `result-track:df166811e3a60f0824766243a02f9819194065688d30fb06ecb3a1b7aa5eda19` |
| 14 | `theorem` | [eighth_block_check](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonEighthBlock.lean/declarations/eighth-block-check--2ced32b9338ba35eb2a531e7.md) | 91 | `result-track:2ced32b9338ba35eb2a531e794ff66fad26f257b19fccdcaec4f0f7d7288be51` |
| 15 | `theorem` | [fill_preserves_outside](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonEighthBlock.lean/declarations/fill-preserves-outside--ef4961778b4f17d3c5cf2812.md) | 96 | `result-track:ef4961778b4f17d3c5cf2812112049525e0f0a51cc6273bdcf8c97b9d1cecab9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
