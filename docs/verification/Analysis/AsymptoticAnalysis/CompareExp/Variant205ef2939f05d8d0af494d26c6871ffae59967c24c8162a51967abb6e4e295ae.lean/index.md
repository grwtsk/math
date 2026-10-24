# Verification target: GRWTSK.Analysis.AsymptoticAnalysis.CompareExp.Variant205ef2939f05d8d0af494d26c6871ffae59967c24c8162a51967abb6e4e295ae

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ef229187528be28004a47db3acf13d2da7f1a200",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/CompareExp/Variant205ef2939f05d8d0af494d26c6871ffae59967c24c8162a51967abb6e4e295ae.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/AsymptoticAnalysis/CompareExp/Variant205ef2939f05d8d0af494d26c6871ffae59967c24c8162a51967abb6e4e295ae.lean/index.md) · [Full source](../../../../../mathematics/Analysis/AsymptoticAnalysis/CompareExp/Variant205ef2939f05d8d0af494d26c6871ffae59967c24c8162a51967abb6e4e295ae.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ef229187528be28004a47db3acf13d2da7f1a200`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/CompareExp/Variant205ef2939f05d8d0af494d26c6871ffae59967c24c8162a51967abb6e4e295ae.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/CompareExp/Variant205ef2939f05d8d0af494d26c6871ffae59967c24c8162a51967abb6e4e295ae.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecialFunctions.Pow.Asymptotics` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Asymptotics.AsymptoticEquivalent` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Asymptotics.SpecificAsymptotics` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [IsExpCmpFilter](../../../../../mathematics/Analysis/AsymptoticAnalysis/CompareExp/Variant205ef2939f05d8d0af494d26c6871ffae59967c24c8162a51967abb6e4e295ae.lean/declarations/isexpcmpfilter--4d602ca5bb54d6bd7dcd508d.md) | 50 | `declaration-track:4d602ca5bb54d6bd7dcd508d4f488f556659f9af7faa69cff5ddd2a30a982009` |
| 2 | `theorem` | [of_isBigO_im_re_rpow](../../../../../mathematics/Analysis/AsymptoticAnalysis/CompareExp/Variant205ef2939f05d8d0af494d26c6871ffae59967c24c8162a51967abb6e4e295ae.lean/declarations/of-isbigo-im-re-rpow--d9f899cfe37f575d928518a6.md) | 62 | `result-track:d9f899cfe37f575d928518a6a18ce8773bd8d3a0c4dc335447a908a085b68c32` |
| 3 | `theorem` | [of_isBigO_im_re_pow](../../../../../mathematics/Analysis/AsymptoticAnalysis/CompareExp/Variant205ef2939f05d8d0af494d26c6871ffae59967c24c8162a51967abb6e4e295ae.lean/declarations/of-isbigo-im-re-pow--7a2e06245d5bb87a7b030a32.md) | 73 | `result-track:7a2e06245d5bb87a7b030a32e8c127082bf3d2fce30a07b10d113558c470b3c1` |
| 4 | `theorem` | [of_boundedUnder_abs_im](../../../../../mathematics/Analysis/AsymptoticAnalysis/CompareExp/Variant205ef2939f05d8d0af494d26c6871ffae59967c24c8162a51967abb6e4e295ae.lean/declarations/of-boundedunder-abs-im--4e0a682d8e23c4dea6931b8a.md) | 77 | `result-track:4e0a682d8e23c4dea6931b8a2231185a0368ec83b05025a6fd73139b90f993c1` |
| 5 | `theorem` | [of_boundedUnder_im](../../../../../mathematics/Analysis/AsymptoticAnalysis/CompareExp/Variant205ef2939f05d8d0af494d26c6871ffae59967c24c8162a51967abb6e4e295ae.lean/declarations/of-boundedunder-im--6c15fbe9611f2278143c70d3.md) | 82 | `result-track:6c15fbe9611f2278143c70d386998d9c703a2fa232248bff952722fbd6ba6192` |
| 6 | `theorem` | [eventually_ne](../../../../../mathematics/Analysis/AsymptoticAnalysis/CompareExp/Variant205ef2939f05d8d0af494d26c6871ffae59967c24c8162a51967abb6e4e295ae.lean/declarations/eventually-ne--76a946ef99640a7e6f229842.md) | 90 | `result-track:76a946ef99640a7e6f229842e64d9610a788464bd97d1f1af0f51fb910da7711` |
| 7 | `theorem` | [tendsto_abs_re](../../../../../mathematics/Analysis/AsymptoticAnalysis/CompareExp/Variant205ef2939f05d8d0af494d26c6871ffae59967c24c8162a51967abb6e4e295ae.lean/declarations/tendsto-abs-re--0824484441585df9f5a54402.md) | 93 | `result-track:0824484441585df9f5a54402896c66d9683b2386e1931defe79b8faa4cbdb035` |
| 8 | `theorem` | [tendsto_norm](../../../../../mathematics/Analysis/AsymptoticAnalysis/CompareExp/Variant205ef2939f05d8d0af494d26c6871ffae59967c24c8162a51967abb6e4e295ae.lean/declarations/tendsto-norm--445668e788f258a6839b55e3.md) | 96 | `result-track:445668e788f258a6839b55e35d42927abf842f145311a86bb4a43f7f3711fb0b` |
| 9 | `theorem` | [isLittleO_log_re_re](../../../../../mathematics/Analysis/AsymptoticAnalysis/CompareExp/Variant205ef2939f05d8d0af494d26c6871ffae59967c24c8162a51967abb6e4e295ae.lean/declarations/islittleo-log-re-re--693968a7ab5ffb5ccef60b01.md) | 101 | `result-track:693968a7ab5ffb5ccef60b010e06b04ad00e40ab4c63fc0504f00f66874287cb` |
| 10 | `theorem` | [isLittleO_im_pow_exp_re](../../../../../mathematics/Analysis/AsymptoticAnalysis/CompareExp/Variant205ef2939f05d8d0af494d26c6871ffae59967c24c8162a51967abb6e4e295ae.lean/declarations/islittleo-im-pow-exp-re--2ebc803858a8847fec055262.md) | 104 | `result-track:2ebc803858a8847fec0552623952f281bcba43b0a3fd3034a79da1ddba69379f` |
| 11 | `theorem` | [abs_im_pow_eventuallyLE_exp_re](../../../../../mathematics/Analysis/AsymptoticAnalysis/CompareExp/Variant205ef2939f05d8d0af494d26c6871ffae59967c24c8162a51967abb6e4e295ae.lean/declarations/abs-im-pow-eventuallyle-exp-re--ecd1c6c62bc3c878ff46235d.md) | 115 | `result-track:ecd1c6c62bc3c878ff46235d9356d01197ca466b0d22dbd1774cd4aee734ca6f` |
| 12 | `theorem` | [isLittleO_log_norm_re](../../../../../mathematics/Analysis/AsymptoticAnalysis/CompareExp/Variant205ef2939f05d8d0af494d26c6871ffae59967c24c8162a51967abb6e4e295ae.lean/declarations/islittleo-log-norm-re--28ed4b2623411d1fff5c3ef4.md) | 122 | `result-track:28ed4b2623411d1fff5c3ef4b7feb961499b5fd47d8cec8b04332e984ddeff8b` |
| 13 | `lemma` | [isTheta_cpow_exp_re_mul_log](../../../../../mathematics/Analysis/AsymptoticAnalysis/CompareExp/Variant205ef2939f05d8d0af494d26c6871ffae59967c24c8162a51967abb6e4e295ae.lean/declarations/istheta-cpow-exp-re-mul-log--c6ac91636973199190045cde.md) | 153 | `result-track:c6ac91636973199190045cdedc58b363dfb6d3b6c502483ffcd8fd47f859ea41` |
| 14 | `theorem` | [isLittleO_cpow_exp](../../../../../mathematics/Analysis/AsymptoticAnalysis/CompareExp/Variant205ef2939f05d8d0af494d26c6871ffae59967c24c8162a51967abb6e4e295ae.lean/declarations/islittleo-cpow-exp--8f304553f84ecc53ce1874a5.md) | 164 | `result-track:8f304553f84ecc53ce1874a55eaf5a4a348a73baf1d6a09e63511103e891a838` |
| 15 | `theorem` | [isLittleO_cpow_mul_exp](../../../../../mathematics/Analysis/AsymptoticAnalysis/CompareExp/Variant205ef2939f05d8d0af494d26c6871ffae59967c24c8162a51967abb6e4e295ae.lean/declarations/islittleo-cpow-mul-exp--d9cfdeb2c963d253ba5c4314.md) | 178 | `result-track:d9cfdeb2c963d253ba5c4314122311c2a5254cff3b9b62d1e9a5ea5d407bd11a` |
| 16 | `theorem` | [isLittleO_exp_cpow](../../../../../mathematics/Analysis/AsymptoticAnalysis/CompareExp/Variant205ef2939f05d8d0af494d26c6871ffae59967c24c8162a51967abb6e4e295ae.lean/declarations/islittleo-exp-cpow--e921bab0cc065b87b2ea10fe.md) | 194 | `result-track:e921bab0cc065b87b2ea10fe8936526820d79e7ddb68cc269b9eebe3229d8234` |
| 17 | `theorem` | [isLittleO_pow_mul_exp](../../../../../mathematics/Analysis/AsymptoticAnalysis/CompareExp/Variant205ef2939f05d8d0af494d26c6871ffae59967c24c8162a51967abb6e4e295ae.lean/declarations/islittleo-pow-mul-exp--c39033611fcec48953ec58c2.md) | 200 | `result-track:c39033611fcec48953ec58c2b9d354bb6346928413c6a32db26e2f53049fe7f9` |
| 18 | `theorem` | [isLittleO_zpow_mul_exp](../../../../../mathematics/Analysis/AsymptoticAnalysis/CompareExp/Variant205ef2939f05d8d0af494d26c6871ffae59967c24c8162a51967abb6e4e295ae.lean/declarations/islittleo-zpow-mul-exp--5086b2d25c3d16eaa71eddda.md) | 207 | `result-track:5086b2d25c3d16eaa71eddda0409723eece660ceb3dfe3385a5fbc6c8909ffbb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
