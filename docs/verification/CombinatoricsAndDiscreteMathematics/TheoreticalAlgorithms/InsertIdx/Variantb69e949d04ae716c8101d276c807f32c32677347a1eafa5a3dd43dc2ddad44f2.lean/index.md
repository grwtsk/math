# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.InsertIdx.Variantb69e949d04ae716c8101d276c807f32c32677347a1eafa5a3dd43dc2ddad44f2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6208fc86a29cc6f496c7a33d0639b81855b21aec",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/InsertIdx/Variantb69e949d04ae716c8101d276c807f32c32677347a1eafa5a3dd43dc2ddad44f2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/InsertIdx/Variantb69e949d04ae716c8101d276c807f32c32677347a1eafa5a3dd43dc2ddad44f2.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/InsertIdx/Variantb69e949d04ae716c8101d276c807f32c32677347a1eafa5a3dd43dc2ddad44f2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6208fc86a29cc6f496c7a33d0639b81855b21aec`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/InsertIdx/Variantb69e949d04ae716c8101d276c807f32c32677347a1eafa5a3dd43dc2ddad44f2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/InsertIdx/Variantb69e949d04ae716c8101d276c807f32c32677347a1eafa5a3dd43dc2ddad44f2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.List.Nat.InsertIdx` — import line 15; external provider; requires a separately pinned dependency.
- `Init.Data.List.ToArray` — import line 16; external provider; requires a separately pinned dependency.
- `Init.Data.Nat.Lemmas` — import line 17; external provider; requires a separately pinned dependency.
- `Init.Omega` — import line 18; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [toList_insertIdx](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/InsertIdx/Variantb69e949d04ae716c8101d276c807f32c32677347a1eafa5a3dd43dc2ddad44f2.lean/declarations/tolist-insertidx--4f409926941889704d7e3586.md) | 48 | `result-track:4f409926941889704d7e35864b707d480c1b9b2b0d16017793e676a859855e46` |
| 2 | `theorem` | [insertIdx_zero](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/InsertIdx/Variantb69e949d04ae716c8101d276c807f32c32677347a1eafa5a3dd43dc2ddad44f2.lean/declarations/insertidx-zero--644298e46d1e40b3d619a6ec.md) | 54 | `result-track:644298e46d1e40b3d619a6ec29fc6054b00da500b82921a7fe6a9d85c0009117` |
| 3 | `theorem` | [size_insertIdx](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/InsertIdx/Variantb69e949d04ae716c8101d276c807f32c32677347a1eafa5a3dd43dc2ddad44f2.lean/declarations/size-insertidx--31aec4851accb2e05053b28f.md) | 58 | `result-track:31aec4851accb2e05053b28f9b101f7650f69b6c237777abd3e91dd2ecb1757a` |
| 4 | `theorem` | [eraseIdx_insertIdx_self](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/InsertIdx/Variantb69e949d04ae716c8101d276c807f32c32677347a1eafa5a3dd43dc2ddad44f2.lean/declarations/eraseidx-insertidx-self--c716ecf4ba1b50fc20d4b3b3.md) | 63 | `result-track:c716ecf4ba1b50fc20d4b3b3ab907ef202199f167dc19a975ffb020f0253e5e5` |
| 5 | `theorem` | [insertIdx_eraseIdx_of_ge](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/InsertIdx/Variantb69e949d04ae716c8101d276c807f32c32677347a1eafa5a3dd43dc2ddad44f2.lean/declarations/insertidx-eraseidx-of-ge--7dad202f41124317568e7c01.md) | 68 | `result-track:7dad202f41124317568e7c01e8aeab609324150cb2121c4e05b8893da2410337` |
| 6 | `theorem` | [insertIdx_eraseIdx_of_le](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/InsertIdx/Variantb69e949d04ae716c8101d276c807f32c32677347a1eafa5a3dd43dc2ddad44f2.lean/declarations/insertidx-eraseidx-of-le--89a95f36f762c808769cd661.md) | 75 | `result-track:89a95f36f762c808769cd661732e07f79f3965f4ee87bc93657012b4d88b6745` |
| 7 | `theorem` | [insertIdx_eraseIdx](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/InsertIdx/Variantb69e949d04ae716c8101d276c807f32c32677347a1eafa5a3dd43dc2ddad44f2.lean/declarations/insertidx-eraseidx--283498eb276ca96a8a3e6e92.md) | 83 | `result-track:283498eb276ca96a8a3e6e9233d6314299555ceaaa160500ca7c0533b06c6310` |
| 8 | `theorem` | [insertIdx_comm](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/InsertIdx/Variantb69e949d04ae716c8101d276c807f32c32677347a1eafa5a3dd43dc2ddad44f2.lean/declarations/insertidx-comm--7a4951ad05045509647de33c.md) | 94 | `result-track:7a4951ad05045509647de33cf23ce07981d1989dc669cabac58e73b5cbe456c4` |
| 9 | `theorem` | [mem_insertIdx](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/InsertIdx/Variantb69e949d04ae716c8101d276c807f32c32677347a1eafa5a3dd43dc2ddad44f2.lean/declarations/mem-insertidx--bb1dbfc2f481a9c2e80df688.md) | 100 | `result-track:bb1dbfc2f481a9c2e80df6882aba4c6ac8dabc288f5b45a7e76c53a2db31f4c6` |
| 10 | `theorem` | [insertIdx_size_self](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/InsertIdx/Variantb69e949d04ae716c8101d276c807f32c32677347a1eafa5a3dd43dc2ddad44f2.lean/declarations/insertidx-size-self--3d3d1e3ab1bf9c325ab8d7f8.md) | 105 | `result-track:3d3d1e3ab1bf9c325ab8d7f8e380f7f120f6298476ca9366c1883c8d07538fa5` |
| 11 | `theorem` | [getElem_insertIdx](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/InsertIdx/Variantb69e949d04ae716c8101d276c807f32c32677347a1eafa5a3dd43dc2ddad44f2.lean/declarations/getelem-insertidx--790e7dd9d1649b0e3e58890c.md) | 110 | `result-track:790e7dd9d1649b0e3e58890cd337a435a0361973f106bd44b6dddc1de54ea107` |
| 12 | `theorem` | [getElem_insertIdx_of_lt](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/InsertIdx/Variantb69e949d04ae716c8101d276c807f32c32677347a1eafa5a3dd43dc2ddad44f2.lean/declarations/getelem-insertidx-of-lt--f47214408fd985f19972acee.md) | 122 | `result-track:f47214408fd985f19972aceec057e552ffddb93db57221227dd266d4ef889153` |
| 13 | `theorem` | [getElem_insertIdx_self](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/InsertIdx/Variantb69e949d04ae716c8101d276c807f32c32677347a1eafa5a3dd43dc2ddad44f2.lean/declarations/getelem-insertidx-self--9844ca155614f5a015b05f8e.md) | 126 | `result-track:9844ca155614f5a015b05f8e0125f88427ed6fb783312a2da575091fe1c6ff8d` |
| 14 | `theorem` | [getElem_insertIdx_of_gt](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/InsertIdx/Variantb69e949d04ae716c8101d276c807f32c32677347a1eafa5a3dd43dc2ddad44f2.lean/declarations/getelem-insertidx-of-gt--643dc57b3f5ad91118956fd6.md) | 130 | `result-track:643dc57b3f5ad91118956fd69e87f72dd1b239e1c04bf432d5c7394032aefc27` |
| 15 | `theorem` | [getElem?_insertIdx](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/InsertIdx/Variantb69e949d04ae716c8101d276c807f32c32677347a1eafa5a3dd43dc2ddad44f2.lean/declarations/getelem-insertidx--94156bf292cbb575960e026d.md) | 136 | `result-track:94156bf292cbb575960e026d9809d0a2edb2f6da0c446f0702ad62c768e840f1` |
| 16 | `theorem` | [getElem?_insertIdx_of_lt](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/InsertIdx/Variantb69e949d04ae716c8101d276c807f32c32677347a1eafa5a3dd43dc2ddad44f2.lean/declarations/getelem-insertidx-of-lt--2595f550d92e35326e9a6f8f.md) | 148 | `result-track:2595f550d92e35326e9a6f8f0f0de32d4658e5cd351005e9f42325100353dbcd` |
| 17 | `theorem` | [getElem?_insertIdx_self](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/InsertIdx/Variantb69e949d04ae716c8101d276c807f32c32677347a1eafa5a3dd43dc2ddad44f2.lean/declarations/getelem-insertidx-self--321d44948d063be5c9be035c.md) | 152 | `result-track:321d44948d063be5c9be035c99ad945dad2bbf891b57203bd752336f6bc885a6` |
| 18 | `theorem` | [getElem?_insertIdx_of_ge](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/InsertIdx/Variantb69e949d04ae716c8101d276c807f32c32677347a1eafa5a3dd43dc2ddad44f2.lean/declarations/getelem-insertidx-of-ge--a88b2d8acb8076f507f79d62.md) | 156 | `result-track:a88b2d8acb8076f507f79d6266b2a64e32dcd40a5eaf5e1f784b21de2f2f1018` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
