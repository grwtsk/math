# Verification target: GRWTSK.Algebra.LinearAlgebra.DirectLimit.Variantb214b631e015b9b9059562989d2179b2e35bd26168d971703e8b5b30add526b4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a4c0e388dae9c9fc983f8ad5316428037b8b64c2",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/DirectLimit/Variantb214b631e015b9b9059562989d2179b2e35bd26168d971703e8b5b30add526b4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/DirectLimit/Variantb214b631e015b9b9059562989d2179b2e35bd26168d971703e8b5b30add526b4.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/DirectLimit/Variantb214b631e015b9b9059562989d2179b2e35bd26168d971703e8b5b30add526b4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a4c0e388dae9c9fc983f8ad5316428037b8b64c2`.

Source path: `GRWTSK/Algebra/LinearAlgebra/DirectLimit/Variantb214b631e015b9b9059562989d2179b2e35bd26168d971703e8b5b30add526b4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/DirectLimit/Variantb214b631e015b9b9059562989d2179b2e35bd26168d971703e8b5b30add526b4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [fromDirectLimit](../../../../../mathematics/Algebra/LinearAlgebra/DirectLimit/Variantb214b631e015b9b9059562989d2179b2e35bd26168d971703e8b5b30add526b4.lean/declarations/fromdirectlimit--dd4e5d5b8999207701cad7ae.md) | 55 | `declaration-track:dd4e5d5b8999207701cad7ae84009cda28d036de4b8034f428280ed727d81823` |
| 2 | `lemma` | [fromDirectLimit_of_tmul](../../../../../mathematics/Algebra/LinearAlgebra/DirectLimit/Variantb214b631e015b9b9059562989d2179b2e35bd26168d971703e8b5b30add526b4.lean/declarations/fromdirectlimit-of-tmul--f76ded4505352dc3ee0f96c5.md) | 61 | `result-track:f76ded4505352dc3ee0f96c501e44360f11a03b5ab71aa986c3060c7a48a57d5` |
| 3 | `def` | [toDirectLimit](../../../../../mathematics/Algebra/LinearAlgebra/DirectLimit/Variantb214b631e015b9b9059562989d2179b2e35bd26168d971703e8b5b30add526b4.lean/declarations/todirectlimit--170f2e1a47632d4422dec682.md) | 69 | `declaration-track:170f2e1a47632d4422dec682d93e44938dab96b31c250f87e8d7b5669c55fe82` |
| 4 | `lemma` | [toDirectLimit_tmul_of](../../../../../mathematics/Algebra/LinearAlgebra/DirectLimit/Variantb214b631e015b9b9059562989d2179b2e35bd26168d971703e8b5b30add526b4.lean/declarations/todirectlimit-tmul-of--a5789ca3480b3fbcdd4325bd.md) | 76 | `result-track:a5789ca3480b3fbcdd4325bdabfd5634ec30adff77631094a9195500625ff1b7` |
| 5 | `def` | [directLimitLeft](../../../../../mathematics/Algebra/LinearAlgebra/DirectLimit/Variantb214b631e015b9b9059562989d2179b2e35bd26168d971703e8b5b30add526b4.lean/declarations/directlimitleft--e771e48ca70a0277f2883377.md) | 86 | `declaration-track:e771e48ca70a0277f2883377f81df6df455572e22bd9fff0805001dd6833a0ff` |
| 6 | `lemma` | [directLimitLeft_tmul_of](../../../../../mathematics/Algebra/LinearAlgebra/DirectLimit/Variantb214b631e015b9b9059562989d2179b2e35bd26168d971703e8b5b30add526b4.lean/declarations/directlimitleft-tmul-of--182f61c0a40b5ad1cf278820.md) | 90 | `result-track:182f61c0a40b5ad1cf27882007ca16268248f37c3671515fc6cf178a2cca44d0` |
| 7 | `lemma` | [directLimitLeft_symm_of_tmul](../../../../../mathematics/Algebra/LinearAlgebra/DirectLimit/Variantb214b631e015b9b9059562989d2179b2e35bd26168d971703e8b5b30add526b4.lean/declarations/directlimitleft-symm-of-tmul--9138a9296f3e94e2af0b3339.md) | 94 | `result-track:9138a9296f3e94e2af0b33391390f56b80622561e5933a00ca4e789085ed1348` |
| 8 | `lemma` | [directLimitLeft_rTensor_of](../../../../../mathematics/Algebra/LinearAlgebra/DirectLimit/Variantb214b631e015b9b9059562989d2179b2e35bd26168d971703e8b5b30add526b4.lean/declarations/directlimitleft-rtensor-of--40caf511a66fc8440afab16e.md) | 98 | `result-track:40caf511a66fc8440afab16ebcb447f8cc6671b7854fb621ad8963adf24acbf4` |
| 9 | `def` | [directLimitRight](../../../../../mathematics/Algebra/LinearAlgebra/DirectLimit/Variantb214b631e015b9b9059562989d2179b2e35bd26168d971703e8b5b30add526b4.lean/declarations/directlimitright--4516bab9560bedaa47702fe7.md) | 105 | `declaration-track:4516bab9560bedaa47702fe7a8cc35e71a1cbf402a8a29cef94cead028534b58` |
| 10 | `lemma` | [directLimitRight_tmul_of](../../../../../mathematics/Algebra/LinearAlgebra/DirectLimit/Variantb214b631e015b9b9059562989d2179b2e35bd26168d971703e8b5b30add526b4.lean/declarations/directlimitright-tmul-of--41c241d23f06ab67a1918433.md) | 111 | `result-track:41c241d23f06ab67a1918433a811dd72253d272c101939594cec541db1fed923` |
| 11 | `lemma` | [directLimitRight_symm_of_tmul](../../../../../mathematics/Algebra/LinearAlgebra/DirectLimit/Variantb214b631e015b9b9059562989d2179b2e35bd26168d971703e8b5b30add526b4.lean/declarations/directlimitright-symm-of-tmul--b5138c3911d6fe558b28f0e1.md) | 115 | `result-track:b5138c3911d6fe558b28f0e18e60cafa966cf682c43651ca4abecf92f7573d5c` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/DirectLimit/Variantb214b631e015b9b9059562989d2179b2e35bd26168d971703e8b5b30add526b4.lean/declarations/instance--92c288a57cf9f0a8d33b44c3.md) | 121 | `declaration-track:92c288a57cf9f0a8d33b44c3cdad19169ed2cf427b1f562fa0c87a2a9d5cdaf6` |
| 13 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/DirectLimit/Variantb214b631e015b9b9059562989d2179b2e35bd26168d971703e8b5b30add526b4.lean/declarations/instance--5cd133337c2998dc0fc88179.md) | 127 | `declaration-track:5cd133337c2998dc0fc881796ac3719974e224330d57c8ca0955e2107ed2e8b0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
