# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.Rademacher.Variant5dbb70afe11a3461a829703cc7a1d20746a21010cd632446aecc0b4dbc35f140

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fadad992ff493ae0e39a7b16b8291d8b7b75caff",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Rademacher/Variant5dbb70afe11a3461a829703cc7a1d20746a21010cd632446aecc0b4dbc35f140.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Rademacher/Variant5dbb70afe11a3461a829703cc7a1d20746a21010cd632446aecc0b4dbc35f140.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Rademacher/Variant5dbb70afe11a3461a829703cc7a1d20746a21010cd632446aecc0b4dbc35f140.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fadad992ff493ae0e39a7b16b8291d8b7b75caff`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Rademacher/Variant5dbb70afe11a3461a829703cc7a1d20746a21010cd632446aecc0b4dbc35f140.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/Rademacher/Variant5dbb70afe11a3461a829703cc7a1d20746a21010cd632446aecc0b4dbc35f140.lean.json)

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
| 1 | `theorem` | [memLp_lineDeriv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Rademacher/Variant5dbb70afe11a3461a829703cc7a1d20746a21010cd632446aecc0b4dbc35f140.lean/declarations/memlp-linederiv--6c045939c7e28ae159fc5551.md) | 68 | `result-track:6c045939c7e28ae159fc55515a5c011dc6a3b4306c72043f0f448cbee97db32d` |
| 2 | `theorem` | [ae_lineDifferentiableAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Rademacher/Variant5dbb70afe11a3461a829703cc7a1d20746a21010cd632446aecc0b4dbc35f140.lean/declarations/ae-linedifferentiableat--bbb1779dcf50e2f9aa8b2ee1.md) | 75 | `result-track:bbb1779dcf50e2f9aa8b2ee1f79dca02a63a69d5f88c0169e5e5b79233834041` |
| 3 | `theorem` | [locallyIntegrable_lineDeriv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Rademacher/Variant5dbb70afe11a3461a829703cc7a1d20746a21010cd632446aecc0b4dbc35f140.lean/declarations/locallyintegrable-linederiv--b1113db72e6a0fab0cc1ffe6.md) | 92 | `result-track:b1113db72e6a0fab0cc1ffe6502d9970fa9686114b1b13bc5185a2e05b1626d8` |
| 4 | `theorem` | [integral_inv_smul_sub_mul_tendsto_integral_lineDeriv_mul](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Rademacher/Variant5dbb70afe11a3461a829703cc7a1d20746a21010cd632446aecc0b4dbc35f140.lean/declarations/integral-inv-smul-sub-mul-tendsto-integral-linederiv-mul--e119dae9ccb918ab5fb969ef.md) | 105 | `result-track:e119dae9ccb918ab5fb969efd6a1faa20aa474aac9616b1b128727a233beac98` |
| 5 | `theorem` | [integral_inv_smul_sub_mul_tendsto_integral_lineDeriv_mul'](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Rademacher/Variant5dbb70afe11a3461a829703cc7a1d20746a21010cd632446aecc0b4dbc35f140.lean/declarations/integral-inv-smul-sub-mul-tendsto-integral-linederiv-mul--8f9576fb007426142d0db4cf.md) | 127 | `result-track:8f9576fb007426142d0db4cfa32008c8c12e8c515c5d94873d845406a64bc342` |
| 6 | `theorem` | [integral_lineDeriv_mul_eq](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Rademacher/Variant5dbb70afe11a3461a829703cc7a1d20746a21010cd632446aecc0b4dbc35f140.lean/declarations/integral-linederiv-mul-eq--3c2b8350d9babd289fec1a5f.md) | 171 | `result-track:3c2b8350d9babd289fec1a5fa2564b5216d3d089e9cee4c5de15259ed3b28f6f` |
| 7 | `theorem` | [ae_lineDeriv_sum_eq](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Rademacher/Variant5dbb70afe11a3461a829703cc7a1d20746a21010cd632446aecc0b4dbc35f140.lean/declarations/ae-linederiv-sum-eq--0cb16a77470e7de50f541a86.md) | 206 | `result-track:0cb16a77470e7de50f541a86bb8937d11ef206806bbea2f4c597ae8fd46ec35c` |
| 8 | `theorem` | [ae_exists_fderiv_of_countable](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Rademacher/Variant5dbb70afe11a3461a829703cc7a1d20746a21010cd632446aecc0b4dbc35f140.lean/declarations/ae-exists-fderiv-of-countable--6178f22f2b5f4f4c6356ab11.md) | 247 | `result-track:6178f22f2b5f4f4c6356ab11b414839918fb9812571707671696ecea553f70ab` |
| 9 | `theorem` | [hasFDerivAt_of_hasLineDerivAt_of_closure](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Rademacher/Variant5dbb70afe11a3461a829703cc7a1d20746a21010cd632446aecc0b4dbc35f140.lean/declarations/hasfderivat-of-haslinederivat-of-closure--da4216ed31663a391a09c40c.md) | 266 | `result-track:da4216ed31663a391a09c40c2004f52137b92184e63bc9633f4ad41daeff5749` |
| 10 | `theorem` | [ae_differentiableAt_of_real](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Rademacher/Variant5dbb70afe11a3461a829703cc7a1d20746a21010cd632446aecc0b4dbc35f140.lean/declarations/ae-differentiableat-of-real--72ea4d79f123e37c60e83141.md) | 322 | `result-track:72ea4d79f123e37c60e831417369641caa7c4f4a0be447e69cd26530ab92b8fb` |
| 11 | `theorem` | [ae_differentiableWithinAt_of_mem_of_real](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Rademacher/Variant5dbb70afe11a3461a829703cc7a1d20746a21010cd632446aecc0b4dbc35f140.lean/declarations/ae-differentiablewithinat-of-mem-of-real--258862cabab1e95c991144b7.md) | 341 | `result-track:258862cabab1e95c991144b77859d9d74786ab11dd4f2c6b4cc302305ea5ae18` |
| 12 | `theorem` | [ae_differentiableWithinAt_of_mem_pi](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Rademacher/Variant5dbb70afe11a3461a829703cc7a1d20746a21010cd632446aecc0b4dbc35f140.lean/declarations/ae-differentiablewithinat-of-mem-pi--0e149d316e2fc9bd52a73164.md) | 351 | `result-track:0e149d316e2fc9bd52a73164b18e1c31828e11d46a568a5a601e9d783b1b70d3` |
| 13 | `theorem` | [ae_differentiableWithinAt_of_mem](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Rademacher/Variant5dbb70afe11a3461a829703cc7a1d20746a21010cd632446aecc0b4dbc35f140.lean/declarations/ae-differentiablewithinat-of-mem--df3c4d32fe97b78db5733d79.md) | 363 | `result-track:df3c4d32fe97b78db5733d792f2711d9e348bf8d1315ec4520873a4aad3ae06b` |
| 14 | `theorem` | [ae_differentiableWithinAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Rademacher/Variant5dbb70afe11a3461a829703cc7a1d20746a21010cd632446aecc0b4dbc35f140.lean/declarations/ae-differentiablewithinat--d6cda08fe9ba71340ecb1523.md) | 377 | `result-track:d6cda08fe9ba71340ecb1523470dc69b579f3e3ed525674712ab94836daaa97f` |
| 15 | `theorem` | [LipschitzWith.ae_differentiableAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Rademacher/Variant5dbb70afe11a3461a829703cc7a1d20746a21010cd632446aecc0b4dbc35f140.lean/declarations/lipschitzwith-ae-differentiableat--a5bcdc2acc7db5cf7f7de48c.md) | 387 | `result-track:a5bcdc2acc7db5cf7f7de48c1154548ce0bfdf76f3ecd6adeef04befe789ad57` |
| 16 | `theorem` | [ae_differentiableAt_norm](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Rademacher/Variant5dbb70afe11a3461a829703cc7a1d20746a21010cd632446aecc0b4dbc35f140.lean/declarations/ae-differentiableat-norm--e6e4a47074caa42358da2f7d.md) | 394 | `result-track:e6e4a47074caa42358da2f7d74183add27305bc6b62ad66181b21858b9a3472f` |
| 17 | `theorem` | [dense_differentiableAt_norm](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Rademacher/Variant5dbb70afe11a3461a829703cc7a1d20746a21010cd632446aecc0b4dbc35f140.lean/declarations/dense-differentiableat-norm--5f5fcba787bbf792296a7ad2.md) | 400 | `result-track:5f5fcba787bbf792296a7ad2b50bc3f941c061d165137b67c3c33b784d527b34` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
