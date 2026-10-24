# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.KQHContactGeometry.Variant24d7fd66bafc01010872f50ba6ce443dedd535b908b80c6774b753affcf633ae

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "55328c2d09a9bca74e3c1bddcb2dbb05fda5b083",
  "lexical_observation_count": 35,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/KQHContactGeometry/Variant24d7fd66bafc01010872f50ba6ce443dedd535b908b80c6774b753affcf633ae.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/KQHContactGeometry/Variant24d7fd66bafc01010872f50ba6ce443dedd535b908b80c6774b753affcf633ae.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/KQHContactGeometry/Variant24d7fd66bafc01010872f50ba6ce443dedd535b908b80c6774b753affcf633ae.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `55328c2d09a9bca74e3c1bddcb2dbb05fda5b083`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/KQHContactGeometry/Variant24d7fd66bafc01010872f50ba6ce443dedd535b908b80c6774b753affcf633ae.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/KQHContactGeometry/Variant24d7fd66bafc01010872f50ba6ce443dedd535b908b80c6774b753affcf633ae.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Complex.Trigonometric` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.Deriv.Prod` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.Determinant.Basic` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [Point](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/KQHContactGeometry/Variant24d7fd66bafc01010872f50ba6ce443dedd535b908b80c6774b753affcf633ae.lean/declarations/point--e87ad6d74346b2972a748c96.md) | 30 | `declaration-track:e87ad6d74346b2972a748c96398aa22c8774ac769a18785eef2c001d910dc001` |
| 2 | `def` | [flow0](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/KQHContactGeometry/Variant24d7fd66bafc01010872f50ba6ce443dedd535b908b80c6774b753affcf633ae.lean/declarations/flow0--3276f8aeda8a59c95cba1391.md) | 33 | `declaration-track:3276f8aeda8a59c95cba139198e594cfef3166bf628618e8a464d1160ded5d5e` |
| 3 | `def` | [flow1](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/KQHContactGeometry/Variant24d7fd66bafc01010872f50ba6ce443dedd535b908b80c6774b753affcf633ae.lean/declarations/flow1--ce0a8a77d9bede80f4069e85.md) | 36 | `declaration-track:ce0a8a77d9bede80f4069e85d1a0298b23f1e3da08dd65e11616a5d3403b00c8` |
| 4 | `def` | [central](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/KQHContactGeometry/Variant24d7fd66bafc01010872f50ba6ce443dedd535b908b80c6774b753affcf633ae.lean/declarations/central--ea9766f1718b7d59e446da11.md) | 39 | `declaration-track:ea9766f1718b7d59e446da11e4e4c7aecba5880917cc388e9afc318d7f6fe270` |
| 5 | `theorem` | [flow0_add](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/KQHContactGeometry/Variant24d7fd66bafc01010872f50ba6ce443dedd535b908b80c6774b753affcf633ae.lean/declarations/flow0-add--3354d992b4e6bafb9e6ca2a4.md) | 41 | `result-track:3354d992b4e6bafb9e6ca2a4015ed4b9d062abb9eadd3166f2575bd218ca3a5a` |
| 6 | `theorem` | [flow1_add](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/KQHContactGeometry/Variant24d7fd66bafc01010872f50ba6ce443dedd535b908b80c6774b753affcf633ae.lean/declarations/flow1-add--dc88c5b26c92499c47fbd0b7.md) | 44 | `result-track:dc88c5b26c92499c47fbd0b748c65aca8f6842cec40dd9dcd730f1a5ee0f7662` |
| 7 | `theorem` | [flow0_inverse](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/KQHContactGeometry/Variant24d7fd66bafc01010872f50ba6ce443dedd535b908b80c6774b753affcf633ae.lean/declarations/flow0-inverse--34cfd142643a80c6890089c3.md) | 47 | `result-track:34cfd142643a80c6890089c3135432d0206ab6ce8edf52a72375662941b15816` |
| 8 | `theorem` | [flow1_inverse](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/KQHContactGeometry/Variant24d7fd66bafc01010872f50ba6ce443dedd535b908b80c6774b753affcf633ae.lean/declarations/flow1-inverse--3ba19805d311846cd4db737c.md) | 50 | `result-track:3ba19805d311846cd4db737c38a7aa6f89b33960c6d9c1bf3a61697d196e09d6` |
| 9 | `theorem` | [contact_loop](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/KQHContactGeometry/Variant24d7fd66bafc01010872f50ba6ce443dedd535b908b80c6774b753affcf633ae.lean/declarations/contact-loop--887951fd8f3f94025dc7d1ef.md) | 54 | `result-track:887951fd8f3f94025dc7d1ef301a70cdfdf8194e276bb79f4020827b0d568fcb` |
| 10 | `def` | [field0](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/KQHContactGeometry/Variant24d7fd66bafc01010872f50ba6ce443dedd535b908b80c6774b753affcf633ae.lean/declarations/field0--de3ad0753f9ac1b09fc5c36a.md) | 59 | `declaration-track:de3ad0753f9ac1b09fc5c36a55c36ebfe5b9bf5b49b15ec2385a2136be832ca7` |
| 11 | `def` | [field1](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/KQHContactGeometry/Variant24d7fd66bafc01010872f50ba6ce443dedd535b908b80c6774b753affcf633ae.lean/declarations/field1--ede05a1235154abcecf2a78a.md) | 62 | `declaration-track:ede05a1235154abcecf2a78ac973fbfffd109bf2a06f33ac753083b1d702cee6` |
| 12 | `theorem` | [field0_directional_derivative](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/KQHContactGeometry/Variant24d7fd66bafc01010872f50ba6ce443dedd535b908b80c6774b753affcf633ae.lean/declarations/field0-directional-derivative--634c85ff573e5bfcb88ca4ba.md) | 65 | `result-track:634c85ff573e5bfcb88ca4ba7be92c7c8b99f67acc718622203e5b7a3510923e` |
| 13 | `theorem` | [field1_directional_derivative](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/KQHContactGeometry/Variant24d7fd66bafc01010872f50ba6ce443dedd535b908b80c6774b753affcf633ae.lean/declarations/field1-directional-derivative--9e537a737a31c6782f33405f.md) | 71 | `result-track:9e537a737a31c6782f33405f50ed3f95176b4e1d7356bc9dcc4121bd905db412` |
| 14 | `def` | [bracket](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/KQHContactGeometry/Variant24d7fd66bafc01010872f50ba6ce443dedd535b908b80c6774b753affcf633ae.lean/declarations/bracket--dc821e4776dfa7e458d7fb5c.md) | 77 | `declaration-track:dc821e4776dfa7e458d7fb5ce8a1ee5111814f99ffc7b5d0070a6bf5720b6db5` |
| 15 | `theorem` | [contact_bracket](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/KQHContactGeometry/Variant24d7fd66bafc01010872f50ba6ce443dedd535b908b80c6774b753affcf633ae.lean/declarations/contact-bracket--c0179b3cfb98d8bd62bdc55b.md) | 79 | `result-track:c0179b3cfb98d8bd62bdc55b667a4990949cab7beb23f83440ed8d3acdd8c28e` |
| 16 | `def` | [segment](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/KQHContactGeometry/Variant24d7fd66bafc01010872f50ba6ce443dedd535b908b80c6774b753affcf633ae.lean/declarations/segment--c4accfdb510ae62876badb2c.md) | 83 | `declaration-track:c4accfdb510ae62876badb2cdaecc8868889007b5fd1c694be2632c106f1bd4d` |
| 17 | `theorem` | [segment_horizontal](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/KQHContactGeometry/Variant24d7fd66bafc01010872f50ba6ce443dedd535b908b80c6774b753affcf633ae.lean/declarations/segment-horizontal--514100d6f1de64964fd745a2.md) | 86 | `result-track:514100d6f1de64964fd745a286a5313f29f110669fc753c58ff8f32266075d0d` |
| 18 | `def` | [endpoint](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/KQHContactGeometry/Variant24d7fd66bafc01010872f50ba6ce443dedd535b908b80c6774b753affcf633ae.lean/declarations/endpoint--72ada99d0978238e70e0db4c.md) | 92 | `declaration-track:72ada99d0978238e70e0db4c3fa300a4b822757ab203f3af118c5524992690e8` |
| 19 | `theorem` | [endpoint_formula](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/KQHContactGeometry/Variant24d7fd66bafc01010872f50ba6ce443dedd535b908b80c6774b753affcf633ae.lean/declarations/endpoint-formula--5c92d87b23289f975616dd68.md) | 96 | `result-track:5c92d87b23289f975616dd680b3c799f6f12dbbc0baf00668269052ab4628aa4` |
| 20 | `def` | [endpointJacobian](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/KQHContactGeometry/Variant24d7fd66bafc01010872f50ba6ce443dedd535b908b80c6774b753affcf633ae.lean/declarations/endpointjacobian--0b10cf15d4c808224400e36b.md) | 105 | `declaration-track:0b10cf15d4c808224400e36ba75248f617ba8f5dba231e24dfddb4cbcfa6bb9c` |
| 21 | `theorem` | [endpoint_jacobian_det](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/KQHContactGeometry/Variant24d7fd66bafc01010872f50ba6ce443dedd535b908b80c6774b753affcf633ae.lean/declarations/endpoint-jacobian-det--6dbf82b955871f77b39d88f7.md) | 111 | `result-track:6dbf82b955871f77b39d88f7cfa434e515d9f017f1d4d78d3ea8b52afdf0ac0d` |
| 22 | `theorem` | [endpoint_fiber_moments](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/KQHContactGeometry/Variant24d7fd66bafc01010872f50ba6ce443dedd535b908b80c6774b753affcf633ae.lean/declarations/endpoint-fiber-moments--a04cea32ce26a665fc9d02dd.md) | 119 | `result-track:a04cea32ce26a665fc9d02ddbe7aed2acfc34350432bd1abe7382d25790de6cf` |
| 23 | `def` | [phase](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/KQHContactGeometry/Variant24d7fd66bafc01010872f50ba6ce443dedd535b908b80c6774b753affcf633ae.lean/declarations/phase--d77f630f4b4aa2027539b851.md) | 133 | `declaration-track:d77f630f4b4aa2027539b85101684669e4561f65e521600d2e1a37f6c1cc9bc9` |
| 24 | `theorem` | [phase_add](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/KQHContactGeometry/Variant24d7fd66bafc01010872f50ba6ce443dedd535b908b80c6774b753affcf633ae.lean/declarations/phase-add--7a3ca4dce353febda904aadc.md) | 135 | `result-track:7a3ca4dce353febda904aadc94e4b612b27ca23625552e67f3c509e5e285a950` |
| 25 | `theorem` | [phase_norm](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/KQHContactGeometry/Variant24d7fd66bafc01010872f50ba6ce443dedd535b908b80c6774b753affcf633ae.lean/declarations/phase-norm--102ebc8a168d8c5ea76dd0da.md) | 142 | `result-track:102ebc8a168d8c5ea76dd0da77ab93dd09fc0faeb8e9e1b057f1001ce9df1749` |
| 26 | `def` | [U](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/KQHContactGeometry/Variant24d7fd66bafc01010872f50ba6ce443dedd535b908b80c6774b753affcf633ae.lean/declarations/u--c71afa9bcebaa26cd1e0f4fe.md) | 146 | `declaration-track:c71afa9bcebaa26cd1e0f4fe38111c7fb349be1e601091fa3aba2c882a3d7bbc` |
| 27 | `def` | [V](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/KQHContactGeometry/Variant24d7fd66bafc01010872f50ba6ce443dedd535b908b80c6774b753affcf633ae.lean/declarations/v--c58a887d425462bbb12886a7.md) | 150 | `declaration-track:c58a887d425462bbb12886a718134c835e3c90f14a80690019d1470ea108edb9` |
| 28 | `def` | [centralMode](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/KQHContactGeometry/Variant24d7fd66bafc01010872f50ba6ce443dedd535b908b80c6774b753affcf633ae.lean/declarations/centralmode--bc72289f7506c6ef0dccd540.md) | 154 | `declaration-track:bc72289f7506c6ef0dccd5400f0ecc7ca55b95c4cc26b32662682692e035ab8c` |
| 29 | `theorem` | [pullback_flow0](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/KQHContactGeometry/Variant24d7fd66bafc01010872f50ba6ce443dedd535b908b80c6774b753affcf633ae.lean/declarations/pullback-flow0--82c2fef8ebcd7330f989dfc2.md) | 157 | `result-track:82c2fef8ebcd7330f989dfc2dae3ef0e2c0ac91654bdccfed7dff63616d8e798` |
| 30 | `theorem` | [pullback_flow1](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/KQHContactGeometry/Variant24d7fd66bafc01010872f50ba6ce443dedd535b908b80c6774b753affcf633ae.lean/declarations/pullback-flow1--4780bb6127a9de7dbd027944.md) | 163 | `result-track:4780bb6127a9de7dbd0279442a6ecc17f7aacd55e46487508b4b2e3cad4bba5e` |
| 31 | `theorem` | [fiber_weyl](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/KQHContactGeometry/Variant24d7fd66bafc01010872f50ba6ce443dedd535b908b80c6774b753affcf633ae.lean/declarations/fiber-weyl--5a93957852f0643467114b08.md) | 169 | `result-track:5a93957852f0643467114b08f4ae396a0c4d8dc78d4e65f86c3c805d6de68533` |
| 32 | `theorem` | [U_comp](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/KQHContactGeometry/Variant24d7fd66bafc01010872f50ba6ce443dedd535b908b80c6774b753affcf633ae.lean/declarations/u-comp--6aad039c8734952a1f588bfd.md) | 176 | `result-track:6aad039c8734952a1f588bfdf2944fd36987754aaa7b11ed2bc60638faf355ac` |
| 33 | `theorem` | [V_comp](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/KQHContactGeometry/Variant24d7fd66bafc01010872f50ba6ce443dedd535b908b80c6774b753affcf633ae.lean/declarations/v-comp--f2061a362b3e61f1476bd332.md) | 182 | `result-track:f2061a362b3e61f1476bd3329f137248c4a0a798c11be30702da97c48fb285c4` |
| 34 | `theorem` | [U_norm](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/KQHContactGeometry/Variant24d7fd66bafc01010872f50ba6ce443dedd535b908b80c6774b753affcf633ae.lean/declarations/u-norm--17f24bbab24eb498716226b3.md) | 188 | `result-track:17f24bbab24eb498716226b33cdda8206d2f80a88aedfcb596d70c635e8aa0b3` |
| 35 | `theorem` | [V_norm](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/KQHContactGeometry/Variant24d7fd66bafc01010872f50ba6ce443dedd535b908b80c6774b753affcf633ae.lean/declarations/v-norm--43f4cc994a798671d151f554.md) | 192 | `result-track:43f4cc994a798671d151f5547682259c59df94efcec32ceea210c469f2a60e7b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
