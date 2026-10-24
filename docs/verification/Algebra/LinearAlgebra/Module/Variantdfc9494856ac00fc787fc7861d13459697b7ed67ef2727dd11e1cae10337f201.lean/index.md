# Verification target: GRWTSK.Algebra.LinearAlgebra.Module.Variantdfc9494856ac00fc787fc7861d13459697b7ed67ef2727dd11e1cae10337f201

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "30f6c294b99019d1998120ed5381a1fd10a2a95c",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Module/Variantdfc9494856ac00fc787fc7861d13459697b7ed67ef2727dd11e1cae10337f201.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variantdfc9494856ac00fc787fc7861d13459697b7ed67ef2727dd11e1cae10337f201.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variantdfc9494856ac00fc787fc7861d13459697b7ed67ef2727dd11e1cae10337f201.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `30f6c294b99019d1998120ed5381a1fd10a2a95c`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Module/Variantdfc9494856ac00fc787fc7861d13459697b7ed67ef2727dd11e1cae10337f201.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Module/Variantdfc9494856ac00fc787fc7861d13459697b7ed67ef2727dd11e1cae10337f201.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Star.SelfAdjoint` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Module.Equiv` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Prod` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [star_nat_cast_smul](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variantdfc9494856ac00fc787fc7861d13459697b7ed67ef2727dd11e1cae10337f201.lean/declarations/star-nat-cast-smul--1b270f2854af01983dcb9b80.md) | 38 | `result-track:1b270f2854af01983dcb9b804c56a0a7cdd9ee8052c6d7052f074caa81965e27` |
| 2 | `theorem` | [star_int_cast_smul](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variantdfc9494856ac00fc787fc7861d13459697b7ed67ef2727dd11e1cae10337f201.lean/declarations/star-int-cast-smul--7a114d199283aab387f7ab28.md) | 44 | `result-track:7a114d199283aab387f7ab2822c5b57c8017d07f66637b4131dc33bd63752995` |
| 3 | `theorem` | [star_inv_nat_cast_smul](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variantdfc9494856ac00fc787fc7861d13459697b7ed67ef2727dd11e1cae10337f201.lean/declarations/star-inv-nat-cast-smul--e79997c6d8cd8d5bfe8ac00a.md) | 50 | `result-track:e79997c6d8cd8d5bfe8ac00a942df4023aa75054970ca14dcd7c1f4905f26830` |
| 4 | `theorem` | [star_inv_int_cast_smul](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variantdfc9494856ac00fc787fc7861d13459697b7ed67ef2727dd11e1cae10337f201.lean/declarations/star-inv-int-cast-smul--74e0f9d67ca71909468d6194.md) | 56 | `result-track:74e0f9d67ca71909468d61948118dcfb8ce8067b16321c9dc5aedeae28fc9e59` |
| 5 | `theorem` | [star_rat_cast_smul](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variantdfc9494856ac00fc787fc7861d13459697b7ed67ef2727dd11e1cae10337f201.lean/declarations/star-rat-cast-smul--86050b651b152fa57a09418f.md) | 62 | `result-track:86050b651b152fa57a09418f8519952f5bd84571e68c6ebb0a4c2ca297805115` |
| 6 | `theorem` | [star_rat_smul](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variantdfc9494856ac00fc787fc7861d13459697b7ed67ef2727dd11e1cae10337f201.lean/declarations/star-rat-smul--5a1ea0e8089f4febb7f482af.md) | 68 | `result-track:5a1ea0e8089f4febb7f482af28d9374b296d9ead14af63942b8f094a6939ce1d` |
| 7 | `def` | [starLinearEquiv](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variantdfc9494856ac00fc787fc7861d13459697b7ed67ef2727dd11e1cae10337f201.lean/declarations/starlinearequiv--a1ff54527aa533f7f54aea63.md) | 78 | `declaration-track:a1ff54527aa533f7f54aea635c9fd95d57c244b5d4bf9ed5275c9e2b50148f23` |
| 8 | `def` | [selfAdjoint.submodule](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variantdfc9494856ac00fc787fc7861d13459697b7ed67ef2727dd11e1cae10337f201.lean/declarations/selfadjoint-submodule--fa3b47f6b4b401cea5294b45.md) | 89 | `declaration-track:fa3b47f6b4b401cea5294b452827cf6bdcbbd1599a5d4923616707b9d9f8927f` |
| 9 | `def` | [skewAdjoint.submodule](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variantdfc9494856ac00fc787fc7861d13459697b7ed67ef2727dd11e1cae10337f201.lean/declarations/skewadjoint-submodule--59d50329af28d90ef63ed9a4.md) | 94 | `declaration-track:59d50329af28d90ef63ed9a48a791f392e6c87d8926f2da8ce26ad6abe5ec804` |
| 10 | `def` | [selfAdjointPart](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variantdfc9494856ac00fc787fc7861d13459697b7ed67ef2727dd11e1cae10337f201.lean/declarations/selfadjointpart--fb954d691c863a1206ea2dcb.md) | 102 | `declaration-track:fb954d691c863a1206ea2dcb7cd46124261ea41a74419cc4a9613dc7ee084cbb` |
| 11 | `def` | [skewAdjointPart](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variantdfc9494856ac00fc787fc7861d13459697b7ed67ef2727dd11e1cae10337f201.lean/declarations/skewadjointpart--a7fe8b25cd99121a1cc7dbb0.md) | 117 | `declaration-track:a7fe8b25cd99121a1cc7dbb0cb5459122c5c8038a4278f363c7867d0216d5a28` |
| 12 | `theorem` | [StarModule.selfAdjointPart_add_skewAdjointPart](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variantdfc9494856ac00fc787fc7861d13459697b7ed67ef2727dd11e1cae10337f201.lean/declarations/starmodule-selfadjointpart-add-skewadjointpart--fc567809005cef0c845d9cc7.md) | 132 | `result-track:fc567809005cef0c845d9cc79d5f91d35f110d634e86eba3bd3f2091047e4f65` |
| 13 | `theorem` | [IsSelfAdjoint.coe_selfAdjointPart_apply](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variantdfc9494856ac00fc787fc7861d13459697b7ed67ef2727dd11e1cae10337f201.lean/declarations/isselfadjoint-coe-selfadjointpart-apply--e6be42b04db3e4f16dfd3a07.md) | 138 | `result-track:e6be42b04db3e4f16dfd3a0728f6fcd094c740fdbe3e32ccce702dd2925f897e` |
| 14 | `theorem` | [IsSelfAdjoint.selfAdjointPart_apply](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variantdfc9494856ac00fc787fc7861d13459697b7ed67ef2727dd11e1cae10337f201.lean/declarations/isselfadjoint-selfadjointpart-apply--7c862b57ec4806d362cc8a4f.md) | 142 | `result-track:7c862b57ec4806d362cc8a4f1037fbc43c400d8ce392c0bb811eee52085b6c67` |
| 15 | `theorem` | [selfAdjointPart_comp_subtype_selfAdjoint](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variantdfc9494856ac00fc787fc7861d13459697b7ed67ef2727dd11e1cae10337f201.lean/declarations/selfadjointpart-comp-subtype-selfadjoint--93892d917081a94a66a1270c.md) | 147 | `result-track:93892d917081a94a66a1270c156da5cba6e7ef63c498e8d6bbadf86956c26b4b` |
| 16 | `theorem` | [IsSelfAdjoint.skewAdjointPart_apply](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variantdfc9494856ac00fc787fc7861d13459697b7ed67ef2727dd11e1cae10337f201.lean/declarations/isselfadjoint-skewadjointpart-apply--d81083ab2fadcc55b671a670.md) | 151 | `result-track:d81083ab2fadcc55b671a6706e43a1722500877009a374e2099e002899f6a7d6` |
| 17 | `theorem` | [skewAdjointPart_comp_subtype_selfAdjoint](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variantdfc9494856ac00fc787fc7861d13459697b7ed67ef2727dd11e1cae10337f201.lean/declarations/skewadjointpart-comp-subtype-selfadjoint--3d56c2c8bd031f8d50111a5a.md) | 156 | `result-track:3d56c2c8bd031f8d50111a5ad3c3cf92a1147898032552c158ac15cf2fea8cd1` |
| 18 | `theorem` | [selfAdjointPart_comp_subtype_skewAdjoint](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variantdfc9494856ac00fc787fc7861d13459697b7ed67ef2727dd11e1cae10337f201.lean/declarations/selfadjointpart-comp-subtype-skewadjoint--35e2f0f331c416337b23af25.md) | 161 | `result-track:35e2f0f331c416337b23af259e460f17cd432798a9e4135cc728d2923e09574b` |
| 19 | `theorem` | [skewAdjointPart_comp_subtype_skewAdjoint](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variantdfc9494856ac00fc787fc7861d13459697b7ed67ef2727dd11e1cae10337f201.lean/declarations/skewadjointpart-comp-subtype-skewadjoint--a54c8ead8316d1d012bf707f.md) | 166 | `result-track:a54c8ead8316d1d012bf707f38926c1967bfcd4176977785c2c890d6e3fc8291` |
| 20 | `def` | [StarModule.decomposeProdAdjoint](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variantdfc9494856ac00fc787fc7861d13459697b7ed67ef2727dd11e1cae10337f201.lean/declarations/starmodule-decomposeprodadjoint--69ebd9e00d4fa4ce7ac33972.md) | 178 | `declaration-track:69ebd9e00d4fa4ce7ac3397236f1006759e2ff46fe84fa2a7351048fc7a72543` |
| 21 | `theorem` | [algebraMap_star_comm](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variantdfc9494856ac00fc787fc7861d13459697b7ed67ef2727dd11e1cae10337f201.lean/declarations/algebramap-star-comm--55497e0f6a14053c6b7d7a96.md) | 186 | `result-track:55497e0f6a14053c6b7d7a960ad891a93b1d05e62ecf79d09cf5b058edd52a8a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
