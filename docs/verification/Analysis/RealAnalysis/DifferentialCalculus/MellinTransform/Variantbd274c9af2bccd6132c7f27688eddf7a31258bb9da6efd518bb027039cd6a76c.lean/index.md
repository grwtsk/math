# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.MellinTransform.Variantbd274c9af2bccd6132c7f27688eddf7a31258bb9da6efd518bb027039cd6a76c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a1334cf635cc67378b0eec1a0bce7ba0190ff3e3",
  "lexical_observation_count": 31,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/MellinTransform/Variantbd274c9af2bccd6132c7f27688eddf7a31258bb9da6efd518bb027039cd6a76c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MellinTransform/Variantbd274c9af2bccd6132c7f27688eddf7a31258bb9da6efd518bb027039cd6a76c.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MellinTransform/Variantbd274c9af2bccd6132c7f27688eddf7a31258bb9da6efd518bb027039cd6a76c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a1334cf635cc67378b0eec1a0bce7ba0190ff3e3`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/MellinTransform/Variantbd274c9af2bccd6132c7f27688eddf7a31258bb9da6efd518bb027039cd6a76c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/MellinTransform/Variantbd274c9af2bccd6132c7f27688eddf7a31258bb9da6efd518bb027039cd6a76c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecialFunctions.ImproperIntegrals` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.ParametricIntegral` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Measure.Haar.NormedSpace` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [cpow_mul_ofReal_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MellinTransform/Variantbd274c9af2bccd6132c7f27688eddf7a31258bb9da6efd518bb027039cd6a76c.lean/declarations/cpow-mul-ofreal-nonneg--f44d23496c008ea9c54e8b15.md) | 33 | `result-track:f44d23496c008ea9c54e8b15373dd46da01a7b35fc62941d33173b766667a8ba` |
