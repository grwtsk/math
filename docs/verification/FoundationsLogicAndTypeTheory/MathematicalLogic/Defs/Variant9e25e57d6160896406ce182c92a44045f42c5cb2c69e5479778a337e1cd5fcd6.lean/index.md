# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Defs.Variant9e25e57d6160896406ce182c92a44045f42c5cb2c69e5479778a337e1cd5fcd6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2f3154dd930c6cf1f2ebbb400371324783a3a92e",
  "lexical_observation_count": 37,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant9e25e57d6160896406ce182c92a44045f42c5cb2c69e5479778a337e1cd5fcd6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant9e25e57d6160896406ce182c92a44045f42c5cb2c69e5479778a337e1cd5fcd6.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant9e25e57d6160896406ce182c92a44045f42c5cb2c69e5479778a337e1cd5fcd6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2f3154dd930c6cf1f2ebbb400371324783a3a92e`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant9e25e57d6160896406ce182c92a44045f42c5cb2c69e5479778a337e1cd5fcd6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant9e25e57d6160896406ce182c92a44045f42c5cb2c69e5479778a337e1cd5fcd6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Action.Defs` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [AddTorsor](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant9e25e57d6160896406ce182c92a44045f42c5cb2c69e5479778a337e1cd5fcd6.lean/declarations/addtorsor--5320fb6a795ef143c30ba035.md) | 55 | `declaration-track:5320fb6a795ef143c30ba035dfa3259734561ecf486bf3e91d05e8768d30e424` |
