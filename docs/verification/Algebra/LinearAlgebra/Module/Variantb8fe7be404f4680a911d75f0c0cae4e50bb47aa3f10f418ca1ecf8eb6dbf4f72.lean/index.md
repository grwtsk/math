# Verification target: GRWTSK.Algebra.LinearAlgebra.Module.Variantb8fe7be404f4680a911d75f0c0cae4e50bb47aa3f10f418ca1ecf8eb6dbf4f72

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d28ddb9f5b98fb1c3ce10d92fda4822def44b96e",
  "lexical_observation_count": 26,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Module/Variantb8fe7be404f4680a911d75f0c0cae4e50bb47aa3f10f418ca1ecf8eb6dbf4f72.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variantb8fe7be404f4680a911d75f0c0cae4e50bb47aa3f10f418ca1ecf8eb6dbf4f72.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variantb8fe7be404f4680a911d75f0c0cae4e50bb47aa3f10f418ca1ecf8eb6dbf4f72.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d28ddb9f5b98fb1c3ce10d92fda4822def44b96e`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Module/Variantb8fe7be404f4680a911d75f0c0cae4e50bb47aa3f10f418ca1ecf8eb6dbf4f72.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Module/Variantb8fe7be404f4680a911d75f0c0cae4e50bb47aa3f10f418ca1ecf8eb6dbf4f72.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Star.SelfAdjoint` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Module.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Module.Equiv.Defs` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Module.LinearMap.Star` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Module.Rat` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Prod` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [star_natCast_smul](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variantb8fe7be404f4680a911d75f0c0cae4e50bb47aa3f10f418ca1ecf8eb6dbf4f72.lean/declarations/star-natcast-smul--27a3ceee6617ac24f8d0e487.md) | 47 | `result-track:27a3ceee6617ac24f8d0e4879e234a1502284c29142531e3bffe42bc136ad0a8` |