| 2 | `def` | [MellinConvergent](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MellinTransform/Variantbd274c9af2bccd6132c7f27688eddf7a31258bb9da6efd518bb027039cd6a76c.lean/declarations/mellinconvergent--1bd2b00837dd5161172cfc0f.md) | 55 | `declaration-track:1bd2b00837dd5161172cfc0fd53afbe72a4d8b0f21829cee09f8cc3e1b454f70` |
| 3 | `theorem` | [MellinConvergent.const_smul](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MellinTransform/Variantbd274c9af2bccd6132c7f27688eddf7a31258bb9da6efd518bb027039cd6a76c.lean/declarations/mellinconvergent-const-smul--c04604899059e439beb6bcb3.md) | 59 | `result-track:c04604899059e439beb6bcb3f93eb0dbd02ac6e57f3ed43f37afd5b586ffb8e1` |
| 4 | `theorem` | [MellinConvergent.cpow_smul](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MellinTransform/Variantbd274c9af2bccd6132c7f27688eddf7a31258bb9da6efd518bb027039cd6a76c.lean/declarations/mellinconvergent-cpow-smul--d928715f0096e5befbd0db52.md) | 65 | `result-track:d928715f0096e5befbd0db524182d0d5250793a0a4b96a72cca036e06e6240ee` |
| 5 | `theorem` | [MellinConvergent.div_const](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MellinTransform/Variantbd274c9af2bccd6132c7f27688eddf7a31258bb9da6efd518bb027039cd6a76c.lean/declarations/mellinconvergent-div-const--5d9804bacd3ae52ad28f5a12.md) | 71 | `result-track:5d9804bacd3ae52ad28f5a1270c47b9a6b254461b691061e48dca64508b2a425` |
| 6 | `theorem` | [MellinConvergent.comp_mul_left](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MellinTransform/Variantbd274c9af2bccd6132c7f27688eddf7a31258bb9da6efd518bb027039cd6a76c.lean/declarations/mellinconvergent-comp-mul-left--a1b320f0a633bdbe9e67cf1f.md) | 76 | `result-track:a1b320f0a633bdbe9e67cf1f5eedd542468d03180e447f9baa92bdd9cd52d860` |
| 7 | `theorem` | [MellinConvergent.comp_rpow](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MellinTransform/Variantbd274c9af2bccd6132c7f27688eddf7a31258bb9da6efd518bb027039cd6a76c.lean/declarations/mellinconvergent-comp-rpow--3486bd57d08f9169cc593e0c.md) | 90 | `result-track:3486bd57d08f9169cc593e0cbb7ba4d0c9c0303dc36d17a7d1a2e004f11db0b9` |
| 8 | `def` | [mellin](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MellinTransform/Variantbd274c9af2bccd6132c7f27688eddf7a31258bb9da6efd518bb027039cd6a76c.lean/declarations/mellin--bc43e70c6ac7c49052a2c730.md) | 106 | `declaration-track:bc43e70c6ac7c49052a2c7308116b3eb124e1f83bdabee60acb5927fbd285029` |
| 9 | `theorem` | [mellin_cpow_smul](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MellinTransform/Variantbd274c9af2bccd6132c7f27688eddf7a31258bb9da6efd518bb027039cd6a76c.lean/declarations/mellin-cpow-smul--0a2c8d6f2f0b328479d9c0ed.md) | 111 | `result-track:0a2c8d6f2f0b328479d9c0ed4851d95e51100fb610cab0392924aa80b84d913e` |
| 10 | `theorem` | [mellin_const_smul](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MellinTransform/Variantbd274c9af2bccd6132c7f27688eddf7a31258bb9da6efd518bb027039cd6a76c.lean/declarations/mellin-const-smul--3eae54074a43a98ea2083b1e.md) | 117 | `result-track:3eae54074a43a98ea2083b1e65a5b883b176f57a49d878e4d56529abe6e4f95a` |
| 11 | `theorem` | [mellin_div_const](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MellinTransform/Variantbd274c9af2bccd6132c7f27688eddf7a31258bb9da6efd518bb027039cd6a76c.lean/declarations/mellin-div-const--4b067c81ef726bde52ba38d7.md) | 122 | `result-track:4b067c81ef726bde52ba38d7db87117b4ec6c1dceb4da8df35ac7f4e227b270e` |
| 12 | `theorem` | [mellin_comp_rpow](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MellinTransform/Variantbd274c9af2bccd6132c7f27688eddf7a31258bb9da6efd518bb027039cd6a76c.lean/declarations/mellin-comp-rpow--0eb96f270151c05bb953af60.md) | 126 | `result-track:0eb96f270151c05bb953af60b7794062d5ebd47f0be1718ee48ca7b4b58b44d7` |
| 13 | `theorem` | [mellin_comp_mul_left](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MellinTransform/Variantbd274c9af2bccd6132c7f27688eddf7a31258bb9da6efd518bb027039cd6a76c.lean/declarations/mellin-comp-mul-left--0b3cc0613a2617ac2ceac5bc.md) | 141 | `result-track:0b3cc0613a2617ac2ceac5bc1078e4a979eff973d45019e87f1fdbf8371b19d2` |
| 14 | `theorem` | [mellin_comp_mul_right](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MellinTransform/Variantbd274c9af2bccd6132c7f27688eddf7a31258bb9da6efd518bb027039cd6a76c.lean/declarations/mellin-comp-mul-right--5e50c6d80a796c73e75a3a40.md) | 159 | `result-track:5e50c6d80a796c73e75a3a400bb2b00c8d2b59cd38c46556b110f73d7c063bf8` |
| 15 | `theorem` | [mellin_comp_inv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MellinTransform/Variantbd274c9af2bccd6132c7f27688eddf7a31258bb9da6efd518bb027039cd6a76c.lean/declarations/mellin-comp-inv--9afbb1c84fd13fa5ce7fe1d5.md) | 164 | `result-track:9afbb1c84fd13fa5ce7fe1d58f71aaadcf36d268eb77d763219f1fb46d65193c` |
| 16 | `def` | [HasMellin](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MellinTransform/Variantbd274c9af2bccd6132c7f27688eddf7a31258bb9da6efd518bb027039cd6a76c.lean/declarations/hasmellin--2730c20fcfbccb1b53592233.md) | 171 | `declaration-track:2730c20fcfbccb1b535922336862a60b4ad8811b2164c7483303660e5ba2d4d3` |
| 17 | `theorem` | [hasMellin_add](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MellinTransform/Variantbd274c9af2bccd6132c7f27688eddf7a31258bb9da6efd518bb027039cd6a76c.lean/declarations/hasmellin-add--9ccda3a321fbc70a48808249.md) | 175 | `result-track:9ccda3a321fbc70a4880824968951c2149958ad95c50bcb77455613c4186719f` |
| 18 | `theorem` | [hasMellin_sub](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MellinTransform/Variantbd274c9af2bccd6132c7f27688eddf7a31258bb9da6efd518bb027039cd6a76c.lean/declarations/hasmellin-sub--8dfb5bca9039d3e9d1b94db5.md) | 181 | `result-track:8dfb5bca9039d3e9d1b94db57890a03e02d4cfc53b76d4f349c6ecb36ed4edee` |
| 19 | `theorem` | [mellin_convergent_iff_norm](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MellinTransform/Variantbd274c9af2bccd6132c7f27688eddf7a31258bb9da6efd518bb027039cd6a76c.lean/declarations/mellin-convergent-iff-norm--8119891ab03a92839a4727ae.md) | 197 | `result-track:8119891ab03a92839a4727ae00df9d232cc7587d72a7a4ac9207cfac0794f988` |
| 20 | `theorem` | [mellin_convergent_top_of_isBigO](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MellinTransform/Variantbd274c9af2bccd6132c7f27688eddf7a31258bb9da6efd518bb027039cd6a76c.lean/declarations/mellin-convergent-top-of-isbigo--60bd714b5cd9bd626d27e824.md) | 211 | `result-track:60bd714b5cd9bd626d27e8245dbded804155b5e457e60b5b99efa473034613dc` |
| 21 | `theorem` | [mellin_convergent_zero_of_isBigO](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MellinTransform/Variantbd274c9af2bccd6132c7f27688eddf7a31258bb9da6efd518bb027039cd6a76c.lean/declarations/mellin-convergent-zero-of-isbigo--18f70286e6b446358e69633e.md) | 238 | `result-track:18f70286e6b446358e69633e26b3fd9ce1d6c1ac49504ca2a569cc36536092ac` |
| 22 | `theorem` | [mellin_convergent_of_isBigO_scalar](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MellinTransform/Variantbd274c9af2bccd6132c7f27688eddf7a31258bb9da6efd518bb027039cd6a76c.lean/declarations/mellin-convergent-of-isbigo-scalar--c24ff4ee35087d6faf145e00.md) | 271 | `result-track:c24ff4ee35087d6faf145e008d1c120b8b8f32e17d61e4ac4975691141ce2b0a` |
| 23 | `theorem` | [mellinConvergent_of_isBigO_rpow](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MellinTransform/Variantbd274c9af2bccd6132c7f27688eddf7a31258bb9da6efd518bb027039cd6a76c.lean/declarations/mellinconvergent-of-isbigo-rpow--7bc5fdaa53bd0a8e95e4c807.md) | 290 | `result-track:7bc5fdaa53bd0a8e95e4c80772958d5f9d51b7c24ac38ccb39e564fb46baf82d` |
| 24 | `theorem` | [isBigO_rpow_top_log_smul](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MellinTransform/Variantbd274c9af2bccd6132c7f27688eddf7a31258bb9da6efd518bb027039cd6a76c.lean/declarations/isbigo-rpow-top-log-smul--572262c265750c41342edd8c.md) | 305 | `result-track:572262c265750c41342edd8c34705138b4ae2ee1b0c720f8805adf96a320aa78` |
| 25 | `theorem` | [isBigO_rpow_zero_log_smul](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MellinTransform/Variantbd274c9af2bccd6132c7f27688eddf7a31258bb9da6efd518bb027039cd6a76c.lean/declarations/isbigo-rpow-zero-log-smul--b0e5b5df3813b5441de7635c.md) | 318 | `result-track:b0e5b5df3813b5441de7635ce4b8df1a0671976834c7924242aa85fc26fe10b8` |
| 26 | `theorem` | [mellin_hasDerivAt_of_isBigO_rpow](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MellinTransform/Variantbd274c9af2bccd6132c7f27688eddf7a31258bb9da6efd518bb027039cd6a76c.lean/declarations/mellin-hasderivat-of-isbigo-rpow--633a011e38f2fb1be1443abd.md) | 340 | `result-track:633a011e38f2fb1be1443abdc10ae07534d3148665aec91be5abcbae0749c973` |
| 27 | `theorem` | [mellin_differentiableAt_of_isBigO_rpow](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MellinTransform/Variantbd274c9af2bccd6132c7f27688eddf7a31258bb9da6efd518bb027039cd6a76c.lean/declarations/mellin-differentiableat-of-isbigo-rpow--0d5efd810db0dbfea92d7fc2.md) | 422 | `result-track:0d5efd810db0dbfea92d7fc20ee96aa719884c33be25ff83b76b778769794365` |
| 28 | `theorem` | [mellinConvergent_of_isBigO_rpow_exp](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MellinTransform/Variantbd274c9af2bccd6132c7f27688eddf7a31258bb9da6efd518bb027039cd6a76c.lean/declarations/mellinconvergent-of-isbigo-rpow-exp--bc06a7eb27d9b029ecf6123c.md) | 437 | `result-track:bc06a7eb27d9b029ecf6123cdfaa1db480fe7369e83a9f3606a77b7e458a4393` |
| 29 | `theorem` | [mellin_differentiableAt_of_isBigO_rpow_exp](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MellinTransform/Variantbd274c9af2bccd6132c7f27688eddf7a31258bb9da6efd518bb027039cd6a76c.lean/declarations/mellin-differentiableat-of-isbigo-rpow-exp--a09591b6ad79f1f0fac2bb47.md) | 447 | `result-track:a09591b6ad79f1f0fac2bb470323885153c0f559984edcea1cd40d8ff14081f7` |
| 30 | `theorem` | [hasMellin_one_Ioc](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MellinTransform/Variantbd274c9af2bccd6132c7f27688eddf7a31258bb9da6efd518bb027039cd6a76c.lean/declarations/hasmellin-one-ioc--b0a7ee5354407121dc0d77f4.md) | 465 | `result-track:b0a7ee5354407121dc0d77f453b774d369a4a5b01e00cbbe5bbe70e25ee1c119` |
| 31 | `theorem` | [hasMellin_cpow_Ioc](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MellinTransform/Variantbd274c9af2bccd6132c7f27688eddf7a31258bb9da6efd518bb027039cd6a76c.lean/declarations/hasmellin-cpow-ioc--21730c7db0b38c5aea8357f8.md) | 481 | `result-track:21730c7db0b38c5aea8357f8f08d1c5c98ee0933bba213b3b91699e9a1efee95` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
