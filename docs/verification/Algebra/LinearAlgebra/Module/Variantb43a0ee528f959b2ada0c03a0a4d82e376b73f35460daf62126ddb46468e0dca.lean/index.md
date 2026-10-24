# Verification target: GRWTSK.Algebra.LinearAlgebra.Module.Variantb43a0ee528f959b2ada0c03a0a4d82e376b73f35460daf62126ddb46468e0dca

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a5f4c3d10b26d81d6a5556fbc55840c232ccab1d",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Module/Variantb43a0ee528f959b2ada0c03a0a4d82e376b73f35460daf62126ddb46468e0dca.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variantb43a0ee528f959b2ada0c03a0a4d82e376b73f35460daf62126ddb46468e0dca.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variantb43a0ee528f959b2ada0c03a0a4d82e376b73f35460daf62126ddb46468e0dca.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a5f4c3d10b26d81d6a5556fbc55840c232ccab1d`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Module/Variantb43a0ee528f959b2ada0c03a0a4d82e376b73f35460daf62126ddb46468e0dca.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Module/Variantb43a0ee528f959b2ada0c03a0a4d82e376b73f35460daf62126ddb46468e0dca.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Star.SelfAdjoint` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Module.Equiv` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Prod` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [star_nat_cast_smul](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variantb43a0ee528f959b2ada0c03a0a4d82e376b73f35460daf62126ddb46468e0dca.lean/declarations/star-nat-cast-smul--79eafb610c11dfa963703505.md) | 46 | `result-track:79eafb610c11dfa963703505dd6f0449ac4a9909264b0aa535aa0eec7b2d500d` |
| 2 | `theorem` | [star_int_cast_smul](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variantb43a0ee528f959b2ada0c03a0a4d82e376b73f35460daf62126ddb46468e0dca.lean/declarations/star-int-cast-smul--05afe8898f98784457956550.md) | 52 | `result-track:05afe8898f98784457956550544171737cab645d560fc461805812328558a629` |
| 3 | `theorem` | [star_inv_nat_cast_smul](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variantb43a0ee528f959b2ada0c03a0a4d82e376b73f35460daf62126ddb46468e0dca.lean/declarations/star-inv-nat-cast-smul--f5a02c94a371ca78f762d5a8.md) | 58 | `result-track:f5a02c94a371ca78f762d5a8a596ddb21512a75c27fde42a3dcc9d63a4c31738` |
| 4 | `theorem` | [star_inv_int_cast_smul](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variantb43a0ee528f959b2ada0c03a0a4d82e376b73f35460daf62126ddb46468e0dca.lean/declarations/star-inv-int-cast-smul--7b966278b16c57c44a2e9423.md) | 64 | `result-track:7b966278b16c57c44a2e9423ebae244d1d1e797d65039d654c3830858a0c383f` |
| 5 | `theorem` | [star_rat_cast_smul](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variantb43a0ee528f959b2ada0c03a0a4d82e376b73f35460daf62126ddb46468e0dca.lean/declarations/star-rat-cast-smul--ddf91730de0705f4053340e1.md) | 70 | `result-track:ddf91730de0705f4053340e14566284254ce8cb2c7d1e93e0017ac0fdd34ee0d` |
| 6 | `theorem` | [star_rat_smul](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variantb43a0ee528f959b2ada0c03a0a4d82e376b73f35460daf62126ddb46468e0dca.lean/declarations/star-rat-smul--cb4831cd7883ae7aa9bf1397.md) | 76 | `result-track:cb4831cd7883ae7aa9bf1397ea27634894cced128483b6e81e8b2402d607e3f2` |
| 7 | `def` | [starLinearEquiv](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variantb43a0ee528f959b2ada0c03a0a4d82e376b73f35460daf62126ddb46468e0dca.lean/declarations/starlinearequiv--7a68db6520c3aedae84f0721.md) | 86 | `declaration-track:7a68db6520c3aedae84f0721e27d3c76faf1603a8d81e5df2504f30cec9418bb` |
| 8 | `def` | [selfAdjoint.submodule](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variantb43a0ee528f959b2ada0c03a0a4d82e376b73f35460daf62126ddb46468e0dca.lean/declarations/selfadjoint-submodule--4107dc8130d3e45f43f74c34.md) | 97 | `declaration-track:4107dc8130d3e45f43f74c34a4f2ef469f0c03ccfc3b8739c6fb1e56ebd9d9aa` |
| 9 | `def` | [skewAdjoint.submodule](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variantb43a0ee528f959b2ada0c03a0a4d82e376b73f35460daf62126ddb46468e0dca.lean/declarations/skewadjoint-submodule--4a84fbe23c9ae9650eaa2821.md) | 102 | `declaration-track:4a84fbe23c9ae9650eaa2821bc958930830e00b712806e6a56930cf61edc93db` |
| 10 | `def` | [selfAdjointPart](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variantb43a0ee528f959b2ada0c03a0a4d82e376b73f35460daf62126ddb46468e0dca.lean/declarations/selfadjointpart--e551e92f7ce78b5aedd749bf.md) | 110 | `declaration-track:e551e92f7ce78b5aedd749bfcbb93e7ddf893f40c58e6a37f6049947ef36187b` |
| 11 | `def` | [skewAdjointPart](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variantb43a0ee528f959b2ada0c03a0a4d82e376b73f35460daf62126ddb46468e0dca.lean/declarations/skewadjointpart--2c0af773ecb97f9ee427fb7f.md) | 125 | `declaration-track:2c0af773ecb97f9ee427fb7f4581b3a3e3762c70be8b08f7d503037c936b7eca` |
| 12 | `theorem` | [StarModule.selfAdjointPart_add_skewAdjointPart](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variantb43a0ee528f959b2ada0c03a0a4d82e376b73f35460daf62126ddb46468e0dca.lean/declarations/starmodule-selfadjointpart-add-skewadjointpart--69bc70a291f6fddfc0f97b65.md) | 140 | `result-track:69bc70a291f6fddfc0f97b6502c1aafdebc52a2dc3955f838ce36d037c0d4ca9` |
| 13 | `theorem` | [IsSelfAdjoint.coe_selfAdjointPart_apply](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variantb43a0ee528f959b2ada0c03a0a4d82e376b73f35460daf62126ddb46468e0dca.lean/declarations/isselfadjoint-coe-selfadjointpart-apply--02fce90959a05e2765d62a9c.md) | 146 | `result-track:02fce90959a05e2765d62a9c0536a9e526e618103f9f0191ed2d75fcd60bbdea` |
| 14 | `theorem` | [IsSelfAdjoint.selfAdjointPart_apply](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variantb43a0ee528f959b2ada0c03a0a4d82e376b73f35460daf62126ddb46468e0dca.lean/declarations/isselfadjoint-selfadjointpart-apply--ecb8359e0e5fb71697f09738.md) | 150 | `result-track:ecb8359e0e5fb71697f09738613296cd3f68b17d2b76580fe9c3dc2abafd658c` |
| 15 | `theorem` | [selfAdjointPart_comp_subtype_selfAdjoint](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variantb43a0ee528f959b2ada0c03a0a4d82e376b73f35460daf62126ddb46468e0dca.lean/declarations/selfadjointpart-comp-subtype-selfadjoint--1ff8906e1b5c6bc8a8467410.md) | 155 | `result-track:1ff8906e1b5c6bc8a8467410bfa2e4dc827043972a152eda3d9d03b8b3cd1712` |
| 16 | `theorem` | [IsSelfAdjoint.skewAdjointPart_apply](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variantb43a0ee528f959b2ada0c03a0a4d82e376b73f35460daf62126ddb46468e0dca.lean/declarations/isselfadjoint-skewadjointpart-apply--6019b7f38462547179691fac.md) | 159 | `result-track:6019b7f38462547179691faceb481de2736e043918f1a3580c20ea09b3d1eda8` |
| 17 | `theorem` | [skewAdjointPart_comp_subtype_selfAdjoint](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variantb43a0ee528f959b2ada0c03a0a4d82e376b73f35460daf62126ddb46468e0dca.lean/declarations/skewadjointpart-comp-subtype-selfadjoint--61bd2d72d037dd4e1955f29c.md) | 164 | `result-track:61bd2d72d037dd4e1955f29c3befb416ce8757f277738a26e92b3b566472f5b6` |
| 18 | `theorem` | [selfAdjointPart_comp_subtype_skewAdjoint](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variantb43a0ee528f959b2ada0c03a0a4d82e376b73f35460daf62126ddb46468e0dca.lean/declarations/selfadjointpart-comp-subtype-skewadjoint--42ffd4c1f3280d49f7372b71.md) | 169 | `result-track:42ffd4c1f3280d49f7372b7134ae30316a286f9c8807fbc064a898abd3bef929` |
| 19 | `theorem` | [skewAdjointPart_comp_subtype_skewAdjoint](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variantb43a0ee528f959b2ada0c03a0a4d82e376b73f35460daf62126ddb46468e0dca.lean/declarations/skewadjointpart-comp-subtype-skewadjoint--784255c55829b4b903f1681e.md) | 174 | `result-track:784255c55829b4b903f1681e34861cf591524c80e988c69399a7fadaec40c12a` |
| 20 | `def` | [StarModule.decomposeProdAdjoint](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variantb43a0ee528f959b2ada0c03a0a4d82e376b73f35460daf62126ddb46468e0dca.lean/declarations/starmodule-decomposeprodadjoint--674eb405a0aff5328453c448.md) | 186 | `declaration-track:674eb405a0aff5328453c448a98d744af77674bde4dfc93ec21311f2db232501` |
| 21 | `theorem` | [algebraMap_star_comm](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variantb43a0ee528f959b2ada0c03a0a4d82e376b73f35460daf62126ddb46468e0dca.lean/declarations/algebramap-star-comm--d1009f617f31996e3a1638bf.md) | 194 | `result-track:d1009f617f31996e3a1638bf1d7b120ae31d79723c8323865eada79605095030` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
