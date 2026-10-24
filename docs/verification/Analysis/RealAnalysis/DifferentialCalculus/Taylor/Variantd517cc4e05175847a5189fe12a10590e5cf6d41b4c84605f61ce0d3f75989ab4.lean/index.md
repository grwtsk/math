# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.Taylor.Variantd517cc4e05175847a5189fe12a10590e5cf6d41b4c84605f61ce0d3f75989ab4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7f8c3c355b39076694695564d2a3b93546862e71",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Taylor/Variantd517cc4e05175847a5189fe12a10590e5cf6d41b4c84605f61ce0d3f75989ab4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Taylor/Variantd517cc4e05175847a5189fe12a10590e5cf6d41b4c84605f61ce0d3f75989ab4.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Taylor/Variantd517cc4e05175847a5189fe12a10590e5cf6d41b4c84605f61ce0d3f75989ab4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7f8c3c355b39076694695564d2a3b93546862e71`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Taylor/Variantd517cc4e05175847a5189fe12a10590e5cf6d41b4c84605f61ce0d3f75989ab4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/Taylor/Variantd517cc4e05175847a5189fe12a10590e5cf6d41b4c84605f61ce0d3f75989ab4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.EuclideanDomain.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.EuclideanDomain.Field` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Polynomial.Module.Basic` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.ContDiff.Basic` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.Deriv.Pow` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.IteratedDeriv.Defs` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.MeanValue` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.Deriv.MeanValue` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [taylorCoeffWithin](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Taylor/Variantd517cc4e05175847a5189fe12a10590e5cf6d41b4c84605f61ce0d3f75989ab4.lean/declarations/taylorcoeffwithin--5b913f43cb3ec4a4dee512e3.md) | 57 | `declaration-track:5b913f43cb3ec4a4dee512e35e06cf519222bd599102d04ee3cc709daebb74c0` |
| 2 | `def` | [taylorWithin](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Taylor/Variantd517cc4e05175847a5189fe12a10590e5cf6d41b4c84605f61ce0d3f75989ab4.lean/declarations/taylorwithin--40f3d2ca7090a540b436e595.md) | 65 | `declaration-track:40f3d2ca7090a540b436e59554c0c87aa5723b1cd1620cd416ed26da9560a733` |
| 3 | `def` | [taylorWithinEval](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Taylor/Variantd517cc4e05175847a5189fe12a10590e5cf6d41b4c84605f61ce0d3f75989ab4.lean/declarations/taylorwithineval--d74d50bde184704632b0a881.md) | 71 | `declaration-track:d74d50bde184704632b0a88172f9d07a8704efa870219fb08c29559bea855c64` |
| 4 | `theorem` | [taylorWithin_succ](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Taylor/Variantd517cc4e05175847a5189fe12a10590e5cf6d41b4c84605f61ce0d3f75989ab4.lean/declarations/taylorwithin-succ--97786a7f4a8987ea4a950c0b.md) | 74 | `result-track:97786a7f4a8987ea4a950c0bc76c7fc94d69192047d2d0ecf80a011f0db9cbfa` |
| 5 | `theorem` | [taylorWithinEval_succ](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Taylor/Variantd517cc4e05175847a5189fe12a10590e5cf6d41b4c84605f61ce0d3f75989ab4.lean/declarations/taylorwithineval-succ--42b7460475e6b8e392cbe81d.md) | 82 | `result-track:42b7460475e6b8e392cbe81d69df994d34793f9d4c006aba01ff9722e7367668` |
| 6 | `theorem` | [taylor_within_zero_eval](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Taylor/Variantd517cc4e05175847a5189fe12a10590e5cf6d41b4c84605f61ce0d3f75989ab4.lean/declarations/taylor-within-zero-eval--49f516754582701c62f6e3bc.md) | 95 | `result-track:49f516754582701c62f6e3bc3caa2de41b0e5355cf67c129235a2cc097d9ddcf` |
| 7 | `theorem` | [taylorWithinEval_self](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Taylor/Variantd517cc4e05175847a5189fe12a10590e5cf6d41b4c84605f61ce0d3f75989ab4.lean/declarations/taylorwithineval-self--3807810c6e0cb8edb929324d.md) | 104 | `result-track:3807810c6e0cb8edb929324d616301ebfdb98fc15f7059592674f06c94e96508` |
| 8 | `theorem` | [taylor_within_apply](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Taylor/Variantd517cc4e05175847a5189fe12a10590e5cf6d41b4c84605f61ce0d3f75989ab4.lean/declarations/taylor-within-apply--0cf1095dd118823ce9850c75.md) | 110 | `result-track:0cf1095dd118823ce9850c75fb9424783c10dbd9adc5e069a64414d260b4454c` |
| 9 | `theorem` | [continuousOn_taylorWithinEval](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Taylor/Variantd517cc4e05175847a5189fe12a10590e5cf6d41b4c84605f61ce0d3f75989ab4.lean/declarations/continuouson-taylorwithineval--4ed21a1166b6e49524896caf.md) | 121 | `result-track:4ed21a1166b6e49524896caf1d84ae697978ae3b6498912d18cc71e52d3a76dd` |
| 10 | `theorem` | [monomial_has_deriv_aux](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Taylor/Variantd517cc4e05175847a5189fe12a10590e5cf6d41b4c84605f61ce0d3f75989ab4.lean/declarations/monomial-has-deriv-aux--27a774a1a2ff5f7ad41d132e.md) | 134 | `result-track:27a774a1a2ff5f7ad41d132eaf9b40a845497d7bbd23608661a794b1ffd6f5ec` |
| 11 | `theorem` | [hasDerivWithinAt_taylor_coeff_within](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Taylor/Variantd517cc4e05175847a5189fe12a10590e5cf6d41b4c84605f61ce0d3f75989ab4.lean/declarations/hasderivwithinat-taylor-coeff-within--c297e4ae47ad7a33c973dbe2.md) | 141 | `result-track:c297e4ae47ad7a33c973dbe27d61c159802377dae431cccbd56abd0ed9ab5aaa` |
| 12 | `theorem` | [hasDerivWithinAt_taylorWithinEval](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Taylor/Variantd517cc4e05175847a5189fe12a10590e5cf6d41b4c84605f61ce0d3f75989ab4.lean/declarations/hasderivwithinat-taylorwithineval--bd6fd1591b1350f99eacd987.md) | 167 | `result-track:bd6fd1591b1350f99eacd987797517cc63499b4d5acad85102777e407fec13eb` |
| 13 | `theorem` | [taylorWithinEval_hasDerivAt_Ioo](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Taylor/Variantd517cc4e05175847a5189fe12a10590e5cf6d41b4c84605f61ce0d3f75989ab4.lean/declarations/taylorwithineval-hasderivat-ioo--5542637be182112ba2d562cd.md) | 196 | `result-track:5542637be182112ba2d562cd24951f94ff84bc18b88ba88c92bb09a95632cbd1` |
| 14 | `theorem` | [hasDerivWithinAt_taylorWithinEval_at_Icc](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Taylor/Variantd517cc4e05175847a5189fe12a10590e5cf6d41b4c84605f61ce0d3f75989ab4.lean/declarations/hasderivwithinat-taylorwithineval-at-icc--871ebb65481832e85de76b5c.md) | 209 | `result-track:871ebb65481832e85de76b5cfb4e66a7d54920773f34ea3047c05a53962b9071` |
| 15 | `theorem` | [hasDerivAt_taylorWithinEval_succ](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Taylor/Variantd517cc4e05175847a5189fe12a10590e5cf6d41b4c84605f61ce0d3f75989ab4.lean/declarations/hasderivat-taylorwithineval-succ--ba90796137dbcb2a84402a27.md) | 218 | `result-track:ba90796137dbcb2a84402a27052ed57458e9d047b47057eb45f8da02d5bd85ee` |
| 16 | `theorem` | [taylor_isLittleO](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Taylor/Variantd517cc4e05175847a5189fe12a10590e5cf6d41b4c84605f61ce0d3f75989ab4.lean/declarations/taylor-islittleo--cdfc513489b92163f4c6c2a3.md) | 236 | `result-track:cdfc513489b92163f4c6c2a3bb679c69fa4b9175dc11ad608747b99f8c1e4c16` |
| 17 | `theorem` | [taylor_tendsto](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Taylor/Variantd517cc4e05175847a5189fe12a10590e5cf6d41b4c84605f61ce0d3f75989ab4.lean/declarations/taylor-tendsto--101c2d68360364020108e409.md) | 257 | `result-track:101c2d68360364020108e409aefadfd5fd318596812c76f42d54c7b83e04a01d` |
| 18 | `theorem` | [Real.taylor_tendsto](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Taylor/Variantd517cc4e05175847a5189fe12a10590e5cf6d41b4c84605f61ce0d3f75989ab4.lean/declarations/real-taylor-tendsto--50c1d69b7845868dcad76bd0.md) | 272 | `result-track:50c1d69b7845868dcad76bd0f88d40e80b649af9fdeabfb962e4b0d3ff40ae37` |
| 19 | `theorem` | [taylor_mean_remainder](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Taylor/Variantd517cc4e05175847a5189fe12a10590e5cf6d41b4c84605f61ce0d3f75989ab4.lean/declarations/taylor-mean-remainder--4d001a7b5fb87949e28f31c2.md) | 290 | `result-track:4d001a7b5fb87949e28f31c251fa0e7c5f7cada19ec8c87f8228a864c2f1a49c` |
| 20 | `theorem` | [taylor_mean_remainder_lagrange](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Taylor/Variantd517cc4e05175847a5189fe12a10590e5cf6d41b4c84605f61ce0d3f75989ab4.lean/declarations/taylor-mean-remainder-lagrange--73c67e14456e6ecbb373c11e.md) | 318 | `result-track:73c67e14456e6ecbb373c11e2df02166b7fcc1278698696ac6508729f5f8befb` |
| 21 | `theorem` | [taylor_mean_remainder_cauchy](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Taylor/Variantd517cc4e05175847a5189fe12a10590e5cf6d41b4c84605f61ce0d3f75989ab4.lean/declarations/taylor-mean-remainder-cauchy--c99969a8b9566d902ed48012.md) | 347 | `result-track:c99969a8b9566d902ed480128f38f471ea4d71c41b6eba661cdcbc7934dfefab` |
| 22 | `theorem` | [taylor_mean_remainder_bound](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Taylor/Variantd517cc4e05175847a5189fe12a10590e5cf6d41b4c84605f61ce0d3f75989ab4.lean/declarations/taylor-mean-remainder-bound--5acbf6e19d2d2073aeba12e2.md) | 367 | `result-track:5acbf6e19d2d2073aeba12e26572434c176b840ef4479a7502bdff87598a3506` |
| 23 | `theorem` | [exists_taylor_mean_remainder_bound](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Taylor/Variantd517cc4e05175847a5189fe12a10590e5cf6d41b4c84605f61ce0d3f75989ab4.lean/declarations/exists-taylor-mean-remainder-bound--e6a257af43b1276e243bbeff.md) | 408 | `result-track:e6a257af43b1276e243bbeffdb6767afb9cb0ac23dacf8715fe48b69994380da` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
