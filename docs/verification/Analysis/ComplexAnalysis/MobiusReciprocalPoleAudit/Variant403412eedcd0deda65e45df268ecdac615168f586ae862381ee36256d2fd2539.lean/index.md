# Verification target: GRWTSK.Analysis.ComplexAnalysis.MobiusReciprocalPoleAudit.Variant403412eedcd0deda65e45df268ecdac615168f586ae862381ee36256d2fd2539

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a9c078f92a37b220288b6a23869381b2296aac1e",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/ComplexAnalysis/MobiusReciprocalPoleAudit/Variant403412eedcd0deda65e45df268ecdac615168f586ae862381ee36256d2fd2539.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/ComplexAnalysis/MobiusReciprocalPoleAudit/Variant403412eedcd0deda65e45df268ecdac615168f586ae862381ee36256d2fd2539.lean/index.md) · [Full source](../../../../../mathematics/Analysis/ComplexAnalysis/MobiusReciprocalPoleAudit/Variant403412eedcd0deda65e45df268ecdac615168f586ae862381ee36256d2fd2539.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a9c078f92a37b220288b6a23869381b2296aac1e`.

Source path: `GRWTSK/Analysis/ComplexAnalysis/MobiusReciprocalPoleAudit/Variant403412eedcd0deda65e45df268ecdac615168f586ae862381ee36256d2fd2539.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/ComplexAnalysis/MobiusReciprocalPoleAudit/Variant403412eedcd0deda65e45df268ecdac615168f586ae862381ee36256d2fd2539.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Zeta23.FromPNTPlus.ZetaBounds` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.RemovableSingularity` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [zetaPoleFactor](../../../../../mathematics/Analysis/ComplexAnalysis/MobiusReciprocalPoleAudit/Variant403412eedcd0deda65e45df268ecdac615168f586ae862381ee36256d2fd2539.lean/declarations/zetapolefactor--8ec78a48e9c17186f19f989b.md) | 18 | `declaration-track:8ec78a48e9c17186f19f989b377cb5f47f7a302f32e806f5dc40bd0ef99edac0` |
| 2 | `theorem` | [zetaPoleFactor_zero](../../../../../mathematics/Analysis/ComplexAnalysis/MobiusReciprocalPoleAudit/Variant403412eedcd0deda65e45df268ecdac615168f586ae862381ee36256d2fd2539.lean/declarations/zetapolefactor-zero--522b0756f357dedabd602a54.md) | 20 | `result-track:522b0756f357dedabd602a54db0a5a62b6877020baaf610ed302d86780cf7efb` |
| 3 | `theorem` | [zetaPoleFactor_off](../../../../../mathematics/Analysis/ComplexAnalysis/MobiusReciprocalPoleAudit/Variant403412eedcd0deda65e45df268ecdac615168f586ae862381ee36256d2fd2539.lean/declarations/zetapolefactor-off--6d561b82b2d4492457ccc175.md) | 23 | `result-track:6d561b82b2d4492457ccc175179a5451d194e01c59998aae52cd0046824ac855` |
| 4 | `theorem` | [zetaPoleFactor_limit](../../../../../mathematics/Analysis/ComplexAnalysis/MobiusReciprocalPoleAudit/Variant403412eedcd0deda65e45df268ecdac615168f586ae862381ee36256d2fd2539.lean/declarations/zetapolefactor-limit--4341b4c135b38267a0e3eda3.md) | 27 | `result-track:4341b4c135b38267a0e3eda3c403bfd2115441c050f7f64c1b3fad48cb8f5d71` |
| 5 | `theorem` | [zetaPoleFactor_analyticAt_zero](../../../../../mathematics/Analysis/ComplexAnalysis/MobiusReciprocalPoleAudit/Variant403412eedcd0deda65e45df268ecdac615168f586ae862381ee36256d2fd2539.lean/declarations/zetapolefactor-analyticat-zero--0cfa95a4729f1b8595d16338.md) | 42 | `result-track:0cfa95a4729f1b8595d163384e0617621e62e0c3f9df5918477e7647268e40b1` |
| 6 | `def` | [reciprocalZeta](../../../../../mathematics/Analysis/ComplexAnalysis/MobiusReciprocalPoleAudit/Variant403412eedcd0deda65e45df268ecdac615168f586ae862381ee36256d2fd2539.lean/declarations/reciprocalzeta--61037c1e71568b3e431f0e18.md) | 55 | `declaration-track:61037c1e71568b3e431f0e1872bd5a4b2edca94fc0e7d7bb42621776dfd8ecc9` |
| 7 | `theorem` | [reciprocalZeta_zero](../../../../../mathematics/Analysis/ComplexAnalysis/MobiusReciprocalPoleAudit/Variant403412eedcd0deda65e45df268ecdac615168f586ae862381ee36256d2fd2539.lean/declarations/reciprocalzeta-zero--945d6d25112ec265da074df5.md) | 57 | `result-track:945d6d25112ec265da074df5fc3efb62dd26d9934e8d272f7e0b4517e49e525b` |
| 8 | `theorem` | [reciprocalZeta_off](../../../../../mathematics/Analysis/ComplexAnalysis/MobiusReciprocalPoleAudit/Variant403412eedcd0deda65e45df268ecdac615168f586ae862381ee36256d2fd2539.lean/declarations/reciprocalzeta-off--dc8c8b9283987bdd2b141f69.md) | 60 | `result-track:dc8c8b9283987bdd2b141f69a363e220fc48ded85a2bb9bdc1fc15fbb6439385` |
| 9 | `theorem` | [reciprocalZeta_eq_div_factor](../../../../../mathematics/Analysis/ComplexAnalysis/MobiusReciprocalPoleAudit/Variant403412eedcd0deda65e45df268ecdac615168f586ae862381ee36256d2fd2539.lean/declarations/reciprocalzeta-eq-div-factor--24ff6eb55f7f53b457f23109.md) | 64 | `result-track:24ff6eb55f7f53b457f231098b2779a707a14f758d103d8393a46fea3b892f48` |
| 10 | `theorem` | [reciprocalZeta_analyticAt_zero](../../../../../mathematics/Analysis/ComplexAnalysis/MobiusReciprocalPoleAudit/Variant403412eedcd0deda65e45df268ecdac615168f586ae862381ee36256d2fd2539.lean/declarations/reciprocalzeta-analyticat-zero--00a48247442a63a4bdb4aaf4.md) | 71 | `result-track:00a48247442a63a4bdb4aaf4327beb87807971f781f314af96c6a7739471b637` |
| 11 | `theorem` | [reciprocalZeta_hasDerivAt_zero](../../../../../mathematics/Analysis/ComplexAnalysis/MobiusReciprocalPoleAudit/Variant403412eedcd0deda65e45df268ecdac615168f586ae862381ee36256d2fd2539.lean/declarations/reciprocalzeta-hasderivat-zero--118587f0ad7f0217081c2b03.md) | 77 | `result-track:118587f0ad7f0217081c2b03d3f117b0c4c6d388204ae7a3c3bd14682dad2aa3` |
| 12 | `theorem` | [reciprocalZeta_eventually_ne_zero](../../../../../mathematics/Analysis/ComplexAnalysis/MobiusReciprocalPoleAudit/Variant403412eedcd0deda65e45df268ecdac615168f586ae862381ee36256d2fd2539.lean/declarations/reciprocalzeta-eventually-ne-zero--38b2f4ddc984182e76c34ea2.md) | 85 | `result-track:38b2f4ddc984182e76c34ea28db5976b8195dcd4bc741719c04252bcfc91b245` |
| 13 | `def` | [smoothedPerronIntegrand](../../../../../mathematics/Analysis/ComplexAnalysis/MobiusReciprocalPoleAudit/Variant403412eedcd0deda65e45df268ecdac615168f586ae862381ee36256d2fd2539.lean/declarations/smoothedperronintegrand--1d671cedefb90154028b3ea1.md) | 96 | `declaration-track:1d671cedefb90154028b3ea14b0bf95a9c1c4caca911de1a742d5ac41f0bafb9` |
| 14 | `theorem` | [smoothedPerronIntegrand_factor](../../../../../mathematics/Analysis/ComplexAnalysis/MobiusReciprocalPoleAudit/Variant403412eedcd0deda65e45df268ecdac615168f586ae862381ee36256d2fd2539.lean/declarations/smoothedperronintegrand-factor--2176b23c1a92b6e44add9da8.md) | 99 | `result-track:2176b23c1a92b6e44add9da8ca5566e1b05b49015f7b584171a07c1fd0be647d` |
| 15 | `theorem` | [perronNumerator_analyticAt_zero](../../../../../mathematics/Analysis/ComplexAnalysis/MobiusReciprocalPoleAudit/Variant403412eedcd0deda65e45df268ecdac615168f586ae862381ee36256d2fd2539.lean/declarations/perronnumerator-analyticat-zero--eb74923c6b422a45207f5dcc.md) | 107 | `result-track:eb74923c6b422a45207f5dcc348e0fb3fdfe110b424d0737a30dd47f43fd84c8` |
| 16 | `theorem` | [smoothedPerronIntegrand_meromorphicAt_zero](../../../../../mathematics/Analysis/ComplexAnalysis/MobiusReciprocalPoleAudit/Variant403412eedcd0deda65e45df268ecdac615168f586ae862381ee36256d2fd2539.lean/declarations/smoothedperronintegrand-meromorphicat-zero--0cbf46a8c989b15d8f520ff6.md) | 116 | `result-track:0cbf46a8c989b15d8f520ff6433daf490958a80c47dd24369775d034695fdb79` |
| 17 | `theorem` | [smoothedPerronIntegrand_order_zero](../../../../../mathematics/Analysis/ComplexAnalysis/MobiusReciprocalPoleAudit/Variant403412eedcd0deda65e45df268ecdac615168f586ae862381ee36256d2fd2539.lean/declarations/smoothedperronintegrand-order-zero--0b201bfd21b9bb6a1b1d0801.md) | 123 | `result-track:0b201bfd21b9bb6a1b1d080128f3e60834d53ee90aea59000a3f38678259ea35` |
| 18 | `theorem` | [smoothedPerronIntegrand_residue_limit](../../../../../mathematics/Analysis/ComplexAnalysis/MobiusReciprocalPoleAudit/Variant403412eedcd0deda65e45df268ecdac615168f586ae862381ee36256d2fd2539.lean/declarations/smoothedperronintegrand-residue-limit--dba1cad623203f5fd0b372e9.md) | 133 | `result-track:dba1cad623203f5fd0b372e963008f8592c07cfadae512a15e95005e1882fd48` |
| 19 | `theorem` | [smoothedPerronIntegrand_residue_one](../../../../../mathematics/Analysis/ComplexAnalysis/MobiusReciprocalPoleAudit/Variant403412eedcd0deda65e45df268ecdac615168f586ae862381ee36256d2fd2539.lean/declarations/smoothedperronintegrand-residue-one--46ffb397a8cb736e8f1a22cf.md) | 144 | `result-track:46ffb397a8cb736e8f1a22cf9f68542d96d69480e576d2c01d2370fec31bc21a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