| 2 | `theorem` | [star_intCast_smul](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variantb8fe7be404f4680a911d75f0c0cae4e50bb47aa3f10f418ca1ecf8eb6dbf4f72.lean/declarations/star-intcast-smul--5eb0442406e428aef32a3648.md) | 52 | `result-track:5eb0442406e428aef32a3648994d0c140f7ea659d8ca8efe42383d6fcdef94fc` |
| 3 | `theorem` | [star_inv_natCast_smul](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variantb8fe7be404f4680a911d75f0c0cae4e50bb47aa3f10f418ca1ecf8eb6dbf4f72.lean/declarations/star-inv-natcast-smul--eeef831e73336e8b2ad0025a.md) | 57 | `result-track:eeef831e73336e8b2ad0025aaef140b0b4f9f73443f4e45c38be05327488eedd` |
| 4 | `theorem` | [star_inv_intCast_smul](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variantb8fe7be404f4680a911d75f0c0cae4e50bb47aa3f10f418ca1ecf8eb6dbf4f72.lean/declarations/star-inv-intcast-smul--65377524cd1dc63c075dd04e.md) | 62 | `result-track:65377524cd1dc63c075dd04e4ad2352c89131df56a8ff4a1b5b28d50e228a76c` |
| 5 | `theorem` | [star_ratCast_smul](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variantb8fe7be404f4680a911d75f0c0cae4e50bb47aa3f10f418ca1ecf8eb6dbf4f72.lean/declarations/star-ratcast-smul--f6da03dd12a20cd71bd0ee1d.md) | 67 | `result-track:f6da03dd12a20cd71bd0ee1d7010e9122462b6e136a1a29e552260f28ab17be1` |
| 6 | `lemma` | [star_nnrat_smul](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variantb8fe7be404f4680a911d75f0c0cae4e50bb47aa3f10f418ca1ecf8eb6dbf4f72.lean/declarations/star-nnrat-smul--cc7586fcb12f44604b270f33.md) | 82 | `result-track:cc7586fcb12f44604b270f334096211dc200dce502a14fa2bf7d3d094e4ca663` |
| 7 | `lemma` | [star_rat_smul](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variantb8fe7be404f4680a911d75f0c0cae4e50bb47aa3f10f418ca1ecf8eb6dbf4f72.lean/declarations/star-rat-smul--a2f9d35758ea49e300ce6af2.md) | 88 | `result-track:a2f9d35758ea49e300ce6af2d359f07e7e0b66a0cdaee4446138c186c6ed8c74` |
| 8 | `instance` | [StarAddMonoid.toStarModuleNNRat](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variantb8fe7be404f4680a911d75f0c0cae4e50bb47aa3f10f418ca1ecf8eb6dbf4f72.lean/declarations/staraddmonoid-tostarmodulennrat--89cbfe82f812b0755b2fb479.md) | 102 | `declaration-track:89cbfe82f812b0755b2fb479fd1c4a2c1446d0757c294e0bafa59692b360e4ac` |
| 9 | `instance` | [StarAddMonoid.toStarModuleRat](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variantb8fe7be404f4680a911d75f0c0cae4e50bb47aa3f10f418ca1ecf8eb6dbf4f72.lean/declarations/staraddmonoid-tostarmodulerat--64b09d89a25e51fd379d378c.md) | 105 | `declaration-track:64b09d89a25e51fd379d378ceda9a82cb12f3453b575c8b66f0e88952afee91a` |
| 10 | `def` | [starLinearEquiv](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variantb8fe7be404f4680a911d75f0c0cae4e50bb47aa3f10f418ca1ecf8eb6dbf4f72.lean/declarations/starlinearequiv--c88241f3b67a2cbf06aca69b.md) | 113 | `declaration-track:c88241f3b67a2cbf06aca69ba29cb01377641098524eb4ec766ac4268bf44a22` |
| 11 | `def` | [selfAdjoint.submodule](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variantb8fe7be404f4680a911d75f0c0cae4e50bb47aa3f10f418ca1ecf8eb6dbf4f72.lean/declarations/selfadjoint-submodule--ade87e76fb0a63f449d184a7.md) | 125 | `declaration-track:ade87e76fb0a63f449d184a78f70669d65a3b4158167b9816aa7dfe3a5a96a32` |
| 12 | `def` | [skewAdjoint.submodule](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variantb8fe7be404f4680a911d75f0c0cae4e50bb47aa3f10f418ca1ecf8eb6dbf4f72.lean/declarations/skewadjoint-submodule--a8e35bf1c5439aadb9f86880.md) | 129 | `declaration-track:a8e35bf1c5439aadb9f86880254218ca17569ddcfeb7a3d163f24caa8c4b9ed1` |
| 13 | `def` | [selfAdjointPart](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variantb8fe7be404f4680a911d75f0c0cae4e50bb47aa3f10f418ca1ecf8eb6dbf4f72.lean/declarations/selfadjointpart--777ab86df3c2537169d3c1f4.md) | 136 | `declaration-track:777ab86df3c2537169d3c1f444eea4edfd09805127b67cde249590571b78958d` |
| 14 | `def` | [skewAdjointPart](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variantb8fe7be404f4680a911d75f0c0cae4e50bb47aa3f10f418ca1ecf8eb6dbf4f72.lean/declarations/skewadjointpart--f339b8b93861b84f8da52709.md) | 149 | `declaration-track:f339b8b93861b84f8da5270941bc532100a3e1f6744149fcd7662317150356ce` |
| 15 | `theorem` | [StarModule.selfAdjointPart_add_skewAdjointPart](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variantb8fe7be404f4680a911d75f0c0cae4e50bb47aa3f10f418ca1ecf8eb6dbf4f72.lean/declarations/starmodule-selfadjointpart-add-skewadjointpart--ee738cc0252187e8f258f9a3.md) | 163 | `result-track:ee738cc0252187e8f258f9a3677b3e768b6f6eaac59e39b11e245c79286cd258` |
| 16 | `theorem` | [IsSelfAdjoint.coe_selfAdjointPart_apply](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variantb8fe7be404f4680a911d75f0c0cae4e50bb47aa3f10f418ca1ecf8eb6dbf4f72.lean/declarations/isselfadjoint-coe-selfadjointpart-apply--210e65e53896cf333caa1e69.md) | 168 | `result-track:210e65e53896cf333caa1e695accd7b4b5558d3d38076f971814a82a066088b1` |
| 17 | `theorem` | [IsSelfAdjoint.selfAdjointPart_apply](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variantb8fe7be404f4680a911d75f0c0cae4e50bb47aa3f10f418ca1ecf8eb6dbf4f72.lean/declarations/isselfadjoint-selfadjointpart-apply--25147295d7c97535a666cf3c.md) | 172 | `result-track:25147295d7c97535a666cf3c0c1a7f8186da5aa673c551fce736fb51b2771aa0` |
| 18 | `theorem` | [selfAdjointPart_comp_subtype_selfAdjoint](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variantb8fe7be404f4680a911d75f0c0cae4e50bb47aa3f10f418ca1ecf8eb6dbf4f72.lean/declarations/selfadjointpart-comp-subtype-selfadjoint--c8e392f77982bee27b1be3eb.md) | 177 | `result-track:c8e392f77982bee27b1be3eb2cac8a98d804401fd59d532e1d9a5aced401ff6e` |
| 19 | `theorem` | [IsSelfAdjoint.skewAdjointPart_apply](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variantb8fe7be404f4680a911d75f0c0cae4e50bb47aa3f10f418ca1ecf8eb6dbf4f72.lean/declarations/isselfadjoint-skewadjointpart-apply--f55b9c67fc7f4a72e906be85.md) | 181 | `result-track:f55b9c67fc7f4a72e906be85f88dfde75f7289c3564e77dc9eabcb02f9ac11d0` |
| 20 | `theorem` | [skewAdjointPart_comp_subtype_selfAdjoint](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variantb8fe7be404f4680a911d75f0c0cae4e50bb47aa3f10f418ca1ecf8eb6dbf4f72.lean/declarations/skewadjointpart-comp-subtype-selfadjoint--bb197d47bdc017e85b2efb66.md) | 186 | `result-track:bb197d47bdc017e85b2efb6660ec8c1cfd8c90bde9eeb32ad41bf363e25d7100` |
| 21 | `theorem` | [selfAdjointPart_comp_subtype_skewAdjoint](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variantb8fe7be404f4680a911d75f0c0cae4e50bb47aa3f10f418ca1ecf8eb6dbf4f72.lean/declarations/selfadjointpart-comp-subtype-skewadjoint--b8d7b949d5f07b22cf02009c.md) | 191 | `result-track:b8d7b949d5f07b22cf02009caf7fc109e9ee34a01ba9199dc1f91f3055b8c7b2` |
| 22 | `theorem` | [skewAdjointPart_comp_subtype_skewAdjoint](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variantb8fe7be404f4680a911d75f0c0cae4e50bb47aa3f10f418ca1ecf8eb6dbf4f72.lean/declarations/skewadjointpart-comp-subtype-skewadjoint--35b251038c3cc34352e12578.md) | 196 | `result-track:35b251038c3cc34352e12578e1c2aea2e8ca3096338e36616c1cadd23f17ba0b` |
| 23 | `def` | [StarModule.decomposeProdAdjoint](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variantb8fe7be404f4680a911d75f0c0cae4e50bb47aa3f10f418ca1ecf8eb6dbf4f72.lean/declarations/starmodule-decomposeprodadjoint--b641992803aed44b16aeb256.md) | 207 | `declaration-track:b641992803aed44b16aeb256bde8a3c0d5c5347ce1d6f1acd5bde3661d28925d` |
| 24 | `theorem` | [algebraMap_star_comm](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variantb8fe7be404f4680a911d75f0c0cae4e50bb47aa3f10f418ca1ecf8eb6dbf4f72.lean/declarations/algebramap-star-comm--3bd5a7766a012e088f37f415.md) | 222 | `result-track:3bd5a7766a012e088f37f415d6ee9454656d07bd90032738f10721b6878054ac` |
| 25 | `lemma` | [IsSelfAdjoint.algebraMap](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variantb8fe7be404f4680a911d75f0c0cae4e50bb47aa3f10f418ca1ecf8eb6dbf4f72.lean/declarations/isselfadjoint-algebramap--5f51c37672714f4444bbb76a.md) | 226 | `result-track:5f51c37672714f4444bbb76ac1fa840fe92518f62cee9d6a9c840956b98f9bf3` |
| 26 | `lemma` | [isSelfAdjoint_algebraMap_iff](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variantb8fe7be404f4680a911d75f0c0cae4e50bb47aa3f10f418ca1ecf8eb6dbf4f72.lean/declarations/isselfadjoint-algebramap-iff--062ac3bcc2e4627c6321d98c.md) | 230 | `result-track:062ac3bcc2e4627c6321d98c3ba3a72dfe672ec6d5c47edff353615d8a625a05` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
