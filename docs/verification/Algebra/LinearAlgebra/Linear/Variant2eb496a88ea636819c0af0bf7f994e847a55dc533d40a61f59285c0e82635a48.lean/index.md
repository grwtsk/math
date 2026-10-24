# Verification target: GRWTSK.Algebra.LinearAlgebra.Linear.Variant2eb496a88ea636819c0af0bf7f994e847a55dc533d40a61f59285c0e82635a48

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b35e2890b73af5c16ad4954952c95aa742556c18",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Linear/Variant2eb496a88ea636819c0af0bf7f994e847a55dc533d40a61f59285c0e82635a48.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Linear/Variant2eb496a88ea636819c0af0bf7f994e847a55dc533d40a61f59285c0e82635a48.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Linear/Variant2eb496a88ea636819c0af0bf7f994e847a55dc533d40a61f59285c0e82635a48.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b35e2890b73af5c16ad4954952c95aa742556c18`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Linear/Variant2eb496a88ea636819c0af0bf7f994e847a55dc533d40a61f59285c0e82635a48.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Linear/Variant2eb496a88ea636819c0af0bf7f994e847a55dc533d40a61f59285c0e82635a48.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [LinearWeights](../../../../../mathematics/Algebra/LinearAlgebra/Linear/Variant2eb496a88ea636819c0af0bf7f994e847a55dc533d40a61f59285c0e82635a48.lean/declarations/linearweights--000e75d82dc3f1c76fd3acf3.md) | 53 | `declaration-track:000e75d82dc3f1c76fd3acf3a250f93c2111efc783164ea4c132c28f84ad5d9c` |
| 2 | `def` | [toLinear](../../../../../mathematics/Algebra/LinearAlgebra/Linear/Variant2eb496a88ea636819c0af0bf7f994e847a55dc533d40a61f59285c0e82635a48.lean/declarations/tolinear--d642a53bdf4081c56b2d2507.md) | 64 | `declaration-track:d642a53bdf4081c56b2d2507ef7d4a9e328e35ff005d0969b2fa589623d4db0c` |
| 3 | `instance` | [instCoeLinearMap](../../../../../mathematics/Algebra/LinearAlgebra/Linear/Variant2eb496a88ea636819c0af0bf7f994e847a55dc533d40a61f59285c0e82635a48.lean/declarations/instcoelinearmap--b6cafb3174f33b7ebc812aed.md) | 69 | `declaration-track:b6cafb3174f33b7ebc812aed5815eb2cce77f08a14851e7dd27c4f441c57a785` |
| 4 | `instance` | [instLinearMapClass](../../../../../mathematics/Algebra/LinearAlgebra/Linear/Variant2eb496a88ea636819c0af0bf7f994e847a55dc533d40a61f59285c0e82635a48.lean/declarations/instlinearmapclass--c7f954df1ad3e9d68c7611b3.md) | 72 | `declaration-track:c7f954df1ad3e9d68c7611b38e94f509667aa0c872ecb46e0c6ea9384f6c51ab` |
| 5 | `lemma` | [apply_lie](../../../../../mathematics/Algebra/LinearAlgebra/Linear/Variant2eb496a88ea636819c0af0bf7f994e847a55dc533d40a61f59285c0e82635a48.lean/declarations/apply-lie--cc83a3c8d76cccce05f2f949.md) | 79 | `result-track:cc83a3c8d76cccce05f2f9495365f80710933308b944149c94b75508e58f14c3` |
| 6 | `lemma` | [coe_coe](../../../../../mathematics/Algebra/LinearAlgebra/Linear/Variant2eb496a88ea636819c0af0bf7f994e847a55dc533d40a61f59285c0e82635a48.lean/declarations/coe-coe--a14d3a559d12779a8d34ae2b.md) | 83 | `result-track:a14d3a559d12779a8d34ae2bd8c63f92b5aa353e9c4e2de00f8c7286a30d117d` |
| 7 | `lemma` | [coe_toLinear_eq_zero_iff](../../../../../mathematics/Algebra/LinearAlgebra/Linear/Variant2eb496a88ea636819c0af0bf7f994e847a55dc533d40a61f59285c0e82635a48.lean/declarations/coe-tolinear-eq-zero-iff--2a5b3fbaf421403f1be24507.md) | 85 | `result-track:2a5b3fbaf421403f1be24507a484838327ca7b9e1ec1edc21a69b3b15d3166da` |
| 8 | `lemma` | [coe_toLinear_ne_zero_iff](../../../../../mathematics/Algebra/LinearAlgebra/Linear/Variant2eb496a88ea636819c0af0bf7f994e847a55dc533d40a61f59285c0e82635a48.lean/declarations/coe-tolinear-ne-zero-iff--1063814e02f7c5de234f0ab5.md) | 88 | `result-track:1063814e02f7c5de234f0ab5162e861e112de3d38c773f4f945213b793be36fc` |
| 9 | `abbrev` | [ker](../../../../../mathematics/Algebra/LinearAlgebra/Linear/Variant2eb496a88ea636819c0af0bf7f994e847a55dc533d40a61f59285c0e82635a48.lean/declarations/ker--e6dc6044779c7100f816978b.md) | 91 | `declaration-track:e6dc6044779c7100f816978b85980c0f85d1a9d17f2b76b9ad86b49b58cfafc7` |
| 10 | `instance` | [instLinearWeightsOfIsLieAbelian](../../../../../mathematics/Algebra/LinearAlgebra/Linear/Variant2eb496a88ea636819c0af0bf7f994e847a55dc533d40a61f59285c0e82635a48.lean/declarations/instlinearweightsofislieabelian--29b35bf726adc0f67a3345cf.md) | 98 | `declaration-track:29b35bf726adc0f67a3345cf67fd0e6fffebb94cd811e293c2ec1952e78944ab` |
| 11 | `lemma` | [trace_comp_toEnd_genWeightSpace_eq](../../../../../mathematics/Algebra/LinearAlgebra/Linear/Variant2eb496a88ea636819c0af0bf7f994e847a55dc533d40a61f59285c0e82635a48.lean/declarations/trace-comp-toend-genweightspace-eq--93922b4d77a06c83980c40d6.md) | 124 | `result-track:93922b4d77a06c83980c40d644770174ee32895e011b417286d98e39e592c507` |
| 12 | `lemma` | [zero_lt_finrank_genWeightSpace](../../../../../mathematics/Algebra/LinearAlgebra/Linear/Variant2eb496a88ea636819c0af0bf7f994e847a55dc533d40a61f59285c0e82635a48.lean/declarations/zero-lt-finrank-genweightspace--82d6123fcd5e98641ee13287.md) | 131 | `result-track:82d6123fcd5e98641ee13287d682c3194ce9445df9c146f7b18514e71cdf7ee8` |
| 13 | `instance` | [instLinearWeightsOfCharZero](../../../../../mathematics/Algebra/LinearAlgebra/Linear/Variant2eb496a88ea636819c0af0bf7f994e847a55dc533d40a61f59285c0e82635a48.lean/declarations/instlinearweightsofcharzero--311fed157927b9e756b00a99.md) | 138 | `declaration-track:311fed157927b9e756b00a99deec4869fa2ceb8f144cbabfc1e95a0ac1198eb4` |
| 14 | `def` | [shiftedGenWeightSpace](../../../../../mathematics/Algebra/LinearAlgebra/Linear/Variant2eb496a88ea636819c0af0bf7f994e847a55dc533d40a61f59285c0e82635a48.lean/declarations/shiftedgenweightspace--f8e5579f8b463b17e81506cf.md) | 157 | `declaration-track:f8e5579f8b463b17e81506cf5197f46e2d049642e4a82e208ad8b4e7ada62390` |
| 15 | `lemma` | [aux](../../../../../mathematics/Algebra/LinearAlgebra/Linear/Variant2eb496a88ea636819c0af0bf7f994e847a55dc533d40a61f59285c0e82635a48.lean/declarations/aux--28c69c434d309e154d30b3ea.md) | 161 | `result-track:28c69c434d309e154d30b3ea7b36406d65d24155ec1461af59601f50b7510885` |
| 16 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Linear/Variant2eb496a88ea636819c0af0bf7f994e847a55dc533d40a61f59285c0e82635a48.lean/declarations/instance--75f95133e99a047bc04f8be8.md) | 166 | `declaration-track:75f95133e99a047bc04f8be8a6ac19b0c193ac8ef422d0452d79d6db73166dc2` |
| 17 | `lemma` | [coe_lie_shiftedGenWeightSpace_apply](../../../../../mathematics/Algebra/LinearAlgebra/Linear/Variant2eb496a88ea636819c0af0bf7f994e847a55dc533d40a61f59285c0e82635a48.lean/declarations/coe-lie-shiftedgenweightspace-apply--41b75c5046372da60936b879.md) | 182 | `result-track:41b75c5046372da60936b879db80ab43ac138ec47f16a8f37f891d5fc6179a7b` |
| 18 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Linear/Variant2eb496a88ea636819c0af0bf7f994e847a55dc533d40a61f59285c0e82635a48.lean/declarations/instance--65afa5e05723eb80349d04d2.md) | 187 | `declaration-track:65afa5e05723eb80349d04d2d5d2c4c895ea75637e708e5f4bfe5cb1da0733dc` |
| 19 | `def` | [shift](../../../../../mathematics/Algebra/LinearAlgebra/Linear/Variant2eb496a88ea636819c0af0bf7f994e847a55dc533d40a61f59285c0e82635a48.lean/declarations/shift--b4c0df92411b15d114e662c6.md) | 205 | `declaration-track:b4c0df92411b15d114e662c6c3eb2e75f37a933760b7fd44ae0f26807e6cf883` |
| 20 | `lemma` | [toEnd_eq](../../../../../mathematics/Algebra/LinearAlgebra/Linear/Variant2eb496a88ea636819c0af0bf7f994e847a55dc533d40a61f59285c0e82635a48.lean/declarations/toend-eq--45888b5ba675945cdf10934c.md) | 207 | `result-track:45888b5ba675945cdf10934cf43bef827529fbcbf3b8559f501412363ef4d98f` |
| 21 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Linear/Variant2eb496a88ea636819c0af0bf7f994e847a55dc533d40a61f59285c0e82635a48.lean/declarations/instance--8f226be82c910d39731768c2.md) | 215 | `declaration-track:8f226be82c910d39731768c299178fb118b43595b7febc47e62ad124255d8e51` |
| 22 | `lemma` | [exists_forall_lie_eq_smul](../../../../../mathematics/Algebra/LinearAlgebra/Linear/Variant2eb496a88ea636819c0af0bf7f994e847a55dc533d40a61f59285c0e82635a48.lean/declarations/exists-forall-lie-eq-smul--6c8a6b3d27e3d22aadb86495.md) | 224 | `result-track:6c8a6b3d27e3d22aadb8649521d433ea52604c911c59cb4498561911b9e4561b` |
| 23 | `lemma` | [exists_nontrivial_weightSpace_of_isNilpotent](../../../../../mathematics/Algebra/LinearAlgebra/Linear/Variant2eb496a88ea636819c0af0bf7f994e847a55dc533d40a61f59285c0e82635a48.lean/declarations/exists-nontrivial-weightspace-of-isnilpotent--ec754fce128f8f0a68575e10.md) | 239 | `result-track:ec754fce128f8f0a68575e104beaf8362551c081190331dab798fa11e7600d92` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
