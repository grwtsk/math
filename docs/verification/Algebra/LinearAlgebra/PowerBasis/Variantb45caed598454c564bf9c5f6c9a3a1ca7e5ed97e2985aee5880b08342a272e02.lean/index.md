# Verification target: GRWTSK.Algebra.LinearAlgebra.PowerBasis.Variantb45caed598454c564bf9c5f6c9a3a1ca7e5ed97e2985aee5880b08342a272e02

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e1d8fe1ee88000145e685c8910639e0b89511368",
  "lexical_observation_count": 53,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/PowerBasis/Variantb45caed598454c564bf9c5f6c9a3a1ca7e5ed97e2985aee5880b08342a272e02.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/PowerBasis/Variantb45caed598454c564bf9c5f6c9a3a1ca7e5ed97e2985aee5880b08342a272e02.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/PowerBasis/Variantb45caed598454c564bf9c5f6c9a3a1ca7e5ed97e2985aee5880b08342a272e02.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e1d8fe1ee88000145e685c8910639e0b89511368`.

Source path: `GRWTSK/Algebra/LinearAlgebra/PowerBasis/Variantb45caed598454c564bf9c5f6c9a3a1ca7e5ed97e2985aee5880b08342a272e02.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/PowerBasis/Variantb45caed598454c564bf9c5f6c9a3a1ca7e5ed97e2985aee5880b08342a272e02.lean.json)

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
| 1 | `structure` | [PowerBasis](../../../../../mathematics/Algebra/LinearAlgebra/PowerBasis/Variantb45caed598454c564bf9c5f6c9a3a1ca7e5ed97e2985aee5880b08342a272e02.lean/declarations/powerbasis--c4aa553d631ea013f3d0fb23.md) | 60 | `declaration-track:c4aa553d631ea013f3d0fb230b5b9b8576de119460d43b7fc51c389e68a3c208` |
| 2 | `theorem` | [coe_basis](../../../../../mathematics/Algebra/LinearAlgebra/PowerBasis/Variantb45caed598454c564bf9c5f6c9a3a1ca7e5ed97e2985aee5880b08342a272e02.lean/declarations/coe-basis--1f913d8094490b39dba49eae.md) | 73 | `result-track:1f913d8094490b39dba49eaef117d550561c7ef698ad96d11298ece7f54bd80b` |
| 3 | `theorem` | [finite](../../../../../mathematics/Algebra/LinearAlgebra/PowerBasis/Variantb45caed598454c564bf9c5f6c9a3a1ca7e5ed97e2985aee5880b08342a272e02.lean/declarations/finite--a7cf384c721b1527c15fb3c3.md) | 77 | `result-track:a7cf384c721b1527c15fb3c383f583f1e25647e6c07ddda437a011ce9cd0d135` |
| 4 | `def` | [_root_.Module.Basis.PowerBasis](../../../../../mathematics/Algebra/LinearAlgebra/PowerBasis/Variantb45caed598454c564bf9c5f6c9a3a1ca7e5ed97e2985aee5880b08342a272e02.lean/declarations/root-module-basis-powerbasis--07208eef9b69c56122d2c7b6.md) | 82 | `declaration-track:07208eef9b69c56122d2c7b6153de15acdf48f204b0f3817a876459d42de1582` |
| 5 | `theorem` | [_root_.Module.Basis.PowerBasis_gen](../../../../../mathematics/Algebra/LinearAlgebra/PowerBasis/Variantb45caed598454c564bf9c5f6c9a3a1ca7e5ed97e2985aee5880b08342a272e02.lean/declarations/root-module-basis-powerbasis-gen--b37bab657692dbb9e76d833a.md) | 87 | `result-track:b37bab657692dbb9e76d833a4555b8c2ed1022a86a927c9201b86268428a6f2c` |
| 6 | `theorem` | [finrank](../../../../../mathematics/Algebra/LinearAlgebra/PowerBasis/Variantb45caed598454c564bf9c5f6c9a3a1ca7e5ed97e2985aee5880b08342a272e02.lean/declarations/finrank--c02baf14a2dfc50a3c34d1b2.md) | 91 | `result-track:c02baf14a2dfc50a3c34d1b2a69a879dce55abccafb1a2faa0f6aac72659a120` |
| 7 | `theorem` | [mem_span_pow'](../../../../../mathematics/Algebra/LinearAlgebra/PowerBasis/Variantb45caed598454c564bf9c5f6c9a3a1ca7e5ed97e2985aee5880b08342a272e02.lean/declarations/mem-span-pow--7ac0d07533f7bd1cd888a48b.md) | 95 | `result-track:7ac0d07533f7bd1cd888a48bac73a9cf5f10905d72ada7d46896c82d457dffae` |
| 8 | `theorem` | [mem_span_pow](../../../../../mathematics/Algebra/LinearAlgebra/PowerBasis/Variantb45caed598454c564bf9c5f6c9a3a1ca7e5ed97e2985aee5880b08342a272e02.lean/declarations/mem-span-pow--9891b8851d959ded10421496.md) | 106 | `result-track:9891b8851d959ded10421496a4a5bd2bf84b3b3ebdba7003e89921d67c0050ec` |
| 9 | `theorem` | [dim_ne_zero](../../../../../mathematics/Algebra/LinearAlgebra/PowerBasis/Variantb45caed598454c564bf9c5f6c9a3a1ca7e5ed97e2985aee5880b08342a272e02.lean/declarations/dim-ne-zero--9a6fc115e9142f66cef963e4.md) | 118 | `result-track:9a6fc115e9142f66cef963e4c7826714233cd34c1888d24045e7255ccbd13507` |
| 10 | `theorem` | [dim_pos](../../../../../mathematics/Algebra/LinearAlgebra/PowerBasis/Variantb45caed598454c564bf9c5f6c9a3a1ca7e5ed97e2985aee5880b08342a272e02.lean/declarations/dim-pos--c9e43f526fe1ff27bc908a6a.md) | 121 | `result-track:c9e43f526fe1ff27bc908a6a68d789a5dd6194e7d7bdabec297825348a290671` |
| 11 | `theorem` | [exists_eq_aeval](../../../../../mathematics/Algebra/LinearAlgebra/PowerBasis/Variantb45caed598454c564bf9c5f6c9a3a1ca7e5ed97e2985aee5880b08342a272e02.lean/declarations/exists-eq-aeval--d2ec281a40ca465a7adc3acc.md) | 124 | `result-track:d2ec281a40ca465a7adc3acc0f7005761b88bb0658b89522c69a5220dd6d2742` |
| 12 | `theorem` | [exists_eq_aeval'](../../../../../mathematics/Algebra/LinearAlgebra/PowerBasis/Variantb45caed598454c564bf9c5f6c9a3a1ca7e5ed97e2985aee5880b08342a272e02.lean/declarations/exists-eq-aeval--a063fce4280688032d267044.md) | 128 | `result-track:a063fce4280688032d267044a93baba97cde3b1e12f410bd77df2de381564548` |
| 13 | `theorem` | [algHom_ext](../../../../../mathematics/Algebra/LinearAlgebra/PowerBasis/Variantb45caed598454c564bf9c5f6c9a3a1ca7e5ed97e2985aee5880b08342a272e02.lean/declarations/alghom-ext--d97be7293ef163d928adafe6.md) | 133 | `result-track:d97be7293ef163d928adafe6a02efa598ab25354833bccb83a318e2560261d26` |
| 14 | `theorem` | [exists_smodEq](../../../../../mathematics/Algebra/LinearAlgebra/PowerBasis/Variantb45caed598454c564bf9c5f6c9a3a1ca7e5ed97e2985aee5880b08342a272e02.lean/declarations/exists-smodeq--2cb53a93ecfb3ba92bd2ab3b.md) | 140 | `result-track:2cb53a93ecfb3ba92bd2ab3b0f13bfb5ea85ee40cead052d10ed0c4b1dccdf7f` |
| 15 | `theorem` | [exists_gen_dvd_sub](../../../../../mathematics/Algebra/LinearAlgebra/PowerBasis/Variantb45caed598454c564bf9c5f6c9a3a1ca7e5ed97e2985aee5880b08342a272e02.lean/declarations/exists-gen-dvd-sub--11f7c56e9e266d3f8075ef01.md) | 159 | `result-track:11f7c56e9e266d3f8075ef012c451938ab4356336e93b4e432679bee6bfbcb20` |
| 16 | `def` | [minpolyGen](../../../../../mathematics/Algebra/LinearAlgebra/PowerBasis/Variantb45caed598454c564bf9c5f6c9a3a1ca7e5ed97e2985aee5880b08342a272e02.lean/declarations/minpolygen--04feef35d4ac432135ab7ad6.md) | 167 | `declaration-track:04feef35d4ac432135ab7ad6af3efe4992e44021ea5c7d10a463a783609984ca` |
| 17 | `theorem` | [aeval_minpolyGen](../../../../../mathematics/Algebra/LinearAlgebra/PowerBasis/Variantb45caed598454c564bf9c5f6c9a3a1ca7e5ed97e2985aee5880b08342a272e02.lean/declarations/aeval-minpolygen--5daa351249144076295229af.md) | 170 | `result-track:5daa351249144076295229af2005994efc4ecf619758a7db50c9abe6e63e33a8` |
| 18 | `theorem` | [minpolyGen_monic](../../../../../mathematics/Algebra/LinearAlgebra/PowerBasis/Variantb45caed598454c564bf9c5f6c9a3a1ca7e5ed97e2985aee5880b08342a272e02.lean/declarations/minpolygen-monic--8fb4ba5e18fbc644eed98a78.md) | 176 | `result-track:8fb4ba5e18fbc644eed98a78d8bd30694e82c9872d16e70cab9bd4ff9914a594` |
| 19 | `theorem` | [dim_le_natDegree_of_root](../../../../../mathematics/Algebra/LinearAlgebra/PowerBasis/Variantb45caed598454c564bf9c5f6c9a3a1ca7e5ed97e2985aee5880b08342a272e02.lean/declarations/dim-le-natdegree-of-root--2df92d568295909923f37e07.md) | 182 | `result-track:2df92d568295909923f37e07c4081da23e1926c303eb4d8f5230e796953e9e5d` |
| 20 | `theorem` | [dim_le_degree_of_root](../../../../../mathematics/Algebra/LinearAlgebra/PowerBasis/Variantb45caed598454c564bf9c5f6c9a3a1ca7e5ed97e2985aee5880b08342a272e02.lean/declarations/dim-le-degree-of-root--d97201f6c20ef0e51f987354.md) | 191 | `result-track:d97201f6c20ef0e51f987354b80e089fdc29474e7276ac94529c402e69daaa6c` |
| 21 | `theorem` | [degree_minpolyGen](../../../../../mathematics/Algebra/LinearAlgebra/PowerBasis/Variantb45caed598454c564bf9c5f6c9a3a1ca7e5ed97e2985aee5880b08342a272e02.lean/declarations/degree-minpolygen--320387f798b355b3992dba3c.md) | 196 | `result-track:320387f798b355b3992dba3c0ed150b3dac1c9f63147d761a983584b3cc049a9` |
| 22 | `theorem` | [natDegree_minpolyGen](../../../../../mathematics/Algebra/LinearAlgebra/PowerBasis/Variantb45caed598454c564bf9c5f6c9a3a1ca7e5ed97e2985aee5880b08342a272e02.lean/declarations/natdegree-minpolygen--d60cf5414e192a8ef2035470.md) | 202 | `result-track:d60cf5414e192a8ef20354702165387cdd228c89492a15acd8749985a8b4c996` |
| 23 | `theorem` | [minpolyGen_eq](../../../../../mathematics/Algebra/LinearAlgebra/PowerBasis/Variantb45caed598454c564bf9c5f6c9a3a1ca7e5ed97e2985aee5880b08342a272e02.lean/declarations/minpolygen-eq--c6510ba37642827238cad45a.md) | 207 | `result-track:c6510ba37642827238cad45ab031ed2552b9aa1e588901917bbec55f0a53c16c` |
| 24 | `theorem` | [isIntegral_gen](../../../../../mathematics/Algebra/LinearAlgebra/PowerBasis/Variantb45caed598454c564bf9c5f6c9a3a1ca7e5ed97e2985aee5880b08342a272e02.lean/declarations/isintegral-gen--a09a9bcc7615915866e716fa.md) | 213 | `result-track:a09a9bcc7615915866e716faf4b831ec974fb6b889781a16959223d64f858219` |
| 25 | `theorem` | [degree_minpoly](../../../../../mathematics/Algebra/LinearAlgebra/PowerBasis/Variantb45caed598454c564bf9c5f6c9a3a1ca7e5ed97e2985aee5880b08342a272e02.lean/declarations/degree-minpoly--78f55d117f8298d886e86e4b.md) | 217 | `result-track:78f55d117f8298d886e86e4b9a4e2da67d5369404efe27f400c79d4f8a90b1cf` |
| 26 | `theorem` | [natDegree_minpoly](../../../../../mathematics/Algebra/LinearAlgebra/PowerBasis/Variantb45caed598454c564bf9c5f6c9a3a1ca7e5ed97e2985aee5880b08342a272e02.lean/declarations/natdegree-minpoly--d8c8b7acb3db83fd2acb1b70.md) | 221 | `result-track:d8c8b7acb3db83fd2acb1b70b93cda92afbe281e374437978ae389697fad89fa` |
| 27 | `theorem` | [leftMulMatrix](../../../../../mathematics/Algebra/LinearAlgebra/PowerBasis/Variantb45caed598454c564bf9c5f6c9a3a1ca7e5ed97e2985aee5880b08342a272e02.lean/declarations/leftmulmatrix--8aead15dcd128935600a6d64.md) | 224 | `result-track:8aead15dcd128935600a6d64bfd4ea402768739d86b48a4b06d2c5d5c9e45300` |
| 28 | `theorem` | [constr_pow_aeval](../../../../../mathematics/Algebra/LinearAlgebra/PowerBasis/Variantb45caed598454c564bf9c5f6c9a3a1ca7e5ed97e2985aee5880b08342a272e02.lean/declarations/constr-pow-aeval--d63073527d2b1e1e5551ea16.md) | 250 | `result-track:d63073527d2b1e1e5551ea16e3529e815dd42b10ab94a03a00a56fbbf1794463` |
| 29 | `theorem` | [constr_pow_gen](../../../../../mathematics/Algebra/LinearAlgebra/PowerBasis/Variantb45caed598454c564bf9c5f6c9a3a1ca7e5ed97e2985aee5880b08342a272e02.lean/declarations/constr-pow-gen--188d298453b0e5e2d815c8e5.md) | 268 | `result-track:188d298453b0e5e2d815c8e5631f344441422699b29015ecb7571a13dde7c10a` |
| 30 | `theorem` | [constr_pow_algebraMap](../../../../../mathematics/Algebra/LinearAlgebra/PowerBasis/Variantb45caed598454c564bf9c5f6c9a3a1ca7e5ed97e2985aee5880b08342a272e02.lean/declarations/constr-pow-algebramap--75225d05e8b04f4761364e2d.md) | 272 | `result-track:75225d05e8b04f4761364e2d10ecec9494bd786d87bfcf0601c0de00a517f13c` |
| 31 | `theorem` | [constr_pow_mul](../../../../../mathematics/Algebra/LinearAlgebra/PowerBasis/Variantb45caed598454c564bf9c5f6c9a3a1ca7e5ed97e2985aee5880b08342a272e02.lean/declarations/constr-pow-mul--44c034ca8d38464e8df4394a.md) | 276 | `result-track:44c034ca8d38464e8df4394a573138a461b5fdebc12bf9009ab077fc368dcae1` |
| 32 | `def` | [lift](../../../../../mathematics/Algebra/LinearAlgebra/PowerBasis/Variantb45caed598454c564bf9c5f6c9a3a1ca7e5ed97e2985aee5880b08342a272e02.lean/declarations/lift--772a718a925c3bdd0884b097.md) | 288 | `declaration-track:772a718a925c3bdd0884b097d4251417d902c4b7905f1e958830274eb2646431` |
| 33 | `theorem` | [lift_gen](../../../../../mathematics/Algebra/LinearAlgebra/PowerBasis/Variantb45caed598454c564bf9c5f6c9a3a1ca7e5ed97e2985aee5880b08342a272e02.lean/declarations/lift-gen--7738c42053614dd373508e11.md) | 297 | `result-track:7738c42053614dd373508e11c8252d23579b06aa0bda3593c3e57388d5bbaf80` |
| 34 | `theorem` | [lift_aeval](../../../../../mathematics/Algebra/LinearAlgebra/PowerBasis/Variantb45caed598454c564bf9c5f6c9a3a1ca7e5ed97e2985aee5880b08342a272e02.lean/declarations/lift-aeval--38be32671d0c143a61d4d5c8.md) | 302 | `result-track:38be32671d0c143a61d4d5c83e31c12842ab56041cf3658c113c623fd22d982a` |
| 35 | `def` | [liftEquiv](../../../../../mathematics/Algebra/LinearAlgebra/PowerBasis/Variantb45caed598454c564bf9c5f6c9a3a1ca7e5ed97e2985aee5880b08342a272e02.lean/declarations/liftequiv--881267df53e66d47df0171c2.md) | 314 | `declaration-track:881267df53e66d47df0171c24585d636d49de9a2c06ff3d608ec264040b5d2e5` |
| 36 | `def` | [liftEquiv'](../../../../../mathematics/Algebra/LinearAlgebra/PowerBasis/Variantb45caed598454c564bf9c5f6c9a3a1ca7e5ed97e2985aee5880b08342a272e02.lean/declarations/liftequiv--1a6f48faf1de7927b6ab3cf8.md) | 327 | `declaration-track:1a6f48faf1de7927b6ab3cf888e25e0d5f6a4bdb4167dea8ee35c2f418c4281d` |
| 37 | `def` | [AlgHom.fintype](../../../../../mathematics/Algebra/LinearAlgebra/PowerBasis/Variantb45caed598454c564bf9c5f6c9a3a1ca7e5ed97e2985aee5880b08342a272e02.lean/declarations/alghom-fintype--0177fa4b08d8c491e94b2c03.md) | 337 | `declaration-track:0177fa4b08d8c491e94b2c03058931a061ca013d262f50ebaee9a58f2afd80a6` |
| 38 | `def` | [equivOfRoot](../../../../../mathematics/Algebra/LinearAlgebra/PowerBasis/Variantb45caed598454c564bf9c5f6c9a3a1ca7e5ed97e2985aee5880b08342a272e02.lean/declarations/equivofroot--192bdf9b065f3f6bce93d206.md) | 348 | `declaration-track:192bdf9b065f3f6bce93d206d4dfdbb1cbe44008ec5da15de12bc85412ba6a1d` |
| 39 | `theorem` | [equivOfRoot_aeval](../../../../../mathematics/Algebra/LinearAlgebra/PowerBasis/Variantb45caed598454c564bf9c5f6c9a3a1ca7e5ed97e2985aee5880b08342a272e02.lean/declarations/equivofroot-aeval--9887adb226502201fbb2ac3a.md) | 362 | `result-track:9887adb226502201fbb2ac3a44a0f71b46dddcdc57faef8979b426db4ffe81ab` |
| 40 | `theorem` | [equivOfRoot_gen](../../../../../mathematics/Algebra/LinearAlgebra/PowerBasis/Variantb45caed598454c564bf9c5f6c9a3a1ca7e5ed97e2985aee5880b08342a272e02.lean/declarations/equivofroot-gen--082d924d1e29eb98871bdf3b.md) | 368 | `result-track:082d924d1e29eb98871bdf3b951c5c66a00856df2b8157041df65bfa22e7c6c2` |
| 41 | `theorem` | [equivOfRoot_symm](../../../../../mathematics/Algebra/LinearAlgebra/PowerBasis/Variantb45caed598454c564bf9c5f6c9a3a1ca7e5ed97e2985aee5880b08342a272e02.lean/declarations/equivofroot-symm--b419d70b97a59127694ec761.md) | 374 | `result-track:b419d70b97a59127694ec761ad01b4efd338380343a438ad828c183f8dfc13f2` |
| 42 | `def` | [equivOfMinpoly](../../../../../mathematics/Algebra/LinearAlgebra/PowerBasis/Variantb45caed598454c564bf9c5f6c9a3a1ca7e5ed97e2985aee5880b08342a272e02.lean/declarations/equivofminpoly--4907255b7820d790fc5679e9.md) | 386 | `declaration-track:4907255b7820d790fc5679e9d94483dbae20aaac94c51588dabed6de83fb305a` |
| 43 | `theorem` | [equivOfMinpoly_aeval](../../../../../mathematics/Algebra/LinearAlgebra/PowerBasis/Variantb45caed598454c564bf9c5f6c9a3a1ca7e5ed97e2985aee5880b08342a272e02.lean/declarations/equivofminpoly-aeval--ecd9bd38a3429341a21af613.md) | 391 | `result-track:ecd9bd38a3429341a21af6130f8581fc9e1e877b27a07ae00bc3e1b905db4c31` |
| 44 | `theorem` | [equivOfMinpoly_gen](../../../../../mathematics/Algebra/LinearAlgebra/PowerBasis/Variantb45caed598454c564bf9c5f6c9a3a1ca7e5ed97e2985aee5880b08342a272e02.lean/declarations/equivofminpoly-gen--0ab5e62fb1faa1e6a0a1d286.md) | 397 | `result-track:0ab5e62fb1faa1e6a0a1d2863327005ce7c7eaec7f71c9d1ce3dc0e6c2157447` |
| 45 | `theorem` | [equivOfMinpoly_symm](../../../../../mathematics/Algebra/LinearAlgebra/PowerBasis/Variantb45caed598454c564bf9c5f6c9a3a1ca7e5ed97e2985aee5880b08342a272e02.lean/declarations/equivofminpoly-symm--8034f3e0f52552d63f05e203.md) | 402 | `result-track:8034f3e0f52552d63f05e20397eca7949b2678904197b91cfa31e3748ec930cc` |
| 46 | `theorem` | [linearIndependent_pow](../../../../../mathematics/Algebra/LinearAlgebra/PowerBasis/Variantb45caed598454c564bf9c5f6c9a3a1ca7e5ed97e2985aee5880b08342a272e02.lean/declarations/linearindependent-pow--5307b8b223ba3430de8f66bb.md) | 415 | `result-track:5307b8b223ba3430de8f66bb9fc3839af9105b87ed6ac426ea8acd0b0206dadd` |
| 47 | `theorem` | [IsIntegral.mem_span_pow](../../../../../mathematics/Algebra/LinearAlgebra/PowerBasis/Variantb45caed598454c564bf9c5f6c9a3a1ca7e5ed97e2985aee5880b08342a272e02.lean/declarations/isintegral-mem-span-pow--e2cec3446a41564446233764.md) | 429 | `result-track:e2cec3446a415644462337648609ae64205b31c396667ab38533b8af54a81cf0` |
| 48 | `def` | [map](../../../../../mathematics/Algebra/LinearAlgebra/PowerBasis/Variantb45caed598454c564bf9c5f6c9a3a1ca7e5ed97e2985aee5880b08342a272e02.lean/declarations/map--b159fd2017bedb3dcf4e3b4a.md) | 447 | `declaration-track:b159fd2017bedb3dcf4e3b4a0770e146cd1b8ee7186bec5e63d2ee643780c4de` |
| 49 | `theorem` | [minpolyGen_map](../../../../../mathematics/Algebra/LinearAlgebra/PowerBasis/Variantb45caed598454c564bf9c5f6c9a3a1ca7e5ed97e2985aee5880b08342a272e02.lean/declarations/minpolygen-map--9ae92a51274e41e567e269a8.md) | 455 | `result-track:9ae92a51274e41e567e269a8bf9ecdc12b098d6ff96b5a5eaa20d29ebd15a86b` |
| 50 | `theorem` | [equivOfRoot_map](../../../../../mathematics/Algebra/LinearAlgebra/PowerBasis/Variantb45caed598454c564bf9c5f6c9a3a1ca7e5ed97e2985aee5880b08342a272e02.lean/declarations/equivofroot-map--aae8180cf4e80ac34480d6b7.md) | 460 | `result-track:aae8180cf4e80ac34480d6b7500817e4e07729795dd48bfdbcd4a0504118d6a6` |
| 51 | `theorem` | [equivOfMinpoly_map](../../../../../mathematics/Algebra/LinearAlgebra/PowerBasis/Variantb45caed598454c564bf9c5f6c9a3a1ca7e5ed97e2985aee5880b08342a272e02.lean/declarations/equivofminpoly-map--960d6a69294efbf3d7aa09d3.md) | 467 | `result-track:960d6a69294efbf3d7aa09d3f6c53317afba28dea52924da1c874fb98d9ad56c` |
| 52 | `theorem` | [adjoin_gen_eq_top](../../../../../mathematics/Algebra/LinearAlgebra/PowerBasis/Variantb45caed598454c564bf9c5f6c9a3a1ca7e5ed97e2985aee5880b08342a272e02.lean/declarations/adjoin-gen-eq-top--92642ce0b390f74a35dde852.md) | 477 | `result-track:92642ce0b390f74a35dde852b3bcebe214c30ec62ea35eb6d32ba4f43bb91f2e` |
| 53 | `theorem` | [adjoin_eq_top_of_gen_mem_adjoin](../../../../../mathematics/Algebra/LinearAlgebra/PowerBasis/Variantb45caed598454c564bf9c5f6c9a3a1ca7e5ed97e2985aee5880b08342a272e02.lean/declarations/adjoin-eq-top-of-gen-mem-adjoin--3b8b70aacea8bfc3eb041699.md) | 483 | `result-track:3b8b70aacea8bfc3eb0416996ed55c741ff1f0baf1b13cc6f1333b530c52c078` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