| 2 | `instance` | [addGroupIsAddTorsor](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant9e25e57d6160896406ce182c92a44045f42c5cb2c69e5479778a337e1cd5fcd6.lean/declarations/addgroupisaddtorsor--959404c24e14b574eac86178.md) | 69 | `declaration-track:959404c24e14b574eac861788dd89b58cfac93e9d38a46ad1ca3d9ad9da35b77` |
| 3 | `theorem` | [vsub_eq_sub](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant9e25e57d6160896406ce182c92a44045f42c5cb2c69e5479778a337e1cd5fcd6.lean/declarations/vsub-eq-sub--be4d2c79325e4580bab8e21c.md) | 77 | `result-track:be4d2c79325e4580bab8e21c6819c27caa07002788dfab80ca7986def2909a4e` |
| 4 | `theorem` | [vsub_vadd](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant9e25e57d6160896406ce182c92a44045f42c5cb2c69e5479778a337e1cd5fcd6.lean/declarations/vsub-vadd--258e4babfe21cd9a0fb83d47.md) | 87 | `result-track:258e4babfe21cd9a0fb83d4743a300767ca2c571d8fc89b8de29d8c03dc36206` |
| 5 | `theorem` | [vadd_vsub](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant9e25e57d6160896406ce182c92a44045f42c5cb2c69e5479778a337e1cd5fcd6.lean/declarations/vadd-vsub--1106b3b772e05c29c8929975.md) | 93 | `result-track:1106b3b772e05c29c8929975d5a76972c72a8d53f9d5ece897d33721031e18b5` |
| 6 | `theorem` | [vadd_right_cancel](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant9e25e57d6160896406ce182c92a44045f42c5cb2c69e5479778a337e1cd5fcd6.lean/declarations/vadd-right-cancel--0286c90f109c9fdf08b2d836.md) | 98 | `result-track:0286c90f109c9fdf08b2d836a9f8c56933889642f9ddce76e3ca33c8440e5075` |
| 7 | `theorem` | [vadd_right_cancel_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant9e25e57d6160896406ce182c92a44045f42c5cb2c69e5479778a337e1cd5fcd6.lean/declarations/vadd-right-cancel-iff--3df6cb3cdd781afdda02df87.md) | 102 | `result-track:3df6cb3cdd781afdda02df872d7b019ce5ef4e79c9a479b8ae3efad868766b61` |
| 8 | `theorem` | [vadd_right_injective](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant9e25e57d6160896406ce182c92a44045f42c5cb2c69e5479778a337e1cd5fcd6.lean/declarations/vadd-right-injective--73e4fc961f6d91dcc8ca00f0.md) | 107 | `result-track:73e4fc961f6d91dcc8ca00f03339861d220fac8403f4fe5f0a2a24e1004a157b` |
| 9 | `theorem` | [vadd_vsub_assoc](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant9e25e57d6160896406ce182c92a44045f42c5cb2c69e5479778a337e1cd5fcd6.lean/declarations/vadd-vsub-assoc--547c6017dd591ccdfe62d5cb.md) | 113 | `result-track:547c6017dd591ccdfe62d5cb832d7d2716da8ba8d39c987b9a4e6c63ee56a44d` |
| 10 | `theorem` | [vsub_self](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant9e25e57d6160896406ce182c92a44045f42c5cb2c69e5479778a337e1cd5fcd6.lean/declarations/vsub-self--fdb91ed1b18cd9885db4a461.md) | 119 | `result-track:fdb91ed1b18cd9885db4a46155dc38842143b3445eae4b26642a673609038cd5` |
| 11 | `theorem` | [eq_of_vsub_eq_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant9e25e57d6160896406ce182c92a44045f42c5cb2c69e5479778a337e1cd5fcd6.lean/declarations/eq-of-vsub-eq-zero--0202753a115a72b1ef8de273.md) | 123 | `result-track:0202753a115a72b1ef8de273cae16f98c25340bf4d92048de5e58ab12181e479` |
| 12 | `theorem` | [vsub_eq_zero_iff_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant9e25e57d6160896406ce182c92a44045f42c5cb2c69e5479778a337e1cd5fcd6.lean/declarations/vsub-eq-zero-iff-eq--c49436a24a06b2815ee230e4.md) | 129 | `result-track:c49436a24a06b2815ee230e4b5488aa133d1a7b51a5e9aa9cb9ba9ffbdf4366d` |
| 13 | `theorem` | [vsub_ne_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant9e25e57d6160896406ce182c92a44045f42c5cb2c69e5479778a337e1cd5fcd6.lean/declarations/vsub-ne-zero--b09ee196ca7e6419cb4824a9.md) | 132 | `result-track:b09ee196ca7e6419cb4824a9266477e625ef1ce144962a2dc2bb011afa39e489` |
| 14 | `theorem` | [vsub_add_vsub_cancel](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant9e25e57d6160896406ce182c92a44045f42c5cb2c69e5479778a337e1cd5fcd6.lean/declarations/vsub-add-vsub-cancel--11971157dd03f345bd73aa92.md) | 137 | `result-track:11971157dd03f345bd73aa92583d9f88c72a76f165990fd0cd4ec84da0e52ccb` |
| 15 | `theorem` | [neg_vsub_eq_vsub_rev](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant9e25e57d6160896406ce182c92a44045f42c5cb2c69e5479778a337e1cd5fcd6.lean/declarations/neg-vsub-eq-vsub-rev--229d1a9d2eead575e6fe9928.md) | 144 | `result-track:229d1a9d2eead575e6fe992840db9cec079e0fd1250c1fe48936eda0c21ec544` |
| 16 | `theorem` | [vadd_vsub_eq_sub_vsub](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant9e25e57d6160896406ce182c92a44045f42c5cb2c69e5479778a337e1cd5fcd6.lean/declarations/vadd-vsub-eq-sub-vsub--12f382cd4e42d36add0f5ecd.md) | 148 | `result-track:12f382cd4e42d36add0f5ecd0c511a834efcae6bf555deec89bebbd31e6bb274` |
| 17 | `theorem` | [vsub_vadd_eq_vsub_sub](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant9e25e57d6160896406ce182c92a44045f42c5cb2c69e5479778a337e1cd5fcd6.lean/declarations/vsub-vadd-eq-vsub-sub--924a74c00e9b4d8d04ea55ab.md) | 153 | `result-track:924a74c00e9b4d8d04ea55ab713846e6448cb4b38de207c90efc25a34249f39f` |
| 18 | `theorem` | [vsub_sub_vsub_cancel_right](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant9e25e57d6160896406ce182c92a44045f42c5cb2c69e5479778a337e1cd5fcd6.lean/declarations/vsub-sub-vsub-cancel-right--329abe4071a50fe30bd47850.md) | 159 | `result-track:329abe4071a50fe30bd478500862047aab867afd4defb33afdd01075a95eedfb` |
| 19 | `theorem` | [eq_vadd_iff_vsub_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant9e25e57d6160896406ce182c92a44045f42c5cb2c69e5479778a337e1cd5fcd6.lean/declarations/eq-vadd-iff-vsub-eq--762015221b76a60b637e44d4.md) | 165 | `result-track:762015221b76a60b637e44d425ecc336d676c152aabf9150e88e3e6619e222de` |
| 20 | `theorem` | [vadd_eq_vadd_iff_neg_add_eq_vsub](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant9e25e57d6160896406ce182c92a44045f42c5cb2c69e5479778a337e1cd5fcd6.lean/declarations/vadd-eq-vadd-iff-neg-add-eq-vsub--e1ccfe1ee521085ad94f6a7c.md) | 168 | `result-track:e1ccfe1ee521085ad94f6a7c848b2b7f82bbfa423fb1e635b0d606d02cf374c8` |
| 21 | `theorem` | [vadd_vsub_vadd_cancel_right](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant9e25e57d6160896406ce182c92a44045f42c5cb2c69e5479778a337e1cd5fcd6.lean/declarations/vadd-vsub-vadd-cancel-right--f86791da5826f428966699e2.md) | 173 | `result-track:f86791da5826f428966699e25467bacad91a8ea2d75a141c6c31ea1e7fc6786a` |
| 22 | `def` | [vaddConst](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant9e25e57d6160896406ce182c92a44045f42c5cb2c69e5479778a337e1cd5fcd6.lean/declarations/vaddconst--a1e24512eac5716a70bb24ad.md) | 183 | `declaration-track:a1e24512eac5716a70bb24ade29824c80ee1512036b29ced80edf52d7c14a46d` |
| 23 | `theorem` | [coe_vaddConst](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant9e25e57d6160896406ce182c92a44045f42c5cb2c69e5479778a337e1cd5fcd6.lean/declarations/coe-vaddconst--8eb726d550a6d7b863e2daf5.md) | 190 | `result-track:8eb726d550a6d7b863e2daf5c324c4dafc2254c73acd774d35d3fa4e64eb3b3c` |
| 24 | `theorem` | [coe_vaddConst_symm](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant9e25e57d6160896406ce182c92a44045f42c5cb2c69e5479778a337e1cd5fcd6.lean/declarations/coe-vaddconst-symm--93b72f778ebe031117a4071f.md) | 194 | `result-track:93b72f778ebe031117a4071fd124a349afd8a063fe91853a81b966186c675d98` |
| 25 | `def` | [constVSub](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant9e25e57d6160896406ce182c92a44045f42c5cb2c69e5479778a337e1cd5fcd6.lean/declarations/constvsub--193328a0d9804133fa4bfe0d.md) | 198 | `declaration-track:193328a0d9804133fa4bfe0d11e215f81c6d6a5edb189d16b0a6808e7d72790a` |
| 26 | `lemma` | [coe_constVSub](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant9e25e57d6160896406ce182c92a44045f42c5cb2c69e5479778a337e1cd5fcd6.lean/declarations/coe-constvsub--6eebc1b6be80b22ac77d35eb.md) | 204 | `result-track:6eebc1b6be80b22ac77d35eb2252e17dad38a8fecdd419358b379fe76f874eb0` |
| 27 | `theorem` | [coe_constVSub_symm](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant9e25e57d6160896406ce182c92a44045f42c5cb2c69e5479778a337e1cd5fcd6.lean/declarations/coe-constvsub-symm--82444127a35a0eae5bde6bec.md) | 207 | `result-track:82444127a35a0eae5bde6bec53850bad18f2ebf33403974feba896b8c3d7c9c0` |
| 28 | `def` | [constVAdd](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant9e25e57d6160896406ce182c92a44045f42c5cb2c69e5479778a337e1cd5fcd6.lean/declarations/constvadd--e6bf598e83fd5e1ef1a7f675.md) | 213 | `declaration-track:e6bf598e83fd5e1ef1a7f67575d81488ba7f4f834b13d8bd788da8facfd7b573` |
| 29 | `lemma` | [coe_constVAdd](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant9e25e57d6160896406ce182c92a44045f42c5cb2c69e5479778a337e1cd5fcd6.lean/declarations/coe-constvadd--d2557ab1c67e2dbb321c3a45.md) | 219 | `result-track:d2557ab1c67e2dbb321c3a45636e072333b6a2d454d80667c37cc90d3d2777a5` |
| 30 | `def` | [pointReflection](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant9e25e57d6160896406ce182c92a44045f42c5cb2c69e5479778a337e1cd5fcd6.lean/declarations/pointreflection--a3ea3bf04df26b734d1d67a3.md) | 226 | `declaration-track:a3ea3bf04df26b734d1d67a321d609a34fcec5cab3be0eaa86f05cbbafabd782` |
| 31 | `theorem` | [pointReflection_apply](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant9e25e57d6160896406ce182c92a44045f42c5cb2c69e5479778a337e1cd5fcd6.lean/declarations/pointreflection-apply--10848b4eb1d03b448a14230b.md) | 229 | `result-track:10848b4eb1d03b448a14230b400b77afb1198af5b848d9996115f306506b0f90` |
| 32 | `theorem` | [pointReflection_vsub_left](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant9e25e57d6160896406ce182c92a44045f42c5cb2c69e5479778a337e1cd5fcd6.lean/declarations/pointreflection-vsub-left--06c8ec00d931a16358d4e933.md) | 233 | `result-track:06c8ec00d931a16358d4e933074b062cc8d3bc951256328aae5a1b5e1b134a98` |
| 33 | `theorem` | [pointReflection_vsub_right](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant9e25e57d6160896406ce182c92a44045f42c5cb2c69e5479778a337e1cd5fcd6.lean/declarations/pointreflection-vsub-right--9f0f0de835d07dc6008a7fc0.md) | 237 | `result-track:9f0f0de835d07dc6008a7fc05679448f6ea229de83ba07318e27186d3da31c4e` |
| 34 | `theorem` | [pointReflection_symm](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant9e25e57d6160896406ce182c92a44045f42c5cb2c69e5479778a337e1cd5fcd6.lean/declarations/pointreflection-symm--48e50b6469e949ee452ed525.md) | 241 | `result-track:48e50b6469e949ee452ed525a08086cd5143fed7551a930e5e6a36216a651b44` |
| 35 | `theorem` | [pointReflection_self](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant9e25e57d6160896406ce182c92a44045f42c5cb2c69e5479778a337e1cd5fcd6.lean/declarations/pointreflection-self--9fe4af9c732dc042fd76f2f5.md) | 245 | `result-track:9fe4af9c732dc042fd76f2f56f46713094cb071aab7311bbd791a19a9f16c0e3` |
| 36 | `theorem` | [pointReflection_involutive](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant9e25e57d6160896406ce182c92a44045f42c5cb2c69e5479778a337e1cd5fcd6.lean/declarations/pointreflection-involutive--d4bad5426b50674d4acc7c42.md) | 248 | `result-track:d4bad5426b50674d4acc7c42abbd31672af620d128614086e8a39bb34681b0e8` |
| 37 | `theorem` | [AddTorsor.subsingleton_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant9e25e57d6160896406ce182c92a44045f42c5cb2c69e5479778a337e1cd5fcd6.lean/declarations/addtorsor-subsingleton-iff--403214af81fe144052331500.md) | 253 | `result-track:403214af81fe14405233150081dea55052b2dc45f35f858e9101f6f2bb8100a7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
