# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.SheafedSpace.Variant50eb823ae82ed4eca480911cb1096871a327cbc2c19c014c6154912c674d383e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e82051cd726cdfa25e7e9042b1e32f56bbf84271",
  "lexical_observation_count": 33,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafedSpace/Variant50eb823ae82ed4eca480911cb1096871a327cbc2c19c014c6154912c674d383e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafedSpace/Variant50eb823ae82ed4eca480911cb1096871a327cbc2c19c014c6154912c674d383e.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafedSpace/Variant50eb823ae82ed4eca480911cb1096871a327cbc2c19c014c6154912c674d383e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e82051cd726cdfa25e7e9042b1e32f56bbf84271`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafedSpace/Variant50eb823ae82ed4eca480911cb1096871a327cbc2c19c014c6154912c674d383e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafedSpace/Variant50eb823ae82ed4eca480911cb1096871a327cbc2c19c014c6154912c674d383e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.AlgebraicGeometry.PresheafedSpace.HasColimits` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Sheaves.Functors` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [SheafedSpace](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafedSpace/Variant50eb823ae82ed4eca480911cb1096871a327cbc2c19c014c6154912c674d383e.lean/declarations/sheafedspace--24097edd46c16a0b42058e28.md) | 36 | `declaration-track:24097edd46c16a0b42058e28d4a2b140278146a2e73bfd4340cd92f2d681c7bb` |
| 2 | `instance` | [coeCarrier](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafedSpace/Variant50eb823ae82ed4eca480911cb1096871a327cbc2c19c014c6154912c674d383e.lean/declarations/coecarrier--780365cd0f9b125704cce073.md) | 47 | `declaration-track:780365cd0f9b125704cce073dbb7c40fea00cded0780f0820ef5e949d24bbfd2` |
| 3 | `instance` | [coeSort](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafedSpace/Variant50eb823ae82ed4eca480911cb1096871a327cbc2c19c014c6154912c674d383e.lean/declarations/coesort--0f91b49a0e2779308216061e.md) | 51 | `declaration-track:0f91b49a0e2779308216061e96e1dc823c27b6fcc7f71ccc0a645fa0b179623b` |
| 4 | `def` | [sheaf](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafedSpace/Variant50eb823ae82ed4eca480911cb1096871a327cbc2c19c014c6154912c674d383e.lean/declarations/sheaf--e4d024d88cb1b53addd63820.md) | 55 | `declaration-track:e4d024d88cb1b53addd638203a7801c00be2309402e2f01ec59d4f3901bfcce9` |
| 5 | `theorem` | [mk_coe](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafedSpace/Variant50eb823ae82ed4eca480911cb1096871a327cbc2c19c014c6154912c674d383e.lean/declarations/mk-coe--668877eeb8af2a80a88f7831.md) | 69 | `result-track:668877eeb8af2a80a88f783199aa22c1aae86f90972b91a6f6a092ecf24895cd` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafedSpace/Variant50eb823ae82ed4eca480911cb1096871a327cbc2c19c014c6154912c674d383e.lean/declarations/instance--13b333c9cb5c84d9d8a007a1.md) | 77 | `declaration-track:13b333c9cb5c84d9d8a007a165032f5983b8b8d0747174d7629f5be34c7aae05` |
| 7 | `def` | [unit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafedSpace/Variant50eb823ae82ed4eca480911cb1096871a327cbc2c19c014c6154912c674d383e.lean/declarations/unit--15ac1bc4a59824912681b638.md) | 81 | `declaration-track:15ac1bc4a59824912681b638894e77b11765a37fdc8987818dd4d077efb51aaa` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafedSpace/Variant50eb823ae82ed4eca480911cb1096871a327cbc2c19c014c6154912c674d383e.lean/declarations/instance--a994eeb5bcad34e80465c20e.md) | 86 | `declaration-track:a994eeb5bcad34e80465c20e4175f1a4c080fbc40037b2e5851cacaabf830178` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafedSpace/Variant50eb823ae82ed4eca480911cb1096871a327cbc2c19c014c6154912c674d383e.lean/declarations/instance--b87f05ecc546cdcf89ed0da3.md) | 89 | `declaration-track:b87f05ecc546cdcf89ed0da3d7a7d09a5f65b59e921bd0de325d314994b0bacc` |
| 10 | `theorem` | [ext](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafedSpace/Variant50eb823ae82ed4eca480911cb1096871a327cbc2c19c014c6154912c674d383e.lean/declarations/ext--3294dd0527f7e5fb289c5289.md) | 96 | `result-track:3294dd0527f7e5fb289c52893f7b379f0edd93af1d22a157792b03e861c62c04` |
| 11 | `def` | [forgetToPresheafedSpace](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafedSpace/Variant50eb823ae82ed4eca480911cb1096871a327cbc2c19c014c6154912c674d383e.lean/declarations/forgettopresheafedspace--096039ff719ba4fe271a1d4a.md) | 102 | `declaration-track:096039ff719ba4fe271a1d4a041dda18b06245ebd9fe3db6853a6a11e82a06eb` |
| 12 | `instance` | [forgetToPresheafedSpace_full](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafedSpace/Variant50eb823ae82ed4eca480911cb1096871a327cbc2c19c014c6154912c674d383e.lean/declarations/forgettopresheafedspace-full--02347b66ada6edb8a509130f.md) | 108 | `declaration-track:02347b66ada6edb8a509130fb2fd4526c5db93fd7e2d0848a66e2d062dd2eea3` |
| 13 | `instance` | [forgetToPresheafedSpace_faithful](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafedSpace/Variant50eb823ae82ed4eca480911cb1096871a327cbc2c19c014c6154912c674d383e.lean/declarations/forgettopresheafedspace-faithful--38597b99be17ea51fd9e5784.md) | 112 | `declaration-track:38597b99be17ea51fd9e57847e528b81b00f511f60079b6532a1faddb86de377` |
| 14 | `instance` | [is_presheafedSpace_iso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafedSpace/Variant50eb823ae82ed4eca480911cb1096871a327cbc2c19c014c6154912c674d383e.lean/declarations/is-presheafedspace-iso--6bd0b57edf4cc7649e6a4bd9.md) | 114 | `declaration-track:6bd0b57edf4cc7649e6a4bd97311564f3a53b1cd19ce8fc43b5cb38ac7a16c61` |
| 15 | `theorem` | [id_base](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafedSpace/Variant50eb823ae82ed4eca480911cb1096871a327cbc2c19c014c6154912c674d383e.lean/declarations/id-base--59d24ed9fff90fcbe0d2e15b.md) | 125 | `result-track:59d24ed9fff90fcbe0d2e15b00f322e5b5f3779c7f96b33b1ae31156e6a7aa61` |
| 16 | `theorem` | [id_c](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafedSpace/Variant50eb823ae82ed4eca480911cb1096871a327cbc2c19c014c6154912c674d383e.lean/declarations/id-c--045d99f1ac3b6fc2705c0c52.md) | 130 | `result-track:045d99f1ac3b6fc2705c0c523c63fb5b1c0f1b301c3e2fb419f879e53a57b70f` |
| 17 | `theorem` | [id_c_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafedSpace/Variant50eb823ae82ed4eca480911cb1096871a327cbc2c19c014c6154912c674d383e.lean/declarations/id-c-app--09fb93d8a1dde353311bc4a0.md) | 137 | `result-track:09fb93d8a1dde353311bc4a054b7a107e8e1de1ef59fdead71aae2b6a6f93aa2` |
| 18 | `theorem` | [comp_base](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafedSpace/Variant50eb823ae82ed4eca480911cb1096871a327cbc2c19c014c6154912c674d383e.lean/declarations/comp-base--7ac5c4cbc0f62026754c98b2.md) | 144 | `result-track:7ac5c4cbc0f62026754c98b2b2d5e99260bb634d6746446cfbf7177a5498719e` |
| 19 | `theorem` | [comp_c_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafedSpace/Variant50eb823ae82ed4eca480911cb1096871a327cbc2c19c014c6154912c674d383e.lean/declarations/comp-c-app--82d7b7488327f6c60d2bde0d.md) | 151 | `result-track:82d7b7488327f6c60d2bde0d5545fc031c49e3ea48c9f1739cba5354f81e2536` |
| 20 | `theorem` | [comp_c_app'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafedSpace/Variant50eb823ae82ed4eca480911cb1096871a327cbc2c19c014c6154912c674d383e.lean/declarations/comp-c-app--6c8a6924ec8243c35097f359.md) | 157 | `result-track:6c8a6924ec8243c35097f3592ceb3ea357bd81f0fb4916356899d9d4ceec9d67` |
| 21 | `theorem` | [congr_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafedSpace/Variant50eb823ae82ed4eca480911cb1096871a327cbc2c19c014c6154912c674d383e.lean/declarations/congr-app--fb04adc9d512240587099091.md) | 163 | `result-track:fb04adc9d512240587099091fd6d01db652d092109b74d6fa97e19f9db049f1b` |
| 22 | `def` | [forget](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafedSpace/Variant50eb823ae82ed4eca480911cb1096871a327cbc2c19c014c6154912c674d383e.lean/declarations/forget--2b9304e94a652815d4db8835.md) | 172 | `declaration-track:2b9304e94a652815d4db883598a148fe476420c3b81e9214e58927345bbbcbb6` |
| 23 | `def` | [restrict](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafedSpace/Variant50eb823ae82ed4eca480911cb1096871a327cbc2c19c014c6154912c674d383e.lean/declarations/restrict--f49081d1341a330361c67d95.md) | 184 | `declaration-track:f49081d1341a330361c67d95f99120b97601c46e39056f0732b7140bb26735c0` |
| 24 | `def` | [restrictTopIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafedSpace/Variant50eb823ae82ed4eca480911cb1096871a327cbc2c19c014c6154912c674d383e.lean/declarations/restricttopiso--b2acbb48b0653f2d74be66fd.md) | 192 | `declaration-track:b2acbb48b0653f2d74be66fda7255d891def620b808878f319c3b03db27721e7` |
| 25 | `def` | [Γ](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafedSpace/Variant50eb823ae82ed4eca480911cb1096871a327cbc2c19c014c6154912c674d383e.lean/declarations/anonymous--df42e33491c4b51ed8e6a336.md) | 199 | `declaration-track:df42e33491c4b51ed8e6a33639d4407c34ccecbb33e6b7e5fb5bddd7817638b2` |
| 26 | `theorem` | [Γ_def](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafedSpace/Variant50eb823ae82ed4eca480911cb1096871a327cbc2c19c014c6154912c674d383e.lean/declarations/def--8d963e327cb4e327963234a3.md) | 204 | `result-track:8d963e327cb4e327963234a3b44c8e4d7544d74d4576b941c9394696a63e7f57` |
| 27 | `theorem` | [Γ_obj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafedSpace/Variant50eb823ae82ed4eca480911cb1096871a327cbc2c19c014c6154912c674d383e.lean/declarations/obj--f6900c8819fd200a73dbd271.md) | 210 | `result-track:f6900c8819fd200a73dbd27186eddf7ed679e09bcf9709e1488a14c6b6aa76b7` |
| 28 | `theorem` | [Γ_obj_op](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafedSpace/Variant50eb823ae82ed4eca480911cb1096871a327cbc2c19c014c6154912c674d383e.lean/declarations/obj-op--d94386dd9d7348973374b0a3.md) | 215 | `result-track:d94386dd9d7348973374b0a3125839d91d69b17c05f6cf7e4e5b34598e8d1392` |
| 29 | `theorem` | [Γ_map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafedSpace/Variant50eb823ae82ed4eca480911cb1096871a327cbc2c19c014c6154912c674d383e.lean/declarations/map--7bb0261d3d80510e5ca68c8b.md) | 221 | `result-track:7bb0261d3d80510e5ca68c8bf378fd575b1f2bd0620f911bacc4c61236ef2a97` |
| 30 | `theorem` | [Γ_map_op](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafedSpace/Variant50eb823ae82ed4eca480911cb1096871a327cbc2c19c014c6154912c674d383e.lean/declarations/map-op--63cb3abe0ff5242e03995bee.md) | 226 | `result-track:63cb3abe0ff5242e03995beee0d75969782b1393345e73cbe59b83a3cea449b7` |
| 31 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafedSpace/Variant50eb823ae82ed4eca480911cb1096871a327cbc2c19c014c6154912c674d383e.lean/declarations/instance--d92f0df06d1bbe8cc7f3b1dd.md) | 231 | `declaration-track:d92f0df06d1bbe8cc7f3b1ddff7da25bcb974b3931373f9bd527c0215213f9c4` |
| 32 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafedSpace/Variant50eb823ae82ed4eca480911cb1096871a327cbc2c19c014c6154912c674d383e.lean/declarations/instance--b69667f212b004c0f147974b.md) | 240 | `declaration-track:b69667f212b004c0f147974bc6706f9dab81e72d4cb759f227f7f0614e32e966` |
| 33 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafedSpace/Variant50eb823ae82ed4eca480911cb1096871a327cbc2c19c014c6154912c674d383e.lean/declarations/instance--4f6b8b88d73eab510102ae96.md) | 243 | `declaration-track:4f6b8b88d73eab510102ae96b60b483cdf42988e7e4817c039d16d92fe9cae1e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
