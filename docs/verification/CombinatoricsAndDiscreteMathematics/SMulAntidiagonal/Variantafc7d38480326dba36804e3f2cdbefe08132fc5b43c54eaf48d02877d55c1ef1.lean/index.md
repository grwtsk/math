# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.SMulAntidiagonal.Variantafc7d38480326dba36804e3f2cdbefe08132fc5b43c54eaf48d02877d55c1ef1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "01719cc7af7298b6cd3912cd1d36fdf0848404d3",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/SMulAntidiagonal/Variantafc7d38480326dba36804e3f2cdbefe08132fc5b43c54eaf48d02877d55c1ef1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SMulAntidiagonal/Variantafc7d38480326dba36804e3f2cdbefe08132fc5b43c54eaf48d02877d55c1ef1.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SMulAntidiagonal/Variantafc7d38480326dba36804e3f2cdbefe08132fc5b43c54eaf48d02877d55c1ef1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `01719cc7af7298b6cd3912cd1d36fdf0848404d3`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/SMulAntidiagonal/Variantafc7d38480326dba36804e3f2cdbefe08132fc5b43c54eaf48d02877d55c1ef1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/SMulAntidiagonal/Variantafc7d38480326dba36804e3f2cdbefe08132fc5b43c54eaf48d02877d55c1ef1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [IsPWO.smul](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SMulAntidiagonal/Variantafc7d38480326dba36804e3f2cdbefe08132fc5b43c54eaf48d02877d55c1ef1.lean/declarations/ispwo-smul--8f1e11e6e4ef2fdba7314150.md) | 41 | `result-track:8f1e11e6e4ef2fdba73141501aa6183145410fba65730b3f4749b5f8149b2e3e` |
| 2 | `theorem` | [IsWF.smul](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SMulAntidiagonal/Variantafc7d38480326dba36804e3f2cdbefe08132fc5b43c54eaf48d02877d55c1ef1.lean/declarations/iswf-smul--1d7caab7cf3e5a59a2883d98.md) | 47 | `result-track:1d7caab7cf3e5a59a2883d98cc3a597d529a65cc8a87cd1c6b8b3d8e07d9b193` |
| 3 | `theorem` | [IsWF.min_smul](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SMulAntidiagonal/Variantafc7d38480326dba36804e3f2cdbefe08132fc5b43c54eaf48d02877d55c1ef1.lean/declarations/iswf-min-smul--1f89bbc6c6a1198629527e6a.md) | 52 | `result-track:1f89bbc6c6a1198629527e6af10d105e20982c8f86a63dd714f7e25c5e5aae7e` |
| 4 | `def` | [SMulAntidiagonal](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SMulAntidiagonal/Variantafc7d38480326dba36804e3f2cdbefe08132fc5b43c54eaf48d02877d55c1ef1.lean/declarations/smulantidiagonal--8f8164aa4c6b0aba267e0778.md) | 76 | `declaration-track:8f8164aa4c6b0aba267e07786e360976293b151c38dada173dcbd2e59976cba9` |
| 5 | `theorem` | [mem_smulAntidiagonal](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SMulAntidiagonal/Variantafc7d38480326dba36804e3f2cdbefe08132fc5b43c54eaf48d02877d55c1ef1.lean/declarations/mem-smulantidiagonal--9048d61e8d0c7f4d588e9430.md) | 81 | `result-track:9048d61e8d0c7f4d588e9430dbb19f14d5f07f0af2965ba0e14a1b1a66a0598c` |
| 6 | `theorem` | [smulAntidiagonal_mono_left](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SMulAntidiagonal/Variantafc7d38480326dba36804e3f2cdbefe08132fc5b43c54eaf48d02877d55c1ef1.lean/declarations/smulantidiagonal-mono-left--134ed0b3c4a14483f635a92d.md) | 88 | `result-track:134ed0b3c4a14483f635a92d9dde6d253af906e7d263af6f6ce88e27df725306` |
| 7 | `theorem` | [smulAntidiagonal_mono_right](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SMulAntidiagonal/Variantafc7d38480326dba36804e3f2cdbefe08132fc5b43c54eaf48d02877d55c1ef1.lean/declarations/smulantidiagonal-mono-right--8d67079b6a148092c29776ef.md) | 94 | `result-track:8d67079b6a148092c29776ef7a41907b8f9e57092a80a989522c80602fea0df4` |
| 8 | `theorem` | [support_smulAntidiagonal_subset_smul](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SMulAntidiagonal/Variantafc7d38480326dba36804e3f2cdbefe08132fc5b43c54eaf48d02877d55c1ef1.lean/declarations/support-smulantidiagonal-subset-smul--9853f11310045dfffdeabdc0.md) | 101 | `result-track:9853f11310045dfffdeabdc08810ef9de3785f322d38e667c019806ae56ebe4a` |
| 9 | `theorem` | [isPWO_support_smulAntidiagonal](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SMulAntidiagonal/Variantafc7d38480326dba36804e3f2cdbefe08132fc5b43c54eaf48d02877d55c1ef1.lean/declarations/ispwo-support-smulantidiagonal--fb10ce891ec47702b0dd3551.md) | 110 | `result-track:fb10ce891ec47702b0dd35513801c72b806e7bda1ad29c8d09a12ce5ca306920` |
| 10 | `theorem` | [smulAntidiagonal_min_smul_min](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SMulAntidiagonal/Variantafc7d38480326dba36804e3f2cdbefe08132fc5b43c54eaf48d02877d55c1ef1.lean/declarations/smulantidiagonal-min-smul-min--7c3156e8498faef7e6bc1e5e.md) | 118 | `result-track:7c3156e8498faef7e6bc1e5e4e38cdec9090868df62df046d496a108ae5fbb64` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
