# Verification target: GRWTSK.Algebra.LinearAlgebra.RootSystem.Variant12cf5b76cae5d493ade55d6ee275a6885788c6e898f23d25d6cad7df300bdfa7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "04734e10633c10ddc57f22f02ff722c709a6c50a",
  "lexical_observation_count": 40,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/RootSystem/Variant12cf5b76cae5d493ade55d6ee275a6885788c6e898f23d25d6cad7df300bdfa7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/RootSystem/Variant12cf5b76cae5d493ade55d6ee275a6885788c6e898f23d25d6cad7df300bdfa7.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/RootSystem/Variant12cf5b76cae5d493ade55d6ee275a6885788c6e898f23d25d6cad7df300bdfa7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `04734e10633c10ddc57f22f02ff722c709a6c50a`.

Source path: `GRWTSK/Algebra/LinearAlgebra/RootSystem/Variant12cf5b76cae5d493ade55d6ee275a6885788c6e898f23d25d6cad7df300bdfa7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/RootSystem/Variant12cf5b76cae5d493ade55d6ee275a6885788c6e898f23d25d6cad7df300bdfa7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Lie.Weights.Killing` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.RootSystem.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.RootSystem.Irreducible` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.RootSystem.Reduced` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.RootSystem.Finite.CanonicalBilinear` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Algebra.Rat` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [chainLength_aux](../../../../../mathematics/Algebra/LinearAlgebra/RootSystem/Variant12cf5b76cae5d493ade55d6ee275a6885788c6e898f23d25d6cad7df300bdfa7.lean/declarations/chainlength-aux--190119d051f0d56168ac738c.md) | 49 | `result-track:190119d051f0d56168ac738c2888fb65cb58f6030a6906644fb1dc3bec82b0b4` |
| 2 | `def` | [chainLength](../../../../../mathematics/Algebra/LinearAlgebra/RootSystem/Variant12cf5b76cae5d493ade55d6ee275a6885788c6e898f23d25d6cad7df300bdfa7.lean/declarations/chainlength--bd1407e5d27ae2ec0dd94931.md) | 63 | `declaration-track:bd1407e5d27ae2ec0dd949314584e3a185364fe4c32f0943dc158341a936477d` |
| 3 | `lemma` | [chainLength_of_isZero](../../../../../mathematics/Algebra/LinearAlgebra/RootSystem/Variant12cf5b76cae5d493ade55d6ee275a6885788c6e898f23d25d6cad7df300bdfa7.lean/declarations/chainlength-of-iszero--5598d82f201b8e70b2b45e13.md) | 68 | `result-track:5598d82f201b8e70b2b45e13d89c5590cc4b984ecc82b83820c3e1bdc7360a99` |
| 4 | `lemma` | [chainLength_nsmul](../../../../../mathematics/Algebra/LinearAlgebra/RootSystem/Variant12cf5b76cae5d493ade55d6ee275a6885788c6e898f23d25d6cad7df300bdfa7.lean/declarations/chainlength-nsmul--af10469eaa6687e10692b14c.md) | 70 | `result-track:af10469eaa6687e10692b14c24ff03bac934010ece5420325ea6b464d4ec2448` |
| 5 | `lemma` | [chainLength_smul](../../../../../mathematics/Algebra/LinearAlgebra/RootSystem/Variant12cf5b76cae5d493ade55d6ee275a6885788c6e898f23d25d6cad7df300bdfa7.lean/declarations/chainlength-smul--e14536a9d0fd1c24ec376500.md) | 82 | `result-track:e14536a9d0fd1c24ec37650045c29f7b673a5d9e3a20eb4d65dfba9b9a39c5bd` |
| 6 | `lemma` | [apply_coroot_eq_cast'](../../../../../mathematics/Algebra/LinearAlgebra/RootSystem/Variant12cf5b76cae5d493ade55d6ee275a6885788c6e898f23d25d6cad7df300bdfa7.lean/declarations/apply-coroot-eq-cast--4909047f76464ac77f4ff85b.md) | 86 | `result-track:4909047f76464ac77f4ff85bd0d3bbcb56db4db8f0712b99b798ab3345cd12ac` |
| 7 | `lemma` | [rootSpace_neg_nsmul_add_chainTop_of_le](../../../../../mathematics/Algebra/LinearAlgebra/RootSystem/Variant12cf5b76cae5d493ade55d6ee275a6885788c6e898f23d25d6cad7df300bdfa7.lean/declarations/rootspace-neg-nsmul-add-chaintop-of-le--45e7fc397b1e0ecbf87b9832.md) | 99 | `result-track:45e7fc397b1e0ecbf87b98324476f280ee13a8d71228351f5ae25c2cf3d084a2` |
| 8 | `lemma` | [rootSpace_neg_nsmul_add_chainTop_of_lt](../../../../../mathematics/Algebra/LinearAlgebra/RootSystem/Variant12cf5b76cae5d493ade55d6ee275a6885788c6e898f23d25d6cad7df300bdfa7.lean/declarations/rootspace-neg-nsmul-add-chaintop-of-lt--f910b8239983f030e1363fcb.md) | 112 | `result-track:f910b8239983f030e1363fcb4dc30972a58f0d2a29b83ecc8f6d54004509a77d` |
| 9 | `lemma` | [chainTopCoeff_le_chainLength](../../../../../mathematics/Algebra/LinearAlgebra/RootSystem/Variant12cf5b76cae5d493ade55d6ee275a6885788c6e898f23d25d6cad7df300bdfa7.lean/declarations/chaintopcoeff-le-chainlength--81ec55b5fb01df1f88294101.md) | 135 | `result-track:81ec55b5fb01df1f88294101f41706a280ac14c951327d417622733e6a45c8dd` |
| 10 | `lemma` | [chainBotCoeff_add_chainTopCoeff](../../../../../mathematics/Algebra/LinearAlgebra/RootSystem/Variant12cf5b76cae5d493ade55d6ee275a6885788c6e898f23d25d6cad7df300bdfa7.lean/declarations/chainbotcoeff-add-chaintopcoeff--b0cb34de21effb97c868e695.md) | 146 | `result-track:b0cb34de21effb97c868e695dc9b2148ab30693a88bf8b1d096476a86f2e9b0c` |
| 11 | `lemma` | [chainTopCoeff_add_chainBotCoeff](../../../../../mathematics/Algebra/LinearAlgebra/RootSystem/Variant12cf5b76cae5d493ade55d6ee275a6885788c6e898f23d25d6cad7df300bdfa7.lean/declarations/chaintopcoeff-add-chainbotcoeff--2fd08b5e50c1f909815c3605.md) | 168 | `result-track:2fd08b5e50c1f909815c36052c637d41b057b91e8e3b00e13724f14dbef454e5` |
| 12 | `lemma` | [chainBotCoeff_le_chainLength](../../../../../mathematics/Algebra/LinearAlgebra/RootSystem/Variant12cf5b76cae5d493ade55d6ee275a6885788c6e898f23d25d6cad7df300bdfa7.lean/declarations/chainbotcoeff-le-chainlength--924484452ee2cbbafcdcc021.md) | 172 | `result-track:924484452ee2cbbafcdcc021d9ff2bfa1992147aa103bcf767952e5291a81c1d` |
| 13 | `lemma` | [chainLength_neg](../../../../../mathematics/Algebra/LinearAlgebra/RootSystem/Variant12cf5b76cae5d493ade55d6ee275a6885788c6e898f23d25d6cad7df300bdfa7.lean/declarations/chainlength-neg--e9ef6c3bfac2251f8a45cf53.md) | 176 | `result-track:e9ef6c3bfac2251f8a45cf53ee9d9577cdfbf7f3ca390e678a8a6cb025c79bc7` |
| 14 | `lemma` | [chainLength_zero](../../../../../mathematics/Algebra/LinearAlgebra/RootSystem/Variant12cf5b76cae5d493ade55d6ee275a6885788c6e898f23d25d6cad7df300bdfa7.lean/declarations/chainlength-zero--30dfa741dc5ec0145f0c873d.md) | 182 | `result-track:30dfa741dc5ec0145f0c873d162557b1b9b35737cf93ed05e1a2319992f64b3f` |
| 15 | `lemma` | [apply_coroot_eq_cast](../../../../../mathematics/Algebra/LinearAlgebra/RootSystem/Variant12cf5b76cae5d493ade55d6ee275a6885788c6e898f23d25d6cad7df300bdfa7.lean/declarations/apply-coroot-eq-cast--049e234cb022fedca274c8f6.md) | 187 | `result-track:049e234cb022fedca274c8f611dbf3d65199eba1424ba01ffcb88f2d4e730f59` |
| 16 | `lemma` | [le_chainBotCoeff_of_rootSpace_ne_top](../../../../../mathematics/Algebra/LinearAlgebra/RootSystem/Variant12cf5b76cae5d493ade55d6ee275a6885788c6e898f23d25d6cad7df300bdfa7.lean/declarations/le-chainbotcoeff-of-rootspace-ne-top--4d45d104b1da6bafbfde485c.md) | 191 | `result-track:4d45d104b1da6bafbfde485cd6834699444701881cc100fb0d0aa6f23e7c9e45` |
| 17 | `lemma` | [rootSpace_zsmul_add_ne_bot_iff](../../../../../mathematics/Algebra/LinearAlgebra/RootSystem/Variant12cf5b76cae5d493ade55d6ee275a6885788c6e898f23d25d6cad7df300bdfa7.lean/declarations/rootspace-zsmul-add-ne-bot-iff--d54aca9cac60cc017ba30a25.md) | 203 | `result-track:d54aca9cac60cc017ba30a25e1ce59706aae87af30eca0037b1275bedf8bde9b` |
| 18 | `lemma` | [rootSpace_zsmul_add_ne_bot_iff_mem](../../../../../mathematics/Algebra/LinearAlgebra/RootSystem/Variant12cf5b76cae5d493ade55d6ee275a6885788c6e898f23d25d6cad7df300bdfa7.lean/declarations/rootspace-zsmul-add-ne-bot-iff-mem--228b5ad899e3462f75a705c8.md) | 221 | `result-track:228b5ad899e3462f75a705c8ea0005076581ca4258b7e3e405e0b0c02f3dbe3f` |
| 19 | `lemma` | [chainTopCoeff_of_eq_zsmul_add](../../../../../mathematics/Algebra/LinearAlgebra/RootSystem/Variant12cf5b76cae5d493ade55d6ee275a6885788c6e898f23d25d6cad7df300bdfa7.lean/declarations/chaintopcoeff-of-eq-zsmul-add--061ccf8cc7d91d0bfee65f1b.md) | 225 | `result-track:061ccf8cc7d91d0bfee65f1b862eb53bd476111313c6f3a049f5e3c94fff01de` |
| 20 | `lemma` | [chainBotCoeff_of_eq_zsmul_add](../../../../../mathematics/Algebra/LinearAlgebra/RootSystem/Variant12cf5b76cae5d493ade55d6ee275a6885788c6e898f23d25d6cad7df300bdfa7.lean/declarations/chainbotcoeff-of-eq-zsmul-add--c9954d421d5d30cffec2c44d.md) | 236 | `result-track:c9954d421d5d30cffec2c44db95392044abb96ea1edfceb4f19c24461bee0808` |
| 21 | `lemma` | [chainLength_of_eq_zsmul_add](../../../../../mathematics/Algebra/LinearAlgebra/RootSystem/Variant12cf5b76cae5d493ade55d6ee275a6885788c6e898f23d25d6cad7df300bdfa7.lean/declarations/chainlength-of-eq-zsmul-add--3ec36d145c781d6696615d14.md) | 243 | `result-track:3ec36d145c781d6696615d14fe28b37cfc733458a0c2c0bdc46f7c6507bd139c` |
| 22 | `lemma` | [chainTopCoeff_zero_right](../../../../../mathematics/Algebra/LinearAlgebra/RootSystem/Variant12cf5b76cae5d493ade55d6ee275a6885788c6e898f23d25d6cad7df300bdfa7.lean/declarations/chaintopcoeff-zero-right--ba59395152b3ac6ef47a3773.md) | 253 | `result-track:ba59395152b3ac6ef47a3773e3cc695bc0efd238e3afe5b56f1662a9da10c266` |
| 23 | `lemma` | [chainBotCoeff_zero_right](../../../../../mathematics/Algebra/LinearAlgebra/RootSystem/Variant12cf5b76cae5d493ade55d6ee275a6885788c6e898f23d25d6cad7df300bdfa7.lean/declarations/chainbotcoeff-zero-right--e97b30c2eb2334785dbd4dfe.md) | 284 | `result-track:e97b30c2eb2334785dbd4dfed686034f089554dfeae90aa40a0248719cca1c1a` |
| 24 | `lemma` | [chainLength_zero_right](../../../../../mathematics/Algebra/LinearAlgebra/RootSystem/Variant12cf5b76cae5d493ade55d6ee275a6885788c6e898f23d25d6cad7df300bdfa7.lean/declarations/chainlength-zero-right--ff4f498a704f088944cb8fda.md) | 288 | `result-track:ff4f498a704f088944cb8fdae8597817db277ad3c7dc6e503887eae64e7b18c2` |
| 25 | `lemma` | [rootSpace_two_smul](../../../../../mathematics/Algebra/LinearAlgebra/RootSystem/Variant12cf5b76cae5d493ade55d6ee275a6885788c6e898f23d25d6cad7df300bdfa7.lean/declarations/rootspace-two-smul--a4c76704edbff1f5e3c8d391.md) | 292 | `result-track:a4c76704edbff1f5e3c8d3910b10b3f17b8eae3cc0b69d321639d70b056cdb5a` |
| 26 | `lemma` | [rootSpace_one_div_two_smul](../../../../../mathematics/Algebra/LinearAlgebra/RootSystem/Variant12cf5b76cae5d493ade55d6ee275a6885788c6e898f23d25d6cad7df300bdfa7.lean/declarations/rootspace-one-div-two-smul--6e41c6dbf7dce2243e297039.md) | 298 | `result-track:6e41c6dbf7dce2243e2970390116dc0f1455be052084cb512ffecdc7d2122dd1` |
| 27 | `lemma` | [eq_neg_one_or_eq_zero_or_eq_one_of_eq_smul](../../../../../mathematics/Algebra/LinearAlgebra/RootSystem/Variant12cf5b76cae5d493ade55d6ee275a6885788c6e898f23d25d6cad7df300bdfa7.lean/declarations/eq-neg-one-or-eq-zero-or-eq-one-of-eq-smul--55cad11b530d441a5eecbc5b.md) | 309 | `result-track:55cad11b530d441a5eecbc5ba441c0af04109cd141fc5a7e20ce57c2bc2b5228` |
| 28 | `lemma` | [eq_neg_or_eq_of_eq_smul](../../../../../mathematics/Algebra/LinearAlgebra/RootSystem/Variant12cf5b76cae5d493ade55d6ee275a6885788c6e898f23d25d6cad7df300bdfa7.lean/declarations/eq-neg-or-eq-of-eq-smul--135cad8cf7af96224647796f.md) | 347 | `result-track:135cad8cf7af96224647796fb58e9b041b644472b101b3fd4a2fcc29e5c044ba` |
| 29 | `def` | [reflectRoot](../../../../../mathematics/Algebra/LinearAlgebra/RootSystem/Variant12cf5b76cae5d493ade55d6ee275a6885788c6e898f23d25d6cad7df300bdfa7.lean/declarations/reflectroot--e431a7ef4386d1c8b941572c.md) | 357 | `declaration-track:e431a7ef4386d1c8b941572c62e078ffd56f4ee055a51ce299efc97c656d6ab8` |
| 30 | `lemma` | [reflectRoot_isNonZero](../../../../../mathematics/Algebra/LinearAlgebra/RootSystem/Variant12cf5b76cae5d493ade55d6ee275a6885788c6e898f23d25d6cad7df300bdfa7.lean/declarations/reflectroot-isnonzero--bbf76ccf74f23568bb23bd31.md) | 366 | `result-track:bbf76ccf74f23568bb23bd3154088cde7d6c3258c0398e9781687d2ae9a9e743` |
| 31 | `def` | [rootSystem](../../../../../mathematics/Algebra/LinearAlgebra/RootSystem/Variant12cf5b76cae5d493ade55d6ee275a6885788c6e898f23d25d6cad7df300bdfa7.lean/declarations/rootsystem--e2de76a74f4a4eacdd2f0ba2.md) | 381 | `declaration-track:e2de76a74f4a4eacdd2f0ba26270c4ea427acc4b9e401450df37cf3ba67f158d` |
| 32 | `lemma` | [corootForm_rootSystem_eq_killing](../../../../../mathematics/Algebra/LinearAlgebra/RootSystem/Variant12cf5b76cae5d493ade55d6ee275a6885788c6e898f23d25d6cad7df300bdfa7.lean/declarations/corootform-rootsystem-eq-killing--15723b10f2498031a7968380.md) | 400 | `result-track:15723b10f2498031a7968380da085af33bb3aba2fbc396bdce4478ec21893224` |
| 33 | `lemma` | [rootSystem_toPerfectPairing_apply](../../../../../mathematics/Algebra/LinearAlgebra/RootSystem/Variant12cf5b76cae5d493ade55d6ee275a6885788c6e898f23d25d6cad7df300bdfa7.lean/declarations/rootsystem-toperfectpairing-apply--276304812bb3bd3c742f4c6b.md) | 405 | `result-track:276304812bb3bd3c742f4c6b58972b4bbcb1bf03a176d8bd4c7036c161882a6f` |
| 34 | `lemma` | [rootSystem_pairing_apply](../../../../../mathematics/Algebra/LinearAlgebra/RootSystem/Variant12cf5b76cae5d493ade55d6ee275a6885788c6e898f23d25d6cad7df300bdfa7.lean/declarations/rootsystem-pairing-apply--05efa256dcffc9419e794bce.md) | 407 | `result-track:05efa256dcffc9419e794bce7268a152b652319b7cfdb1223a8a066edeeaab5a` |
| 35 | `lemma` | [rootSystem_root_apply](../../../../../mathematics/Algebra/LinearAlgebra/RootSystem/Variant12cf5b76cae5d493ade55d6ee275a6885788c6e898f23d25d6cad7df300bdfa7.lean/declarations/rootsystem-root-apply--d9c3c8a03520b935cb438422.md) | 408 | `result-track:d9c3c8a03520b935cb438422110e342c35a6969122babf7960eff0cae689f324` |
| 36 | `lemma` | [rootSystem_coroot_apply](../../../../../mathematics/Algebra/LinearAlgebra/RootSystem/Variant12cf5b76cae5d493ade55d6ee275a6885788c6e898f23d25d6cad7df300bdfa7.lean/declarations/rootsystem-coroot-apply--e3c082edccce08d070649073.md) | 409 | `result-track:e3c082edccce08d07064907394d4a1025eb183b9681c675b41935c2ace695086` |
| 37 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/RootSystem/Variant12cf5b76cae5d493ade55d6ee275a6885788c6e898f23d25d6cad7df300bdfa7.lean/declarations/instance--8de8415dad0ab236e13cc480.md) | 411 | `declaration-track:8de8415dad0ab236e13cc4807f317154139f7011f26c06803f8994a859b068d6` |
| 38 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/RootSystem/Variant12cf5b76cae5d493ade55d6ee275a6885788c6e898f23d25d6cad7df300bdfa7.lean/declarations/instance--f3dbb01a9c7d34589b6237cf.md) | 415 | `declaration-track:f3dbb01a9c7d34589b6237cfbfe1fef030a5c141cf4d865bab8c3fb5e5b9fdfd` |
| 39 | `lemma` | [eq_top_of_invtSubmodule_ne_bot](../../../../../mathematics/Algebra/LinearAlgebra/RootSystem/Variant12cf5b76cae5d493ade55d6ee275a6885788c6e898f23d25d6cad7df300bdfa7.lean/declarations/eq-top-of-invtsubmodule-ne-bot--755c78de831c994d2411096e.md) | 432 | `result-track:755c78de831c994d2411096e1c59370aa5b353c6c7d1ae97b785a50ab97b50cb` |
| 40 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/RootSystem/Variant12cf5b76cae5d493ade55d6ee275a6885788c6e898f23d25d6cad7df300bdfa7.lean/declarations/instance--0eac98f9551ce32781ac62c7.md) | 594 | `declaration-track:0eac98f9551ce32781ac62c7f509804bb81e6ce4ca6c2626d61d5dd50a6e6808` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
