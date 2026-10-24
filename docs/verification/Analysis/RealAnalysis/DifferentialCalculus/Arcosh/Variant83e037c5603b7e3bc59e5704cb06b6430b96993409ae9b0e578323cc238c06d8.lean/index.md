# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.Arcosh.Variant83e037c5603b7e3bc59e5704cb06b6430b96993409ae9b0e578323cc238c06d8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b65e0259ef72c9c53244919294f1eb431de8516a",
  "lexical_observation_count": 33,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Arcosh/Variant83e037c5603b7e3bc59e5704cb06b6430b96993409ae9b0e578323cc238c06d8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Arcosh/Variant83e037c5603b7e3bc59e5704cb06b6430b96993409ae9b0e578323cc238c06d8.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Arcosh/Variant83e037c5603b7e3bc59e5704cb06b6430b96993409ae9b0e578323cc238c06d8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b65e0259ef72c9c53244919294f1eb431de8516a`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Arcosh/Variant83e037c5603b7e3bc59e5704cb06b6430b96993409ae9b0e578323cc238c06d8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/Arcosh/Variant83e037c5603b7e3bc59e5704cb06b6430b96993409ae9b0e578323cc238c06d8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [arcosh](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Arcosh/Variant83e037c5603b7e3bc59e5704cb06b6430b96993409ae9b0e578323cc238c06d8.lean/declarations/arcosh--d443903dbf922e7f9b447013.md) | 61 | `declaration-track:d443903dbf922e7f9b447013b7af6ec2779ff910f4de2302ad668b9207e6be6b` |
| 2 | `theorem` | [exp_arcosh](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Arcosh/Variant83e037c5603b7e3bc59e5704cb06b6430b96993409ae9b0e578323cc238c06d8.lean/declarations/exp-arcosh--f6cf48c39c240a0cca7644ab.md) | 64 | `result-track:f6cf48c39c240a0cca7644ab30a569238b118e73e19ee18706b6375e67f87bb1` |
| 3 | `theorem` | [arcosh_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Arcosh/Variant83e037c5603b7e3bc59e5704cb06b6430b96993409ae9b0e578323cc238c06d8.lean/declarations/arcosh-zero--cf0c8de5a224225e73ba5434.md) | 69 | `result-track:cf0c8de5a224225e73ba543452ce17dac2a4b1c3a9f55ab77dd0a73a0a4c2b2a` |
| 4 | `lemma` | [add_sqrt_self_sq_sub_one_inv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Arcosh/Variant83e037c5603b7e3bc59e5704cb06b6430b96993409ae9b0e578323cc238c06d8.lean/declarations/add-sqrt-self-sq-sub-one-inv--db2a300198415bd79ed3c851.md) | 71 | `result-track:db2a300198415bd79ed3c851cf4c5a60fb9407d7e0055999ef0f357d0b108de4` |
| 5 | `theorem` | [cosh_arcosh](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Arcosh/Variant83e037c5603b7e3bc59e5704cb06b6430b96993409ae9b0e578323cc238c06d8.lean/declarations/cosh-arcosh--e459651a72429ffd196c96a2.md) | 77 | `result-track:e459651a72429ffd196c96a29310a620eb0264ce8eb0d1411b93f4626589bb2b` |
| 6 | `theorem` | [arcosh_eq_zero_iff](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Arcosh/Variant83e037c5603b7e3bc59e5704cb06b6430b96993409ae9b0e578323cc238c06d8.lean/declarations/arcosh-eq-zero-iff--713c664d7be637c43ece6451.md) | 81 | `result-track:713c664d7be637c43ece6451246085de40915c9cc0fedcc6a7cd82730b6e3537` |
| 7 | `theorem` | [sinh_arcosh](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Arcosh/Variant83e037c5603b7e3bc59e5704cb06b6430b96993409ae9b0e578323cc238c06d8.lean/declarations/sinh-arcosh--b093b60fc78f444b496d69e5.md) | 85 | `result-track:b093b60fc78f444b496d69e546293e59b7f568821db9081631ac80ff76c464f0` |
| 8 | `theorem` | [tanh_arcosh](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Arcosh/Variant83e037c5603b7e3bc59e5704cb06b6430b96993409ae9b0e578323cc238c06d8.lean/declarations/tanh-arcosh--51818ec472bb14f06eecd491.md) | 89 | `result-track:51818ec472bb14f06eecd4910dc04858d915db43b38b3f677c938b22a66007c3` |
| 9 | `theorem` | [arcosh_cosh](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Arcosh/Variant83e037c5603b7e3bc59e5704cb06b6430b96993409ae9b0e578323cc238c06d8.lean/declarations/arcosh-cosh--4cca1b37b6d78969cd956718.md) | 93 | `result-track:4cca1b37b6d78969cd95671859b125604aca85e1cf890346a62d5d2655d967ad` |
| 10 | `theorem` | [arcosh_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Arcosh/Variant83e037c5603b7e3bc59e5704cb06b6430b96993409ae9b0e578323cc238c06d8.lean/declarations/arcosh-nonneg--5e9c35bddc4560dcd2967fa2.md) | 97 | `result-track:5e9c35bddc4560dcd2967fa27b11b5875eb83db0f091661debf875730fd6e040` |
| 11 | `theorem` | [arcosh_pos](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Arcosh/Variant83e037c5603b7e3bc59e5704cb06b6430b96993409ae9b0e578323cc238c06d8.lean/declarations/arcosh-pos--a7abc320b9824350823d0c29.md) | 103 | `result-track:a7abc320b9824350823d0c2986d8d3278cefe2c513e09c8adc651b34e741b5d2` |
| 12 | `theorem` | [strictMonoOn_arcosh](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Arcosh/Variant83e037c5603b7e3bc59e5704cb06b6430b96993409ae9b0e578323cc238c06d8.lean/declarations/strictmonoon-arcosh--f643e1a7c200f9a1b4f5e53e.md) | 110 | `result-track:f643e1a7c200f9a1b4f5e53e268160c66352840bafcbb4fe15bd980908a337ed` |
| 13 | `theorem` | [arcosh_le_arcosh](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Arcosh/Variant83e037c5603b7e3bc59e5704cb06b6430b96993409ae9b0e578323cc238c06d8.lean/declarations/arcosh-le-arcosh--5f554e658d39a606c091738a.md) | 115 | `result-track:5f554e658d39a606c091738ab41f7b34b54caa4eeb16be6cc13e439151df4df4` |
| 14 | `theorem` | [arcosh_lt_arcosh](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Arcosh/Variant83e037c5603b7e3bc59e5704cb06b6430b96993409ae9b0e578323cc238c06d8.lean/declarations/arcosh-lt-arcosh--9559b0cf5efe77cf445125d3.md) | 119 | `result-track:9559b0cf5efe77cf445125d32fe6be5edb592939838db77b0004c2592de97cfd` |
| 15 | `def` | [coshPartialEquiv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Arcosh/Variant83e037c5603b7e3bc59e5704cb06b6430b96993409ae9b0e578323cc238c06d8.lean/declarations/coshpartialequiv--8533ff660162a15ae4d5bee7.md) | 123 | `declaration-track:8533ff660162a15ae4d5bee7b74031ef4fabd2d127b1857ab10197531798231a` |
| 16 | `theorem` | [continuousOn_arcosh](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Arcosh/Variant83e037c5603b7e3bc59e5704cb06b6430b96993409ae9b0e578323cc238c06d8.lean/declarations/continuouson-arcosh--2ce1fecdd8a1ccd6d57c437a.md) | 133 | `result-track:2ce1fecdd8a1ccd6d57c437a06a0b401a329e0fd22d10de23a17ab1a7e633100` |
| 17 | `def` | [coshOpenPartialHomeomorph](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Arcosh/Variant83e037c5603b7e3bc59e5704cb06b6430b96993409ae9b0e578323cc238c06d8.lean/declarations/coshopenpartialhomeomorph--e3e7f39524e9d4b895b02994.md) | 139 | `declaration-track:e3e7f39524e9d4b895b02994d7bd76817096e2831943144139722ea7fbb577d0` |
| 18 | `theorem` | [hasStrictDerivAt_arcosh](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Arcosh/Variant83e037c5603b7e3bc59e5704cb06b6430b96993409ae9b0e578323cc238c06d8.lean/declarations/hasstrictderivat-arcosh--328d53ec73f73865ef7efec9.md) | 153 | `result-track:328d53ec73f73865ef7efec91ad1928dd4e15120d7188b31de9d4cf69c254b04` |
| 19 | `theorem` | [hasDerivAt_arcosh](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Arcosh/Variant83e037c5603b7e3bc59e5704cb06b6430b96993409ae9b0e578323cc238c06d8.lean/declarations/hasderivat-arcosh--9ad17429bb4c698d5dafb269.md) | 160 | `result-track:9ad17429bb4c698d5dafb269688fc4e3822b4a079df5dd114375d25ec5477533` |
| 20 | `theorem` | [differentiableAt_arcosh](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Arcosh/Variant83e037c5603b7e3bc59e5704cb06b6430b96993409ae9b0e578323cc238c06d8.lean/declarations/differentiableat-arcosh--fb26299efef8f7fc0fb7516b.md) | 163 | `result-track:fb26299efef8f7fc0fb7516b69c953a94622e7a9ec1838e46fd0a85c89001971` |
| 21 | `theorem` | [differentiableOn_arcosh](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Arcosh/Variant83e037c5603b7e3bc59e5704cb06b6430b96993409ae9b0e578323cc238c06d8.lean/declarations/differentiableon-arcosh--731b88c7eb84061d52841d9b.md) | 166 | `result-track:731b88c7eb84061d52841d9b8290a1cd4fdc015aa5b3754bbe4706415736ea74` |
| 22 | `theorem` | [contDiffAt_arcosh](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Arcosh/Variant83e037c5603b7e3bc59e5704cb06b6430b96993409ae9b0e578323cc238c06d8.lean/declarations/contdiffat-arcosh--1754be12f06f4067cd1a1cbf.md) | 169 | `result-track:1754be12f06f4067cd1a1cbfd317a1aee9af1442d1325493e6878951ba9642b7` |
| 23 | `theorem` | [contDiffOn_arcosh](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Arcosh/Variant83e037c5603b7e3bc59e5704cb06b6430b96993409ae9b0e578323cc238c06d8.lean/declarations/contdiffon-arcosh--46c0b75579c211bd167081c8.md) | 175 | `result-track:46c0b75579c211bd167081c8aa9530efb1aedd28d1ec5c9e7095f5b534e8e1cb` |
| 24 | `lemma` | [analyticAt_arcosh](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Arcosh/Variant83e037c5603b7e3bc59e5704cb06b6430b96993409ae9b0e578323cc238c06d8.lean/declarations/analyticat-arcosh--35fa787c1cd935e6a3767f15.md) | 180 | `result-track:35fa787c1cd935e6a3767f152ad6a3969fd068a4fabeba44b69cf62d4bb48639` |
| 25 | `lemma` | [analyticWithinAt_arcosh](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Arcosh/Variant83e037c5603b7e3bc59e5704cb06b6430b96993409ae9b0e578323cc238c06d8.lean/declarations/analyticwithinat-arcosh--3f74bc4a53e7bfa0f05e75b8.md) | 184 | `result-track:3f74bc4a53e7bfa0f05e75b80aaedec1983331db262b48185e031b60fe0dfa7d` |
| 26 | `theorem` | [analyticOnNhd_arcosh](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Arcosh/Variant83e037c5603b7e3bc59e5704cb06b6430b96993409ae9b0e578323cc238c06d8.lean/declarations/analyticonnhd-arcosh--01d436fb8252390be89a9c83.md) | 189 | `result-track:01d436fb8252390be89a9c83e2cc01bd92ce96e261e4eff64c52d72cb9d46eee` |
| 27 | `lemma` | [analyticOn_arcosh](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Arcosh/Variant83e037c5603b7e3bc59e5704cb06b6430b96993409ae9b0e578323cc238c06d8.lean/declarations/analyticon-arcosh--3d8c6165541850c5149f0ba1.md) | 193 | `result-track:3d8c6165541850c5149f0ba1b00f80d11cf4f9e2d9a20dd0f9e332f5277996bb` |
| 28 | `theorem` | [cosh_bijOn](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Arcosh/Variant83e037c5603b7e3bc59e5704cb06b6430b96993409ae9b0e578323cc238c06d8.lean/declarations/cosh-bijon--5693bd96f7f41a226c85b4e3.md) | 196 | `result-track:5693bd96f7f41a226c85b4e358d8feae92f46827d63872fce75b2b24f9159b64` |
| 29 | `theorem` | [cosh_injOn](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Arcosh/Variant83e037c5603b7e3bc59e5704cb06b6430b96993409ae9b0e578323cc238c06d8.lean/declarations/cosh-injon--4ca519e9be1f7872d1834fa5.md) | 198 | `result-track:4ca519e9be1f7872d1834fa5a92395c8b5720c7b75f6f70597bf46ecf1cf8464` |
| 30 | `theorem` | [cosh_surjOn](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Arcosh/Variant83e037c5603b7e3bc59e5704cb06b6430b96993409ae9b0e578323cc238c06d8.lean/declarations/cosh-surjon--978e621d3f08d170ea9fd0d2.md) | 200 | `result-track:978e621d3f08d170ea9fd0d28dd379745b6fd75cac4be47ee03c91c29a2f6e9f` |
| 31 | `theorem` | [arcosh_bijOn](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Arcosh/Variant83e037c5603b7e3bc59e5704cb06b6430b96993409ae9b0e578323cc238c06d8.lean/declarations/arcosh-bijon--2b112894ef0a99b21090cd15.md) | 202 | `result-track:2b112894ef0a99b21090cd15a54f225ec53ecdf77916b9d3cf3bcb4fbb5a4fb4` |
| 32 | `theorem` | [arcosh_injOn](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Arcosh/Variant83e037c5603b7e3bc59e5704cb06b6430b96993409ae9b0e578323cc238c06d8.lean/declarations/arcosh-injon--faf25e7333b95002f1937ac1.md) | 204 | `result-track:faf25e7333b95002f1937ac14a4811531a3f9f1d2c1faafc3dba3647c8309dd1` |
| 33 | `theorem` | [arcosh_surjOn](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Arcosh/Variant83e037c5603b7e3bc59e5704cb06b6430b96993409ae9b0e578323cc238c06d8.lean/declarations/arcosh-surjon--4a50c134bfb6540ae0ea3f4d.md) | 206 | `result-track:4a50c134bfb6540ae0ea3f4de83c845b15186cca054ef88134cbe9161725bb34` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
